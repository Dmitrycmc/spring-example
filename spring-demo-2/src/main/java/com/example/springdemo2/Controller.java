package com.example.springdemo2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("hello2")
    public String hello() {
        return "Hello from 2nd microservice";
    }
}
