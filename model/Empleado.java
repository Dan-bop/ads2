package com.example.demo.model;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

import java.sql.Date;

@Entity 
@Data
public class Empleado {
    @Id
    private Long id;

    private Date fecha_ingerso;

    private String nombre;

    private Double salario;
}



