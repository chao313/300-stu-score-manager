/**
 *
 */
package com.xscj.echarts.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author xxx
 * @date
 */
@Repository
public class EchartsDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;


    /**
     * 根据year和课程来计算平均数
     *
     * @param year
     * @param courseid
     * @return
     */
    public List<List<Object>> getAvgByYearAndCourseid(String year, String courseid) {
        String sqlString = "select sr_gradeid,  CONCAT(classes.cs_date,'届',classes.cs_class,'班') as className,course.c_name, ROUND(avg(sr_score),2) as score " +
                "from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid " +
                "JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid " +
                "WHERE sr_courseid = ?  and  classes.cs_date = ? " +
                "GROUP BY sr_gradeid,sr_courseid order by ROUND(avg(sr_score),2) desc";
        Object[] argsObjects = {courseid, year};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 根据year和课程来计算平
     *
     * @param year
     * @param courseid
     * @return
     */
    public List<List<Object>> getMaxByYearAndCourseid(String year, String courseid) {
        String sqlString = "select sr_gradeid,  CONCAT(classes.cs_date,'届',classes.cs_class,'班') as className,course.c_name, ROUND(max(sr_score),2) as score " +
                "from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid " +
                "JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid " +
                "WHERE sr_courseid = ?  and  classes.cs_date = ? " +
                "GROUP BY sr_gradeid,sr_courseid order by ROUND(max(sr_score),2) desc";
        Object[] argsObjects = {courseid, year};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 根据year和课程来计算
     *
     * @param year
     * @param courseid
     * @return
     */
    public List<List<Object>> getMinByYearAndCourseid(String year, String courseid) {
        String sqlString = "select sr_gradeid,  CONCAT(classes.cs_date,'届',classes.cs_class,'班') as className,course.c_name, ROUND(min(sr_score),2) as score " +
                "from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid " +
                "JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid " +
                "WHERE sr_courseid = ?  and  classes.cs_date = ? " +
                "GROUP BY sr_gradeid,sr_courseid order by ROUND(min(sr_score),2) desc";
        Object[] argsObjects = {courseid, year};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 单科成绩班级排名
     *
     * @param year
     * @param courseid
     * @return
     */
    public List<List<Object>> getByYearAndCourseidAndGradeid(String year, String courseid, String gradeid) {
        String sqlString = "select sr_gradeid,  CONCAT(classes.cs_date,'届',classes.cs_class,'班 ',stu.s_name) as className,classes.cs_date, course.c_name, ROUND(sr_score,2) as score " +
                " from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid " +
                " JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid" +
                " JOIN sp_student stu ON record.sr_stuid = stu.s_id " +
                " where sr_courseid = ?  and  classes.cs_date = ? and sr_gradeid = ?  order by ROUND(sr_score,2) desc";
        Object[] argsObjects = {courseid, year, gradeid};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 单科层级年级排名
     *
     * @param year
     * @param courseid
     * @return
     */
    public List<List<Object>> getPersonByYearAndCourseid(String year, String courseid) {
        String sqlString = "select sr_gradeid, CONCAT(classes.cs_date,'届',classes.cs_class,'班 ',stu.s_name) as className,classes.cs_date, course.c_name, ROUND(sr_score,2) as score " +
                " from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid " +
                " JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid" +
                " JOIN sp_student stu ON record.sr_stuid = stu.s_id " +
                " where sr_courseid = ?  and  classes.cs_date = ?  order by ROUND(sr_score,2) desc";
        Object[] argsObjects = {courseid, year};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }


    /**
     * 总分成绩班级排名
     *
     * @param year
     * @param gradeid
     * @return
     */
    public List<List<Object>> getPersonTotalByYearAndGradeid(String year, String gradeid) {
        String sqlString = " select s_name as className ,sum(score) as score from (  select sr_gradeid, classes.cs_date, course.c_id, course.c_name,  stu.s_name, ROUND(sr_score,2) as score  " +
                "    from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid   " +
                "  JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid  " +
                "  JOIN sp_student stu ON record.sr_stuid = stu.s_id  " +
                "  where classes.cs_date = ? and sr_gradeid = ?   " +
                "  )tmp GROUP BY   s_name";
        Object[] argsObjects = {year, gradeid};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }


    /**
     * 总分成绩年级排名
     *
     * @param year
     * @return
     */
    public List<List<Object>> getPersonTotalByYear(String year) {
        String sqlString = " select CONCAT(cs_date,'年', sr_examtype) as className ,sum(score) as score from (  select sr_gradeid, sr_examtype as sr_examtype ,classes.cs_date as cs_date, course.c_id, course.c_name,  stu.s_name, ROUND(sr_score,2) as score  " +
                "    from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid   " +
                "  JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid  " +
                "  JOIN sp_student stu ON record.sr_stuid = stu.s_id  " +
                "  where classes.cs_date = ? " +
                "  )tmp GROUP BY   s_name";
        Object[] argsObjects = {year};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 总分成绩班级排名
     *
     * @return
     */
    public List<List<Object>> EchartsPersonSelfCourse(String name, String courseid) {
        String sqlString = "select   sr_gradeid,  CONCAT(classes.cs_date,'年',record.sr_examtype) as className , course.c_id, course.c_name, stu.s_name, ROUND(sr_score,2) as score " +
                "    from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid   " +
                "    JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid  " +
                "    JOIN sp_student stu ON record.sr_stuid = stu.s_id  " +
                "    where  stu.s_name = ?  and  sr_courseid = ? ";
        Object[] argsObjects = {name, courseid};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//班级名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 总分成绩班级排名
     *
     * @return
     */
    public List<List<Object>> EchartsPersonSelfTotalCourse(String stuid) {
        String sqlString = " select  CONCAT(classes.cs_date,'年',record.sr_examtime) as className ,  ROUND(sum(sr_score),2) as score  " +
                "    from sp_score_record record JOIN sp_course course ON course.c_id = record.sr_courseid   " +
                "    JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid  " +
                "    JOIN sp_student stu ON record.sr_stuid = stu.s_id  " +
                "    where  stu.s_id =  ? group by classes.cs_date,record.sr_examtime ";
        Object[] argsObjects = {stuid};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 班级查询,指定班级，年级，学期；
     *
     * @return
     */
    public List<List<Object>> EchartsGradeSelf(String year, String examtype, String courseName, String gradeid) {
        String sqlString = "  select   CONCAT(classes.cs_date,'年',record.sr_examtype, classes.cs_class,'班',course.c_name) as className ,  " +
                "    record.sr_gradeid ,  " +
                "    ROUND( sr_score ,2) as score  " +
                "    from sp_score_record record   " +
                "    JOIN sp_course course ON course.c_id = record.sr_courseid   " +
                "    JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid  " +
                "    JOIN sp_student stu ON record.sr_stuid = stu.s_id  " +
                "    where    classes.cs_date = ? and record.sr_examtype = ?  and  course.c_name = ?  and record.sr_gradeid = ? ";
        Object[] argsObjects = {year, examtype, courseName, gradeid};
        final List<List<Object>> result = new ArrayList<List<Object>>();
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {

            @Override
            public void processRow(ResultSet rs) throws SQLException {
                List<Object> tmp = new ArrayList<Object>();
                tmp.add(rs.getString("className"));//名称
                tmp.add(rs.getString("score"));//分数
                result.add(tmp);
            }
        });
        return result;
    }

    /**
     * 班级查询,指定班级，年级，学期；
     *
     * @return
     */
    public Map<String, List<Double>> EchartsGradeSelfLine(String courseName, String gradeid) {
        Map<String, List<Double>> res = new HashMap<>();
        String sqlString = "  select   CONCAT(classes.cs_date,'年',record.sr_examtype, classes.cs_class,'班',course.c_name) as className ,  " +
                "    record.sr_examtype as examtype ,  " +
                "    ROUND( sr_score ,2) as score  " +
                "    from sp_score_record record   " +
                "    JOIN sp_course course ON course.c_id = record.sr_courseid   " +
                "    JOIN sp_classes classes ON classes.cs_id = record.sr_gradeid  " +
                "    JOIN sp_student stu ON record.sr_stuid = stu.s_id  " +
                "    where  course.c_name = ?  and record.sr_gradeid = ? ";
        Object[] argsObjects = {courseName, gradeid};
        jdbcTemplate.query(sqlString, argsObjects, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet rs) throws SQLException {
                String className = rs.getString("className");
                if (res.containsKey(className)) {
                    res.get(className).add(new Double(rs.getString("score")));
                } else {
                    List<Double> tmp = new ArrayList<>();
                    tmp.add((new Double(rs.getString("score"))));
                    res.put(className, tmp);
                }
            }
        });
        return res;
    }


}
