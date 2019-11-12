package org.stu.service;

import org.springframework.stereotype.Service;
import org.stu.dao.ClassesMapper;
import org.stu.pojo.Classes;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ClassesServiceImpl implements ClassesService {
    @Resource
    private ClassesMapper classesMapper;
    @Override
    public List<Classes> getClasses() {
        List<Classes> list=classesMapper.getClasses();
        for (Classes classes:list){
            System.out.println(classes);
        }
        return list;
    }
}
