package com.gachon.UntactPhotoBooth.Controller;



import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@RequiredArgsConstructor
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

    @GetMapping("/error")
    public String getError(){
        return "error";
    }
}
