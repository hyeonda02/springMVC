package kr.ac.hansung.cse.controller;

import jakarta.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

import jakarta.validation.Valid;
import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.model.YearSemester;
import kr.ac.hansung.cse.service.CourseService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/courses")
@RequiredArgsConstructor
public class CourseController {
    private final CourseService service;
    @GetMapping("")
    public String allCourses(Model model) {
        Map<YearSemester, List<Course>> courseMap = service.getCoursesGroupedByYearSemester();
        model.addAttribute("courseMap", courseMap);
        return "allcourses";
    }
    @GetMapping("/detail")
    public String getCoursesByYearSemester(@RequestParam int year,
            @RequestParam int semester,
            Model model) {
        List<Course> courses = service.getCoursesByYearAndSemester(year, semester);
        int totalCredits = courses.stream().mapToInt(Course::getCredit).sum();

        model.addAttribute("year", year);
        model.addAttribute("semester", semester);
        model.addAttribute("courses", courses);
        model.addAttribute("totalCredits", totalCredits);
        return "detailcourses";
    }
    @PostMapping("/create")
    public String createCourses(@Valid @ModelAttribute("course") Course course, BindingResult result) {
        if (result.hasErrors()) {
            return "createcourses";
        }
        service.saveCourse(course);
        return "home";
    }
    @GetMapping("/create")
    public String createCoursespage(Model model) {
        model.addAttribute("course", new Course());
        return "createcourses";

    }
    @GetMapping("/nextcourse")
    public String listCourses(Model model) {
        int year = 2025;
        int semester = 2;
        List<Course> courses = service.getCoursesByYearAndSemester(year, semester);

        model.addAttribute("courses", courses);
        model.addAttribute("year", year);
        model.addAttribute("semester", semester);

        return "nextcourse";
    }

}
