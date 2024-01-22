package com.example.demo.curriculum;

import lombok.Data;

import java.time.LocalDate;

@Data
public class CurriculumDto {
    private int curriculumId;
    private String curriculumName;
    private String curriculumContent;
    private String curriculumYear;
    private int lectureWeek;
    private LocalDate startDate;
    private LocalDate endDate;
}
