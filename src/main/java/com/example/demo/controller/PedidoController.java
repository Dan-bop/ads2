package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.Pedido;
import com.example.demo.service.PedidoService;

import java.util.List;

@RestController
@RequestMapping("/api/pedidos")
@CrossOrigin(origins = "*")
public class PedidoController {

    @Autowired
    private PedidoService pedidoService;

    @PostMapping
    public Pedido crear(@RequestBody Pedido pedido) {
        return pedidoService.registrarPedido(pedido);
    }

    @GetMapping("/usuario/{uid}")
    public List<Pedido> historial(@PathVariable String uid) {
        return pedidoService.historialPorUsuario(uid);
    }
}
