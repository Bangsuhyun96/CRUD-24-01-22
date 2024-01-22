package com.example.demo.curriculum;

import java.util.List;

public interface ICurriculumService {
    List<CurriculumDto> getAllcurriculumList();
    CurriculumDto getCurriculumInfo(int curriculumId);
    void setCurriculum(CurriculumDto dto);
    void modifyCurriculum(CurriculumDto dto);
    void deleteCurriculum(int curriculumId);
}
