/**
 *
 */
package com.xscj.dao;

import java.util.List;

import com.xscj.domain.Grade;
import com.xscj.domain.GradeInfo;

/**
 * @author xxx 班级设置底层操作接口
 */
public interface GradeDao {
    /**
     * @author xxx 得到班级总数的底层操作接口
     */
    public int getGradeCount();

    /**
     * @author xxx 得到班级列表的底层操作接口
     */
    public List<Grade> getAllGrades();

    /**
     * @author xxx得到高一年级所对应届的底层操作接口
     */
    public int getMaxYear();

    /**
     * @author xxx得到指定区间内班级个数
     * @date
     */
    public int getValidGradeCount(int minYear, int maxYear);

    /**
     * @author xxx得到指定区间内班级列表
     * @date
     */
    public List<Grade> getValidAllGrades(int minYear, int maxYear);


    /**
     * @author xxx 得到某一届总共有多少个班
     * @date
     */
    public int getClassesCount(int maxYear);


    /**
     * @author xxx 向数据库中添加一条新的班级信息
     * @date
     */
    public int AddGradeToDb(Grade grade);

    /**
     * @author xxx 得到最新一届的班级列表
     * @date
     */
    public List<Grade> getMaxYearGrades(int maxYear);

    /**
     * @author xxx得到某条具体的班级信息
     * @date
     */
    public Grade getGradeBybianHao(String bianHao);

    /**
     * @author xxx
     * @date
     * 模拟删除 设置删除标志
     */
    public void deleteChoiceGrades(String[] gradeStrings);

    /**
     * @author xxx
     * @date
     * 通过学生学号获得这个学生的班级信息
     */
    public Grade getGradeBystuXueHao(int stuXueHao);

    /**
     * @author xxx
     * @date
     * 得到所有合法的班级信息集合
     */
    public List<Grade> getALLValidGrades();

    /**
     * @author xxx
     * @date
     * @return获得所有班级的详细信息
     */
    public List<GradeInfo> getGradeInfos();

    /**
     * @author xxx
     * @date
     */
    public List<Grade> getGradesEnableDel();

    /**
     * @author xxx
     * @date
     */
    public List<Integer> getYears();

    /**
     * @author xxx
     */
    public List<GradeInfo> getGradeInfos(int year);

    /**
     * @author xxxs
     */
    public int hasRecord(String teacherID);

}
