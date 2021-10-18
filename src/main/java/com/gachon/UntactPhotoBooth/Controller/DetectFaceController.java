package com.gachon.UntactPhotoBooth.Controller;

import com.gachon.UntactPhotoBooth.Service.DetectFaceService;
import com.gachon.UntactPhotoBooth.Service.S3Service;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.configurationprocessor.json.JSONArray;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;

@Slf4j
@RequiredArgsConstructor
@Controller
public class DetectFaceController {

    private final DetectFaceService detectFaceService;
    private final S3Service s3Service;

    @PostMapping("/face")
    public String detectFace(Model model, @RequestParam("files") MultipartFile[] files) throws JSONException {
        ArrayList<String> imgUrl = s3Service.uploadImageToS3(files);
        String result = detectFaceService.faceAPI(imgUrl);
        JSONObject jsonObject = new JSONObject(result);
        JSONArray face = jsonObject.getJSONArray("faces");
        JSONObject face_list = face.getJSONObject(0);
        JSONObject gender = face_list.getJSONObject("gender");
        JSONObject age = face_list.getJSONObject("age");
        JSONObject emotion = face_list.getJSONObject("emotion");
        JSONObject pose = face_list.getJSONObject("pose");

        JSONObject imgObject = new JSONObject();

        imgObject.put("image", imgUrl.get(0));


        model.addAttribute("gender", gender);
        model.addAttribute("age", age);
        model.addAttribute("emotion", emotion);
        model.addAttribute("pose", pose);
        model.addAttribute("image", imgObject);
        return "/result";
    }
}
