drop database myVideos;
create database myVideos;

CREATE TABLE `myVideos`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombreUsuario` VARCHAR(50) NULL,
  `correoUsuario` VARCHAR(100) NULL,
  `passwordUsuario` VARCHAR(200) NULL,
  `nacimientoUsuario` DATE NULL,
  `generoUsuario` VARCHAR(1) NOT NULL DEFAULT 'H',
  `paisUsuario` VARCHAR(50) NULL,
  `estadoUsuario` VARCHAR(50) NULL,
  `ciudadUsuario` VARCHAR(50) NULL,
  `avatarUsuario` BLOB NULL,
  `portadaUsuario` BLOB NULL,
  `perfilUsuario` VARCHAR(1) NOT NULL DEFAULT 'U',
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `nombreUsuario_UNIQUE` (`nombreUsuario` ASC),
  UNIQUE INDEX `correoUsuario_UNIQUE` (`correoUsuario` ASC));

CREATE TABLE `myVideos`.`Video` (
  `idVideo` INT NOT NULL AUTO_INCREMENT,
  `nombreVideo` VARCHAR(50) NULL,
  `descripcionVideo` VARCHAR(200) NULL,
  `rutaVideo` VARCHAR(200) NULL,
  `reproduccionesVideo` INT NOT NULL DEFAULT 0,
  `estadoVideo` VARCHAR(1) NOT NULL DEFAULT 'P',
  `tipoVideo` VARCHAR(1) NOT NULL DEFAULT 'P',
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idVideo`),
  INDEX `idUsuario_idx` (`idUsuario` ASC),
  CONSTRAINT `idUsuario_idx`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `myVideos`.`Bloqueo` (
  `idBloqueo` INT NOT NULL AUTO_INCREMENT,
  `idAdministrador` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  `razonBloqueo` VARCHAR(200) NULL,
  `fechaBloqueo` DATETIME NULL,
  `tiempoBloqueo` VARCHAR(45) NULL,
  PRIMARY KEY (`idBloqueo`),
  INDEX `idAdministrador_idx` (`idAdministrador` ASC),
  INDEX `idUsuario_idx` (`idUsuario` ASC),
  CONSTRAINT `idAdministrador`
    FOREIGN KEY (`idAdministrador`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idUsuarioPublica`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `myVideos`.`Sigue` (
  `idSigue` INT NOT NULL AUTO_INCREMENT,
  `idSeguidor` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idSigue`),
  INDEX `idSeguidor_idx` (`idSeguidor` ASC),
  INDEX `idUsuario_idx` (`idUsuario` ASC),
  CONSTRAINT `idSeguidor`
    FOREIGN KEY (`idSeguidor`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idUsuarioSig`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `myVideos`.`Comentario` (
  `idComentario` INT NOT NULL AUTO_INCREMENT,
  `idUsuario` INT NOT NULL,
  `idVideo` INT NOT NULL,
  `contenidoComentario` VARCHAR(300) NOT NULL,
  `fechaComentario` DATETIME NOT NULL,
  PRIMARY KEY (`idComentario`),
  INDEX `idUsuarioCom_idx` (`idUsuario` ASC),
  INDEX `idVideoCom_idx` (`idVideo` ASC),
  CONSTRAINT `idUsuarioCom`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idVideoCom`
    FOREIGN KEY (`idVideo`)
    REFERENCES `myVideos`.`Video` (`idVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `myVideos`.`Favorito` (
  `idFavorito` INT NOT NULL AUTO_INCREMENT,
  `idUsuario` INT NOT NULL,
  `idVideo` INT NOT NULL,
  PRIMARY KEY (`idFavorito`),
  INDEX `idUsuarioFav_idx` (`idUsuario` ASC),
  INDEX `idVideoFav_idx` (`idVideo` ASC),
  CONSTRAINT `idUsuarioFav`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idVideoFav`
    FOREIGN KEY (`idVideo`)
    REFERENCES `myVideos`.`Video` (`idVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `myVideos`.`Like` (
  `idLike` INT NOT NULL AUTO_INCREMENT,
  `idUsuario` INT NOT NULL,
  `idVideo` INT NOT NULL,
  PRIMARY KEY (`idLike`),
  INDEX `idUsuarioLike_idx` (`idUsuario` ASC),
  INDEX `idVideoLike_idx` (`idVideo` ASC),
  CONSTRAINT `idUsuarioLike`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idVideoLike`
    FOREIGN KEY (`idVideo`)
    REFERENCES `myVideos`.`Video` (`idVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `myVideos`.`Reporte` (
  `idReporte` INT NOT NULL AUTO_INCREMENT,
  `idUsuario` INT NOT NULL,
  `idVideo` INT NOT NULL,
  `razonReporte` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`idReporte`),
  INDEX `idVideoReporte_idx` (`idVideo` ASC),
  INDEX `idUsuarioReporte_idx` (`idUsuario` ASC),
  CONSTRAINT `idUsuarioReporte`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `myVideos`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idVideoReporte`
    FOREIGN KEY (`idVideo`)
    REFERENCES `myVideos`.`Video` (`idVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



