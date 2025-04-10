package kr.ac.hansung.cse.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

@Entity
@Table(name = "courses")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Min(value = 2000, message = "년도는 2000년 이상이어야 합니다.")
    private int year;

    @Min(value = 1, message = "학기는 1 또는 2여야 합니다.")
    @Max(value = 2, message = "학기는 1 또는 2여야 합니다.")
    private int semester;

    @NotBlank(message = "교과목명은 필수 항목입니다.")
    @Size(max = 100, message = "교과목명은 100자 이내여야 합니다.")
    @Column(name = "course_name", nullable = false)
    private String courseName;

    @NotBlank(message = "교과구분은 필수 항목입니다.")
    @Column(name = "course_type", nullable = false)
    private String courseType;

    @NotBlank(message = "담당교수는 필수 항목입니다.")
    @Column(name = "professor", nullable = false)
    private String professor;

    @Min(value = 1, message = "학점은 1 이상이어야 합니다.")
    @Max(value = 6, message = "학점은 6 이하이어야 합니다.")
    private int credit;
}
