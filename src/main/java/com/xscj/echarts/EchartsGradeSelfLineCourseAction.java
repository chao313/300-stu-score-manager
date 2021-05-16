/**
 *
 */
package com.xscj.echarts;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.echarts.dao.EchartsDao;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.*;

/**
 * 班级及格率,优秀率变化图
 *
 * @author xxx
 * @date
 */
public class EchartsGradeSelfLineCourseAction extends ActionSupport {

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
        Map<String, List<Double>> stringListMap = echartsDao.EchartsGradeSelfLine(courseName, gradeid);
        List<LineVo> lineVos = new ArrayList<>();
        stringListMap.forEach((name, scores) -> {
            LineVo complate = this.complate(name, scores);
            lineVos.add(complate);
        });
        Map<String, Object> map = new HashMap<>();
        map.put("name", year + "年" + gradeid + "班" + courseName + "学科" + examtype);
        map.put("values", lineVos);
        map.put("xdata", stringListMap.keySet());
        map.put("title", Arrays.asList("及格人数","优秀人数","良好人数","中等人数","不及格人数"));
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
     * "及格人数"
     * "优秀人数"
     * "良好人数"
     * "中等人数"
     * "不及格人数
     */
    public LineVo complate(String name, List<Double> scores) {
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

        return new LineVo(name, Arrays.asList(sucCount, excellentCount, goodCount, secondaryCount, failCount));
    }

    public static class LineVo {
        private String name;
        private String type = "line";
        private String stack = "总量";
        private List<Integer> data = new ArrayList<>();

        public LineVo(String name, List<Integer> data) {
            this.name = name;
            this.data = data;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public String getStack() {
            return stack;
        }

        public void setStack(String stack) {
            this.stack = stack;
        }

        public List<Integer> getData() {
            return data;
        }

        public void setData(List<Integer> data) {
            this.data = data;
        }
    }

}
