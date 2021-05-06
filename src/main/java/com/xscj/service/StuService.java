package com.xscj.service;

import java.util.List;

import com.xscj.domain.SimpleStudent;
import com.xscj.domain.Student;
import com.xscj.domain.SubStudent;

public interface StuService {
    /**
     * 得到学生总人数业务逻辑
     */
    public int getStuCount();

    /**
     * 添加第一条学生信息业务逻辑
     */
    public int addStuDb(int id, Student student);

    /**
     * 添加一条新的学生信息业务逻辑
     */
    public int addStuToDb(Student student);

    /**
     * 分页查询
     */
    public List<SimpleStudent> queryByPage(int pageSize, int pageNow);

    /**
     * @author xxx
     * @date
     * <p>
     * 得到有效的学生总人数
     */

    public int getValidStuCount();

    /**
     * @author xxx
     * @date
     * 模拟删除 设置删除标志
     */

    public void deleteStuByXueHao(int xuehao);

    /**
     * @author xxx
     * @date
     * 根据班级编号获得这个班级所有学生的学号以及姓名
     */
    public List<SubStudent> getAllSubStudentsByGradeID(String gradeID);

    /**
     * @author xxx
     * @date
     * 根据学生学号查询这个学生的姓名
     */
    public SubStudent getSubStudentByXueHao(int stuXueHao);

    /**
     * @return 返回某次考试某门课程所有成绩未记录的学生集合
     * @author xxx
     * @date
     * @param班级编号
     * @param学期
     * @param考试类型
     * @param课程编号
     */
    public List<SubStudent> getAllSubStudentsByGXTC(String gradeID, int xueqi, String examType, String courseID);

    /**
     * @param 学生学号
     * @return 学生的个人基本信息
     * @author xxx
     * @date
     */
    public Student getStudent(int xuehao);

    /**
     * @author xxx
     * @date
     * @param学号
     * @param学生信息
     * @return更新学生信息
     */
    public void updateStuInfo(int xuehao, Student student);


    /**
     * @author xxx
     * @date
     * @param学生学号
     * @return学生简单的个人信息
     */
    public SimpleStudent querySimpleStudent(int stuXueHao);


    /**
     * @author xxx
     * @date
     * @param班级编号
     * @return返回某个班级的所有学生集合
     */
    public List<SimpleStudent> querySimpleStudents(String gradeID);

    /**
     * @author xxx
     * @date
     * @return判断学生是否存在
     */
    public int isExisits(int stuXueHao);

    /**
     * @author xxx
     * @date
     * @return判断某个班级是否有学生存在
     */
    public int isExisits(String gradeID);

    /**
     * @author xxx
     * @date
     */
    public int isExisits(int stuXueHao, String password);


    public void updatePass(int stuXueHao, String password);

}
