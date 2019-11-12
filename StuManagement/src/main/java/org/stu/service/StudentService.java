package org.stu.service;

import org.stu.pojo.Student;

import java.util.List;

public interface StudentService {
    /**
     * 查询所有
     * @return
     */
    List<Student> getStudent();

    /**
     * 添加
     * @param student
     * @return
     */
    boolean getAdd(Student student);
}
