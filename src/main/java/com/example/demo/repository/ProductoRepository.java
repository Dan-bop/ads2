package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.demo.model.Producto;
import java.util.List;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Long> {
    // Esto permitirá que al tocar "Bebidas" en Android, solo traiga esos productos
    List<Producto> findByCategoriaId(Long categoriaId);
}
