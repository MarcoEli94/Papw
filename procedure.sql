//////////////////////
DELIMITER $$
CREATE PROCEDURE proc_login(correo VARCHAR(50), password VARCHAR(50))
    BEGIN
        SELECT idUsuario AS id, nombreUsuario AS nombre, generoUsuario AS genero,
                avatarUsuario AS avatar, portadaUsuario AS portada
        FROM Usuario
        WHERE correoUsuario = correo AND passwordUsuario = md5(password);
    END


   ////

   DELIMITER $$
CREATE PROCEDURE proc_inUsuario(correo VARCHAR(50), password VARCHAR(50), nombre VARCHAR(50), nacimiento DATE, genero VARCHAR(1),
    pais VARCHAR(50), estado VARCHAR(50), ciudad VARCHAR(50))
    BEGIN
        INSERT INTO Usuario SET
            correoUsuario = correo,
            passwordUsuario = md5(password),
            nombreUsuario = nombre,
            nacimientoUsuario = nacimiento,
            generoUsuario = genero,
            paisUsuario = pais,
            estadoUsuario = estado,
            ciudadUsuario = ciudad;
        SELECT LAST_INSERT_ID() as id;
    END