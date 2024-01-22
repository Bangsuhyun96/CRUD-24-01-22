package com.example.demo;

import com.example.demo.curriculum.CurriculumDto;
import com.example.demo.curriculum.ICurriculumService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class MainController {

    private final ICurriculumService service;

    @GetMapping
    public String Main(Model model){
        List<CurriculumDto> curriculums = service.getAllcurriculumList();
        model.addAttribute("item",curriculums);
        return "index";
    }
}
