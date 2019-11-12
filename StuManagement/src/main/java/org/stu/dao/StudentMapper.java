package org.stu.dao;

import org.stu.pojo.Student;

import java.util.List;

public interface StudentMapper {

    /**
     * 查询所有
     * @return
     */
    List<Student> getStudent();

    /**
     * 添加
     */
    int getAdd(Student student);
}
