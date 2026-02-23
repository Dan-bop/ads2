package com.example.demo.Config;



import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import com.example.demo.model.Empleado;
import com.example.demo.processor.EmpleadoItemProcessor;

import jakarta.persistence.EntityManagerFactory;

@Configuration
public class BatchConfig {
    private final EntityManagerFactory emf;
    public BatchConfig (EntityManagerFactory emf){
        this.emf = emf;
    }
    @Bean
    public FlatFileItemReader <Empleado> reader(){
        return new FlatFileItemReaderBuilder<Empleado>().name("empleadoItemReader")
        .resource(new ClassPathResource("empleados.csv")).delimited()
        .names("id","fecha_ingreso","nombre","salario")
        .fieldSetMapper(new BeanWrapperFieldSetMapper<>(){{
            setTargetType(Empleado.class);
        }})
        .linesToSkip(1)
        .build();

    }
    @Bean
    public EmpleadoItemProcessor processor(){
        return new EmpleadoItemProcessor();
    }

}

