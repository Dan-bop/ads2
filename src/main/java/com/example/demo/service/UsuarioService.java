package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Usuario;
import com.example.demo.repository.UsuarioRepository;

@Service
public class UsuarioService {
    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuario obtenerPorUid(String uid) {
        return usuarioRepository.findById(uid).orElse(null);
    }

    public Usuario guardarOActualizar(Usuario usuario) {
        return usuarioRepository.save(usuario);
    }

    public void eliminar(String uid) {
        usuarioRepository.deleteById(uid);
    }

}