package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.model.YearSemester;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CourseService {
    private final CourseDao courseDao;

    public void saveCourse(Course course) {
        courseDao.save(course);
    }
    public List<Course> getCoursesByYearAndSemester(int year, int semester) {
        return courseDao.getCoursesByYearAndSemester(year, semester);
    }
    public Map<YearSemester, List<Course>> getCoursesGroupedByYearSemester() {
        return courseDao.getCoursesGroupedByYearSemester();
    }
}
