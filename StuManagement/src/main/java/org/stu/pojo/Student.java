package org.stu.pojo;

import lombok.Data;

/**
 * 学员实体类
 */
@Data
public class Student {
    private Integer id;
    private String name;
    private int age;
    private String gender;
    private String telephone;
    private String email;

    private Integer classId;
}
