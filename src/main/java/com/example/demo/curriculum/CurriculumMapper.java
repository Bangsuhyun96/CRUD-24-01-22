package com.example.demo.curriculum;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CurriculumMapper {
    List<CurriculumDto> getAllCurriculum();
    CurriculumDto getCurriculum(@Param("curriculumId") int curriculumId);
    void insertCurriculum(CurriculumDto curriculumDto);
    void deleteCurriculumId(int curriculumId);
    void updateCurriculumId(CurriculumDto curriculumDto);
}
