package com.xscj.service;

import java.util.List;

import com.xscj.domain.IDNameScore;
import com.xscj.domain.Score;
import com.xscj.domain.ScoreByGCXT;
import com.xscj.domain.ScoreByGidCid;
import com.xscj.domain.ScoreBySXT;
import com.xscj.domain.ScoreCount;
import com.xscj.domain.ScoreGroup;
import com.xscj.domain.ScorePart;
import com.xscj.domain.ScoreXueqi;
import com.xscj.domain.SimpleScore;
import com.xscj.domain.StuScoreCount;

public interface ScoreService {
    /**
     * @author xxx
     * @date
     * <p>
     * 批量插入学生成绩记录数据
     */
    public void addScoresToDb(final List<Score> scores);

    /**
     * @author xxx
     * @date
     */
    public List<SimpleScore> getSimpleScores(String gradeID, String courseID, String examType, String examTime, int xueqi);

    /**
     * @author xxx
     * @date
     * 通过班级编号、学期、学生学号查询学生考试成绩
     */
    public List<ScorePart> getScoreParts(String gradeID, int xueqi, int stuXueHao);

    /**
     * @author xxx
     * @date
     * 通过学生学号查询学生考试成绩
     */
    public List<ScorePart> getScorePartsByXueHao(int stuXueHao);

    /**
     * @author xxx
     * @date
     * 通过学生学号和课程编号查询这个学生截止目前为止某一门课程所有考试情况
     */
    public List<ScoreXueqi> getScoreXueqis(int stuXueHao, String courseID);

    /**
     * @author xxx
     * @date
     * 通过班级编号和课程编号查询某个班级所有学生某门课程的所有成绩记录
     */
    public List<ScoreByGidCid> getScoreByGidCids(String gradeID, String courseID);

    /**
     * @author xxx
     * @date
     * @param学号
     * @param学期
     * @param类型
     * @return通过学生学号和学期以及考试类型查询学生在某次考试中的所有成绩
     **/
    public List<ScoreBySXT> getScoreBySXTs(int stuXueHao, int xueqi, String examType);

    /**
     * @author xxx
     * @date
     * @param班级编号
     * @param课程编号
     * @param学期
     * @param考试类型
     * @return通过班级编号、课程编号、学期、考试类型 查询某个班级某个学期某个课程某次考试所有学生的考试情况
     */
    public List<ScoreByGCXT> getscByGCXTs(String gradeID, String courseID, int xueqi, String examType);

    /**
     * @author xxx
     * @date
     * @param学生学号
     * @param学期
     * @param考试类型
     * @param课程编号
     */
    public SimpleScore getScore(int stuXueHao, int xueqi, String examType, String courseID);

    /**
     * @author xxx
     * @date
     * @param新的考试成绩
     * @param学生学号
     * @param学期
     * @param考试类型
     * @param课程编号
     */

    public void updateScore(double newScore, int stuXueHao, int xueqi, String examType, String courseID);

    /**
     * @author xxx
     * @date
     * @return学生学号、学生姓名、学生成绩
     */
    public List<IDNameScore> getIdNameScores(String gradeID, int xueqi, String examType, String courseID);

    /**
     * @author xxx
     * @date
     */
    public void updateScores(List<Integer> stuXueHaos, List<Double> scores, String gradeID, int xueqi, String examType, String courseID);

    /**
     * @author xxx
     * @date
     * @param学生学号
     * @param学期
     * @param考试类型
     * @param课程编号
     * @return删除某个学生某个课程某次考试的成绩
     */
    public void deleteStuScore(int stuXueHao, int xueqi, String examType, String courseID);

    /**
     * @author xxx
     * @date
     * @param学生学号
     * @param学期
     * @param考试类型
     * @param课程编号
     * @return删除某个班级某些学生某个课程某次考试的成绩
     */
    public void deleteStuScores(List<Integer> stuXueHaos, int xueqi, String examType, String courseID);


    /**
     * @author xxx
     * @date
     * @param班级编号
     * @param学期
     * @param考试类型
     * @return某个班级某次考试的成绩情况
     */
    public List<ScoreCount> getScoreCounts(String gradeID, int xueqi, String examType);

    /**
     * @author xxx
     * @date
     * @return获得某个班级某个学期某次考试某个学生的考试成绩记录总数
     */
    public int getCount(int stuXueHao, int xueqi, String examType);

    /**
     * @author xxx
     * @date
     */
    public int getCount(String gradeID, int xueqi, String examType, String courseID);

    /**
     * @author xxx
     * @date
     * @return是否有某个学生的成绩记录
     */
    public int hasScoreRecord(int stuXueHao);

    /**
     * @author xxx
     * @date
     * @return是否有某个学生某门课程的成绩记录
     */
    public int hasScoreRecord(int stuXueHao, String courseID);

    /**
     * @author xxx
     * @date
     */
    public int hasScoreRecord(int stuXueHao, String examType, int xueqi);

    /**
     * @author xxx
     * @date
     */
    public int hasScoreRecord(String gradeID, String courseID);

    /**
     * @author xxx
     * @date
     */
    public int hasScoreRecord(String gradeID, String courseID, int xueqi, String examTypeString);

    /**
     * @author xxx
     * @date
     */
    public int hasScoreRecord(int stuXueHao, String courseID, int xueqi, String examType);


    /**
     * @author xxx
     * @date
     */
    public int isExisits(String gradeID, int xueqi, String examType);

    /**
     * @author xxx
     * @date
     * @return获得班级每个同学的总分集合
     */
    public List<StuScoreCount> getStuScoreCounts(String gradeID, int xueqi, String examType);

    /**
     * @author xxx
     */

    public List<ScoreGroup> getScoreGroups(String gradeID, int xueqi, String examType);


}
