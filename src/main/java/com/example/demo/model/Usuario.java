package com.example.demo.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Usuario {
    @Id
    private String uid; // ID de Firebase
    
    private String nombre;
    private String apellido;
    private String email;
    private String direccion;
    private String telefono;
    private String metodoPago;
}