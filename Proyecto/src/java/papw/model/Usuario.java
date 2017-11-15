/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw.model;

import java.io.InputStream;
import java.sql.Date;

public class Usuario {
    private int id;
    private String correo;
    private String password;
    private String nombre;
    private Date nacimiento;
    private String genero;
    private String pais;
    private String estado;
    private String ciudad;
    private InputStream avatar;
    private InputStream portada;
            
    
    public Usuario(int id, String correo, String password){
        this.id = id;
        this.correo = correo;
        this.password = password;
    }
    
    public Usuario(String correo, String password){
        this.correo = correo;
        this.password = password;
    }

    public Usuario(int id, String correo, String password, String nombre, Date nacimiento, String genero, String pais, String estado, String ciudad, InputStream avatar, InputStream portada) {
        this.id = id;
        this.correo = correo;
        this.password = password;
        this.nombre = nombre;
        this.nacimiento = nacimiento;
        this.genero = genero;
        this.pais = pais;
        this.estado = estado;
        this.ciudad = ciudad;
        this.avatar = avatar;
        this.portada = portada;
    }
    
    public int getId(){
        return id;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(Date nacimiento) {
        this.nacimiento = nacimiento;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public InputStream getAvatar() {
        return avatar;
    }

    public void setAvatar(InputStream avatar) {
        this.avatar = avatar;
    }

    public InputStream getPortada() {
        return portada;
    }

    public void setPortada(InputStream portada) {
        this.portada = portada;
    }
}
