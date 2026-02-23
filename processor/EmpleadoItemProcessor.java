package com.example.demo.processor;

import org.springframework.batch.item.ItemProcessor;

import com.example.demo.model.Empleado;

public class EmpleadoItemProcessor implements ItemProcessor<Empleado, Empleado> {

    @Override
    public Empleado process(Empleado empleado) throws java.text.ParseException {
       if ("CARLOS".equalsIgnoreCase(empleado.getNombre())){
            return empleado;

        }else{
            return null;
        }
    }
    
}
