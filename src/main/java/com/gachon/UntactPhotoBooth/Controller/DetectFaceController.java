package com.gachon.UntactPhotoBooth.Controller;

import com.gachon.UntactPhotoBooth.Service.DetectFaceService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@RequiredArgsConstructor
@Controller
public class DetectFaceController {

    private final DetectFaceService detectFaceService;

    @GetMapping("/face")
    public void detectFace(@Value("${clientId}") String clientId, @Value("${clientSecret}") String clientSecret){
        detectFaceService.faceAPI(clientId, clientSecret);
    }
}
