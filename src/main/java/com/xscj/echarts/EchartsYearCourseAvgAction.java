/**
 *
 */
package com.xscj.echarts;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.echarts.dao.EchartsDao;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author xxx
 * @date 指定课程和年级的班级平均分排名
 */
public class EchartsYearCourseAvgAction extends ActionSupport {

    private String result;

    @Autowired
    @Qualifier("echartsDao")
    private EchartsDao echartsDao;

    private String year;

    private String courseid;


    /**
     *
     */
    private static final long serialVersionUID = 8527569411000570082L;

    @Override
    public String execute() throws Exception {
        List<List<Object>> avgByYearAndCourseids = echartsDao.getAvgByYearAndCourseid(year, courseid);
        Map<String, Object> map = new HashMap<String, Object>();
        Object[][] source = new Object[avgByYearAndCourseids.size()][2];
        for (int i = 0; i < avgByYearAndCourseids.size(); i++) {
            List<Object> vo = avgByYearAndCourseids.get(i);
            Object[] tmp = new Object[2];
            tmp[0] = vo.get(0);
            tmp[1] = new Double(vo.get(1).toString());
            source[i] = tmp;
        }
        map.put("dimensions", Arrays.asList("className", "score"));
        map.put("source", source);
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

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }
}
