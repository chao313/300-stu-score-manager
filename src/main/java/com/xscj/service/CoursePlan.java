package com.xscj.service;

import java.util.List;

import com.xscj.domain.Course;
import com.xscj.domain.CourseInfo;

public interface CoursePlan {
    /**
     * @author xxx 得到课程总数业务逻辑处理接口
     */
    public int getCourseCount();

    /**
     * @author xxx 得到所有课程列表业务逻辑处理接口
     */
    public List<Course> getAllCourses();

    /**
     * @author xxx 向数据库中添加一条新的课程信息
     */
    public int addCourseToDb(Course course);

    /**
     * @author xxx 复合查询 课程表 教学安排表
     * @date
     */

    public List<Course> getCoursesByGradeAndXueQi(String GradeStr, int xueqi);


    /**
     * @author xxx
     * @date
     * <p>
     * 得到删除标志为false的课程总记录数目
     */
    public int getValidCourseCount();

    /**
     * @author xxx
     * @date
     * 得到删除标志为false的课程列表
     */
    public List<Course> getValidAllCourses();


    /**
     * @author xxx
     * @date
     * <p>
     * 模拟删除
     **/

    public void deleteChoiceCourses(String[] courseIDs);

    /**
     * @author xxx
     * @date
     * 通过课程编号获得课程详细信息
     */
    public Course getCourseByCourseID(String courseID);

    /**
     * @author xxx
     * @date
     * 获得所有课程的详细信息
     */
    public List<CourseInfo> getAllCourseInfos();

    /**
     * @author xxx
     * @date
     */
    public List<Course> getCoursesEnableDel();
}
