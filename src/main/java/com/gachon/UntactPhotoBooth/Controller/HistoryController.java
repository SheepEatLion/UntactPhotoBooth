package com.gachon.UntactPhotoBooth.Controller;


import com.gachon.UntactPhotoBooth.Controller.Dto.HistoryDto;
import com.gachon.UntactPhotoBooth.Service.HistoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RequiredArgsConstructor
@Controller
public class HistoryController {

    private final HistoryService historyService;

    @PostMapping("/save/history")
    public void save(@RequestBody HistoryDto dto){
        historyService.save(dto);
    }
}

