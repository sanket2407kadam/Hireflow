
package com.sksolution.hireflow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {


    // Home page
    @GetMapping("/home")
    public String home() {
        return "index";
    }
}
