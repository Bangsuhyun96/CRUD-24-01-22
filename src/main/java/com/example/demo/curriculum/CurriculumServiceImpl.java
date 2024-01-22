package com.example.demo.curriculum;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Log4j2
@Service
@RequiredArgsConstructor
public class CurriculumServiceImpl implements ICurriculumService{

    private final CurriculumMapper mapper;
    @Override
    public List<CurriculumDto> getAllcurriculumList(){
        return mapper.getAllCurriculum();
    }

    @Override
    public CurriculumDto getCurriculumInfo(int curriculumId){
        return mapper.getCurriculum(curriculumId);
    }

    @Override
    @Transactional
    public void setCurriculum(CurriculumDto dto){
        try{
            mapper.insertCurriculum(dto);
        } catch (Exception e){
            log.error("오류 발생", e);
            throw e;
        }
    }
    @Override
    public void modifyCurriculum(CurriculumDto dto){
        mapper.updateCurriculumId(dto);
    }

    @Override
    public void deleteCurriculum(int curriculumId){
        mapper.deleteCurriculumId(curriculumId);
    }
}
