/**
 *
 */
package com.xscj.echarts;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.echarts.dao.EchartsDao;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 班级及格率,优秀率
 *
 * @author xxx
 * @date
 */
public class EchartsGradeSelfCourseAction extends ActionSupport {

    private String result;

    @Autowired
    @Qualifier("echartsDao")
    private EchartsDao echartsDao;

    private String year;
    private String examtype;
    private String courseName;
    private String gradeid;

    /**
     *
     */
    private static final long serialVersionUID = 8527569411000570082L;

    @Override
    public String execute() throws Exception {
        List<List<Object>> avgByYearAndCourseids = echartsDao.EchartsGradeSelf(year, examtype, courseName, gradeid);
        Map<String, Object> map = new HashMap<String, Object>();
        Object[][] source = new Object[avgByYearAndCourseids.size()][2];
        List<Object> keys = new ArrayList<>();
        List<Double> values = new ArrayList<>();
        for (int i = 0; i < avgByYearAndCourseids.size(); i++) {
            List<Object> vo = avgByYearAndCourseids.get(i);
            keys.add(vo.get(0));
            values.add(new Double(vo.get(1).toString()));
        }
        map.put("name", year + "年" + gradeid + "班" + courseName + "学科" + examtype);
        map.put("values", this.complate(values));
        JSONObject json = JSONObject.fromObject(map);
        result = json.toString();
        return SUCCESS;
    }


    @Override
    public void validate() {
    }


    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getExamtype() {
        return examtype;
    }

    public void setExamtype(String examtype) {
        this.examtype = examtype;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getGradeid() {
        return gradeid;
    }

    public void setGradeid(String gradeid) {
        this.gradeid = gradeid;
    }


    /**
     * 计算
     */
    public List<PipVo> complate(List<Double> scores) {
        List<PipVo> res = new ArrayList<>();
        int failCount = 0;//不及格人数
        int sucCount = 0;//及格人数
        int goodCount = 0;//良好人数
        int secondaryCount = 0;//中等人数
        int excellentCount = 0;//优秀人数
        for (int i = 0; i < scores.size(); i++) {

            int s = (int) (scores.get(i) / 10);
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

        res.add(new PipVo("及格人数", sucCount));
        res.add(new PipVo("优秀人数", excellentCount));
        res.add(new PipVo("良好人数", goodCount));
        res.add(new PipVo("中等人数", secondaryCount));
        res.add(new PipVo("不及格人数", failCount));

        return res;
    }

    public static class PipVo {
        private String name;
        private Integer value;

        public PipVo(String name, Integer value) {
            this.name = name;
            this.value = value;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Integer getValue() {
            return value;
        }

        public void setValue(Integer value) {
            this.value = value;
        }
    }

}
