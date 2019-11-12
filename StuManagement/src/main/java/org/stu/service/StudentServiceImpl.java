package org.stu.service;

import org.springframework.stereotype.Service;
import org.stu.dao.StudentMapper;
import org.stu.pojo.Student;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentMapper studentMapper;

    /**
     * 查询
     * @return
     */
    @Override
    public List<Student> getStudent() {
        List<Student> list=studentMapper.getStudent();
        for (Student student:list){
            System.out.println(student);
        }
        return list;
    }

    /**
     * 添加
     * @param student
     * @return
     */
    @Override
    public boolean getAdd(Student student) {
        boolean falg=false;
        int count =studentMapper.getAdd(student);
        if (count>0){
            falg=true;
            System.out.println("添加成功");
        }
        return falg;
    }
}
