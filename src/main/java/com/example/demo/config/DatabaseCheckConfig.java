package com.example.demo.config;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import javax.sql.DataSource;
import java.sql.Connection;

@Configuration
public class DatabaseCheckConfig {

    @Bean
    CommandLineRunner verificarConexion(DataSource dataSource) {
        return args -> {
            try (Connection connection = dataSource.getConnection()) {
                if (connection != null && !connection.isClosed()) {
                    System.out.println("-------------------------------------------------");
                    System.out.println("✅ ¡CONEXIÓN EXITOSA A MYSQL!");
                    System.out.println("Base de Datos: " + connection.getCatalog());
                    System.out.println("-------------------------------------------------");
                }
            } catch (Exception e) {
                System.err.println("-------------------------------------------------");
                System.err.println("❌ ERROR DE CONEXIÓN A LA BASE DE DATOS");
                System.err.println("Detalle: " + e.getMessage());
                System.err.println("-------------------------------------------------");
            }
        };
    }
}
