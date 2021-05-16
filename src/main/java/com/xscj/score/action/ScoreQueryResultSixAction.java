/**
 *
 */
package com.xscj.score.action;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.domain.Score;
import com.xscj.domain.ScoreByGidCid;
import com.xscj.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.ArrayList;
import java.util.List;

/**
 * @author xxx
 * @date 通过班级编号以及课程编号获得某个班级所有的学生考试成绩
 */
public class ScoreQueryResultSixAction extends ActionSupport {

    /**
     *
     */
    private static final long serialVersionUID = 4902642490617924608L;

    @Autowired
    @Qualifier("scoreServiceImpl")
    private ScoreService scoreService;

    private String gradeID;//班级编号
    private String courseID;//课程编号

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

    private List<ScoreByGidCid> scoreByGidCids; //查询到的成绩相关信息

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    @Override
    public void validate() {
        /*scoreByGidCids = scoreService.getScoreByGidCids(gradeID, courseID);*/
        scoreByGidCids = scoreService.getScoreByGid(gradeID);
        this.complate();
    }

    public List<ScoreByGidCid> getScoreByGidCids() {
        return scoreByGidCids;
    }

    public void setScoreByGidCids(List<ScoreByGidCid> scoreByGidCids) {
        this.scoreByGidCids = scoreByGidCids;
    }


    /**
     * 计算
     */
    private List<Score> scores;//分数记录表对应行集合
    private double totalScore = 0;//总分
    private int stuCount;//某个班级学生人数
    private double avgScore;//平均分
    private double maxScore;//最高分
    private double minScore;//最低分
    private int failCount = 0;//不及格人数
    private int sucCount = 0;//及格人数
    private int goodCount = 0;//良好人数
    private int secondaryCount = 0;//中等人数
    private int excellentCount = 0;//优秀人数
    private String examType;
    private int xueqi;
    private int year;
    private String classID;


    /**
     * 计算
     */
    public void complate() {
        scores = new ArrayList<Score>();
        stuCount = scoreByGidCids.size();//学生总人数
        maxScore = 0;
        minScore = 100;
        for (int i = 0; i < scoreByGidCids.size(); i++) {
            if (scoreByGidCids.get(i).getScore() >= maxScore)
                maxScore = scoreByGidCids.get(i).getScore();//求最高分
            if (scoreByGidCids.get(i).getScore() <= minScore)
                minScore = scoreByGidCids.get(i).getScore();//求最低分
            totalScore = totalScore + scoreByGidCids.get(i).getScore();//总分
            Score simpleScore = new Score();
            simpleScore.setGradeID(gradeID);
            simpleScore.setStuXueHao(scoreByGidCids.get(i).getStuXueHao());//设置学号
            simpleScore.setCourseID(courseID);//设置课程编号
            simpleScore.setExamTime(scoreByGidCids.get(i).getExamTime());//设置考试时间
            simpleScore.setExamType(scoreByGidCids.get(i).getExamType());//设置考试类型
            simpleScore.setXueqi(scoreByGidCids.get(i).getXueqi());//设置学期
            simpleScore.setScore(scoreByGidCids.get(i).getScore());//设置分数
            examType = scoreByGidCids.get(i).getExamType();
            xueqi = scoreByGidCids.get(i).getXueqi();
            classID = gradeID;
            scores.add(simpleScore);
            int s = (int) (scoreByGidCids.get(i).getScore() / 10);
            switch (s) {
                case 10:
                case 9:
                    excellentCount++;
                    break;
                case 8:
                    secondaryCount++;
                    break;
                case 7:
                    goodCount++;
                    break;
                case 6:
                    sucCount++;
                    break;
                default:
                    failCount++;
                    break;
            }
        }
        avgScore = Math.round(totalScore / stuCount);//平均分
    }

    public List<Score> getScores() {
        return scores;
    }

    public void setScores(List<Score> scores) {
        this.scores = scores;
    }

    public double getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(double totalScore) {
        this.totalScore = totalScore;
    }

    public int getStuCount() {
        return stuCount;
    }

    public void setStuCount(int stuCount) {
        this.stuCount = stuCount;
    }

    public double getAvgScore() {
        return avgScore;
    }

    public void setAvgScore(double avgScore) {
        this.avgScore = avgScore;
    }

    public double getMaxScore() {
        return maxScore;
    }

    public void setMaxScore(double maxScore) {
        this.maxScore = maxScore;
    }

    public double getMinScore() {
        return minScore;
    }

    public void setMinScore(double minScore) {
        this.minScore = minScore;
    }

    public int getFailCount() {
        return failCount;
    }

    public void setFailCount(int failCount) {
        this.failCount = failCount;
    }

    public int getSucCount() {
        return sucCount;
    }

    public void setSucCount(int sucCount) {
        this.sucCount = sucCount;
    }

    public int getGoodCount() {
        return goodCount;
    }

    public void setGoodCount(int goodCount) {
        this.goodCount = goodCount;
    }

    public int getSecondaryCount() {
        return secondaryCount;
    }

    public void setSecondaryCount(int secondaryCount) {
        this.secondaryCount = secondaryCount;
    }

    public int getExcellentCount() {
        return excellentCount;
    }

    public void setExcellentCount(int excellentCount) {
        this.excellentCount = excellentCount;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
    }

    public int getXueqi() {
        return xueqi;
    }

    public void setXueqi(int xueqi) {
        this.xueqi = xueqi;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getClassID() {
        return classID;
    }

    public void setClassID(String classID) {
        this.classID = classID;
    }
}
