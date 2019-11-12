package org.stu.contrller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.stu.pojo.Classes;
import org.stu.pojo.Student;
import org.stu.service.ClassesService;
import org.stu.service.StudentService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/stu")
public class StudentContrller {
    @Resource
    private ClassesService classesService;
    @Resource
    private StudentService studentService;

    /**
     * 查询
     * @param model
     * @return
     */
    @RequestMapping(value = "/stulist")
    public String getList(Model model){
        //查询学员表
        List<Student> studentList=studentService.getStudent();
        model.addAttribute("studentList",studentList);
        //查询班级表
        List<Classes> classesList=classesService.getClasses();
        model.addAttribute("classesList",classesList);
        return "stulist";
    }

    /**\
     * 添加
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "add.html",method = RequestMethod.GET)
    public String getadd(Model model, HttpSession session){
        List<Classes> classesList=classesService.getClasses();
        model.addAttribute("classesList",classesList);
        session.setAttribute("classesList",classesList);
        return "add";
    }

    @RequestMapping(value = "addlist.html",method = RequestMethod.POST)
    public String getAddlist(Student student,Model model){
        boolean falg=false;
        if (studentService.getAdd(student)){
            falg=true;
            model.addAttribute("falg",falg);
           model.addAttribute("student",student);
            return "redirect:/stu/stulist";
        }
        return "add";
    }

}
