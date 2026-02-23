package com.example.demo.model;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDateTime;

@Entity
@Data
public class Pedido {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private LocalDateTime fecha = LocalDateTime.now();
    private Double total;
    private String estado; // "Pendiente", "Entregado"

    @ManyToOne
    @JoinColumn(name = "usuario_id")
    private Usuario usuario;
}