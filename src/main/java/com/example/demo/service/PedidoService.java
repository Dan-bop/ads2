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
        // 1. LIMPIEZA DE ID (Vital para evitar el StaleObjectStateException)
        // Forzamos el ID a null para que Hibernate haga un INSERT y no un UPDATE
        pedido.setId(null); 

        // 2. BUSQUEDA DEL USUARIO
        String uid = pedido.getUsuario().getUid();
        Usuario usuarioExistente = usuarioRepository.findById(uid)
            .orElseThrow(() -> new RuntimeException("Usuario no encontrado con UID: " + uid));

        // 3. SETEO DE VALORES SEGUROS
        pedido.setUsuario(usuarioExistente);
        pedido.setFecha(LocalDateTime.now());
        pedido.setEstado("PENDIENTE"); // Te recomiendo usar Mayúsculas para ser consistente

        // 4. PERSISTENCIA
        return pedidoRepository.save(pedido);
    }

    public List<Pedido> historialPorUsuario(String uid) {
        return pedidoRepository.findByUsuarioUid(uid);
    }
}