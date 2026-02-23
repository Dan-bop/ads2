package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.Usuario;
import com.example.demo.service.UsuarioService;

@RestController
@RequestMapping("/api/usuarios")
@CrossOrigin(origins = "*")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/{uid}")
    public Usuario obtener(@PathVariable String uid) {
        return usuarioService.obtenerPorUid(uid);
    }

    @PostMapping // Sirve para registrarse o actualizar perfil
    public Usuario guardarOActualizar(@RequestBody Usuario usuario) {
        return usuarioService.guardarOActualizar(usuario);
    }

    @DeleteMapping("/{uid}")
    public void eliminar(@PathVariable String uid) {
        usuarioService.eliminar(uid);
    }
}