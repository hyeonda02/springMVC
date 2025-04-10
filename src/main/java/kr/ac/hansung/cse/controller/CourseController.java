package kr.ac.hansung.cse.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/courses")
public class CourseController {
    @GetMapping("")
    public String allCourses(HttpServletRequest request) {
        return "allcourses";

    }
    @GetMapping("/detail")
    public String detailCourses(HttpServletRequest request) {
        return "detailcourses";

    }
    @PostMapping("/create")
    public void createCourses(HttpServletRequest request) {

    }
    @GetMapping("/create")
    public String createCoursespage(HttpServletRequest request) {
        return "createcourses";

    }
    @GetMapping("/nextcourse")
    public String cnextCourses(HttpServletRequest request) {
        return "nextcourse";

    }
}
