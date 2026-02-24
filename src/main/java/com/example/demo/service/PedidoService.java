package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Pedido;
import com.example.demo.model.Usuario;
import com.example.demo.repository.PedidoRepository;
import com.example.demo.repository.UsuarioRepository;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class PedidoService {

    @Autowired
    private PedidoRepository pedidoRepository;

    @Autowired
    private UsuarioRepository usuarioRepository;

    public Pedido registrarPedido(Pedido pedido) {
        // 1. LIMPIEZA DE ID
        // Forzamos el ID a null para que Hibernate haga un INSERT limpio
        pedido.setId(null); 

        // 2. BÚSQUEDA O CREACIÓN AUTOMÁTICA DEL USUARIO
        // Obtenemos el UID que viene desde el Samsung S22 (Firebase)
        String uid = pedido.getUsuario().getUid();
        
        // Si el usuario no existe en TiDB Cloud, lo creamos en este instante
        // para evitar el error de RuntimeException
        Usuario usuarioParaPedido = usuarioRepository.findById(uid)
            .orElseGet(() -> {
                Usuario nuevo = new Usuario();
                nuevo.setUid(uid);
                nuevo.setNombre("Cliente"); // Nombre por defecto
                nuevo.setApellido("Nuevo");
                // Podrías tomar el email si lo envías en el objeto pedido.getUsuario()
                if (pedido.getUsuario().getEmail() != null) {
                    nuevo.setEmail(pedido.getUsuario().getEmail());
                }
                return usuarioRepository.save(nuevo);
            });

        // 3. SETEO DE VALORES SEGUROS
        // Usamos el usuario (existente o recién creado) para la relación
        pedido.setUsuario(usuarioParaPedido);
        pedido.setFecha(LocalDateTime.now());
        pedido.setEstado("PENDIENTE");

        // 4. PERSISTENCIA
        // Guardamos el pedido en la base de datos de la nube
        return pedidoRepository.save(pedido);
    }

    public List<Pedido> historialPorUsuario(String uid) {
        return pedidoRepository.findByUsuarioUid(uid);
    }
}