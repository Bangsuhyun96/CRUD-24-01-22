package com.example.demo.curriculum;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequestMapping("/curriculum")
@RequiredArgsConstructor
@Log4j2
public class CurriculumController {

    private final ICurriculumService service;

    @GetMapping
    public String SearchCurriculum(Model model){
        List<CurriculumDto> curriculums = service.getAllcurriculumList();
        model.addAttribute("item",curriculums);
        return "index";
    }

    @GetMapping("/insert")
    public String InsertCurriculumView(){
        return "curriculum";
    }

    @PostMapping("/insert")
    public String insertCurriculum(@RequestBody CurriculumDto dto){
        service.setCurriculum(dto);
        log.info("CurriculumDto - Id: {}, Name: {}, Content: {}, Year: {}, Week: {}, StartDate: {}, EndDate: {}",
                dto.getCurriculumId(), dto.getCurriculumName(), dto.getCurriculumContent(),
                dto.getCurriculumYear(), dto.getLectureWeek(), dto.getStartDate(), dto.getEndDate());
        return "redirect:/";
    }

    @GetMapping("/{curriculumId}")
    public String getCurriculumId(@PathVariable("curriculumId") int curriculumId, Model model){
        CurriculumDto dto = service.getCurriculumInfo(curriculumId);
        model.addAttribute("info",dto);
        return "curriculumSub";
    }

    @PostMapping("/{curriculumId}")
    public String deleteCurriculumId(@PathVariable("curriculumId") int curriculumId){
        service.deleteCurriculum(curriculumId);
        return "redirect:/";
    }

    @PostMapping("/update")
    public String updateCurriculum(@RequestBody CurriculumDto dto){
        service.modifyCurriculum(dto);
        return "redirect:/";
    }

    // 페이징
    // 업데이트 페이지 분리
}
