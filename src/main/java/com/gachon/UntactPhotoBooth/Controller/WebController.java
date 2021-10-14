package com.gachon.UntactPhotoBooth.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class WebController {

    @GetMapping("/")
    public String getIndex(){
        try{
            return "index";
        } catch (Exception e){
            return "error";
        }
    }

}
