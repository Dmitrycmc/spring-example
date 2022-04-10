package com.example.springdemo1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("hello1")
    public String hello() {
        return "Hello from 1st microservice";
    }
}
