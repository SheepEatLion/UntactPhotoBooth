package com.gachon.UntactPhotoBooth.Controller;



import com.gachon.UntactPhotoBooth.Configuration.Oauth.LoginUser;
import com.gachon.UntactPhotoBooth.Configuration.Oauth.dto.SessionUser;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@RequiredArgsConstructor
@Controller
public class WebController {

    private final HttpSession httpSession;

    @GetMapping("/")
    public String getIndex(Model model, @LoginUser SessionUser user){
        try{
            if(user != null){ // @LoginUser 를 통해 이제 어느 컨트롤러에서도 세션 정보를 가져올 수 있게 되었다.
                model.addAttribute("userName", user.getName()); // 세션에 값이 있을때만 유저 이름이 보이게 하고 그 외엔 로그인 버튼
            }
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
