/**
 *
 */
package com.xscj.dao;

import java.util.List;

import com.xscj.domain.Course;
import com.xscj.domain.Teaching;
import com.xscj.domain.TeachingDetail;
import com.xscj.domain.TeachingGidXq;
import com.xscj.domain.TeachingTable;

/**
 * @author xxx
 * @date
 */
public interface TeachingArrangeDao {
    /**
     * @author xxx 向数据库中添加教学安排
     * @date
     */
    public void addTeachingArrange(final List<Teaching> teachings);


    /**
     * @author xxx
     * @date
     * 通过教师编号从教学安排表中查询教师授课的课程编号，再由
     * 课程编号从课程表中获取课程名
     */
    public List<String> getCourseNameByTeacherID(String teacherBianHao);


    /**
     * @author xxx
     * @date
     * 通过教师编号从教学安排表中获得某个具体教师的教学安排情况
     */
    public List<Teaching> getTeachingsByTeacherID(String teacherBianHao);

    /**
     * @author xxx
     * @date
     * 通过班级编号、学期、课程编号从教学安排表中获得某个具体授课老师的姓名
     */
    public String getTeacherNameByTeaching(String gradeID, int xueqi, String courseID);

    /**
     * @author xxx
     * @date
     * 通过班级编号、学期获得从教学安排表中获得某个班级某个学期具体的教学安排
     */
    public List<Course> getCourses(String gradeID, int xueqi, String examType, int stuXueHao);

    /**
     * @author xxx
     * @date
     * @param教师编号
     * @return返回某个教师具体的教师教学安排
     */
    public List<TeachingDetail> getTeachingDetails(String teacherBianHao);

    /**
     * @author xxx
     * @date
     * @return返回某个班级的具体教学安排
     */
    public List<Course> getCourses(String gradeID, int xueqi);

    public int isTrue(String gradeID, int xueqi, String courseID);

    /**
     * @author xxx
     * @date
     * @return通过学生的学号获得该学生某个学期是否有教学安排
     */
    public int isExisits(int stuXueHao, int xueqi);

    /**
     * @author xxx
     * @date
     * @return查询某个班级某个学期的教学安排情况
     */
    public int isExisits(String gradeID, int xueqi);

    /**
     * @author xxx
     * @date
     * @return获得某个老师的教学安排表
     */
    public List<TeachingTable> getTeachingTables(String teacherID);

    /**
     * @author xxx
     * @date
     * @return获得某个班级具体的教学安排情况课程及授课老师
     */
    public List<TeachingGidXq> geTeachingGidXqs(String gradeID, int xueqi);

    public void deleteTeaching(String gradeID, int xueqi, List<String> courseID);

    /**
     * @author xxx
     * @判断某个教师是否有教学安排
     */
    public int hasRecord(String teacherID);

}
