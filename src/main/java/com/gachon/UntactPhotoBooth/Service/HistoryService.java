package com.gachon.UntactPhotoBooth.Service;

import com.gachon.UntactPhotoBooth.Controller.Dto.HistoryDto;
import com.gachon.UntactPhotoBooth.Domain.History.HistoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class HistoryService {

    private final HistoryRepository historyRepository;

    public void save(HistoryDto dto){
        historyRepository.save(dto.toEntity());
    }
}
