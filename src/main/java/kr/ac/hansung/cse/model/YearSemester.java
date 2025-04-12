package kr.ac.hansung.cse.model;

import lombok.*;

import java.util.Objects;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class YearSemester {
    private int year;
    private int semester;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof YearSemester)) return false;
        YearSemester that = (YearSemester) o;
        return year == that.year && semester == that.semester;
    }

    @Override
    public int hashCode() {
        return Objects.hash(year, semester);
    }

    @Override
    public String toString() {
        return year + "년 " + semester + "학기";
    }
}
