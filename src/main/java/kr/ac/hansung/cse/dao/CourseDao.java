package kr.ac.hansung.cse.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.model.YearSemester;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CourseDao {

    @PersistenceContext
    private EntityManager entityManager;

    public Map<YearSemester, List<Course>> getCoursesGroupedByYearSemester() {
        List<Course> courses = entityManager
                .createQuery("SELECT c FROM Course c ORDER BY c.year, c.semester", Course.class)
                .getResultList();

        Map<YearSemester, List<Course>> courseMap = new LinkedHashMap<>();

        for (Course course : courses) {
            YearSemester key = new YearSemester(course.getYear(), course.getSemester());
            courseMap.computeIfAbsent(key, k -> new ArrayList<>()).add(course);
        }

        return courseMap;
    }
    public List<Course> getCoursesByYearAndSemester(int year, int semester) {
        return entityManager.createQuery(
                        "SELECT c FROM Course c WHERE c.year = :year AND c.semester = :semester", Course.class)
                .setParameter("year", year)
                .setParameter("semester", semester)
                .getResultList();
    }

    public void save(Course course) {
        entityManager.persist(course);
    }
}
