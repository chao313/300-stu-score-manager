/**
 *
 */
package com.xscj.score.action;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.domain.Course;
import com.xscj.domain.Grade;
import com.xscj.domain.ScoreByGCXT;
import com.xscj.service.CoursePlan;
import com.xscj.service.GradeSetUp;
import com.xscj.service.ScoreService;
import com.xscj.util.ChartUtils;
import com.xscj.util.Util;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.CategoryItemRenderer;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.awt.*;
import java.util.List;

/**
 * @author xxx
 * @date
 */
public class ScoreAnalyzeFiveAction extends ActionSupport {

    /**
     *
     */
    private static final long serialVersionUID = -7908989197851956370L;

    @Autowired
    @Qualifier("scoreServiceImpl")
    private ScoreService scoreService;//成绩操作业务逻辑处理类

    @Autowired
    @Qualifier("gradeSetUpImpl")
    private GradeSetUp gradeSetUp;//班级班级业务逻辑处理类

    @Autowired
    @Qualifier("coursePlanImpl")
    private CoursePlan coursePlan;


    private JFreeChart chart;

    @SuppressWarnings("deprecation")
    public JFreeChart getChart() {
        ChartUtils.setChartTheme();
        Font nf = Util.getBuiltInFont();
        // 这一句需要注意
        chart = ChartFactory.createBarChart3D(grade.getYear() + "届（" + grade.getClassID() + ")班" + course.getName() + "课程第" + xueqi + "学期" + examType + "所有同学考试成绩整体分布情况", "学生姓名", "成绩", getDataSet(), PlotOrientation.VERTICAL, false, false, false);
        chart.setTitle(new TextTitle(grade.getYear() + "届（" + grade.getClassID() + ")班" + course.getName() + "课程第" + xueqi + "学期" + examType + "所有同学考试成绩整体分布情况", nf));
        CategoryPlot plot = (CategoryPlot) chart.getPlot();

        CategoryItemRenderer renderer = plot.getRenderer();
        renderer.setItemLabelsVisible(true);
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());

        CategoryAxis categoryAxis = plot.getDomainAxis();
        categoryAxis.setLabelFont(nf);
        categoryAxis.setCategoryLabelPositions(CategoryLabelPositions.UP_45);
        categoryAxis.setTickLabelFont(nf);
        NumberAxis numberAxis = (NumberAxis) plot.getRangeAxis();
        numberAxis.setLabelFont(nf);
        return chart;
    }

    private DefaultCategoryDataset getDataSet() {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        for (int i = 0; i < scoreByGCXTs.size(); i++) {
            dataset.addValue(scoreByGCXTs.get(i).getScore(), "", scoreByGCXTs.get(i).getStuName());
        }
        return dataset;
    }

    public void setChart(JFreeChart chart) {
        this.chart = chart;
    }

    @Override
    public void validate() {
        grade = gradeSetUp.getGradeBybianHao(gradeID);
        course = coursePlan.getCourseByCourseID(courseID);
        scoreByGCXTs = scoreService.getscByGCXTs(gradeID, courseID, xueqi, examType);
    }

    private String gradeID;//班级编号
    private Grade grade;
    private String courseID;//课程编号
    private Course course;
    private int xueqi;//学期
    private String examType;//考试类型
    private List<ScoreByGCXT> scoreByGCXTs;

    public String getGradeID() {
        return gradeID;
    }

    public void setGradeID(String gradeID) {
        this.gradeID = gradeID;
    }

    public String getCourseID() {
        return courseID;
    }

    public void setCourseID(String courseID) {
        this.courseID = courseID;
    }

    public int getXueqi() {
        return xueqi;
    }

    public void setXueqi(int xueqi) {
        this.xueqi = xueqi;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
    }

    public List<ScoreByGCXT> getScoreByGCXTs() {
        return scoreByGCXTs;
    }

    public void setScoreByGCXTs(List<ScoreByGCXT> scoreByGCXTs) {
        this.scoreByGCXTs = scoreByGCXTs;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }


}
