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
 * @author xxx
 * @date
 */
public class EchartsPersonSelfCourseTotalAction extends ActionSupport {

    private String result;

    @Autowired
    @Qualifier("echartsDao")
    private EchartsDao echartsDao;

    private String stuid;

    private String courseid;

    /**
     *
     */
    private static final long serialVersionUID = 8527569411000570082L;

    @Override
    public String execute() throws Exception {
        List<List<Object>> avgByYearAndCourseids = echartsDao.EchartsPersonSelfTotalCourse(stuid);
        Map<String, Object> map = new HashMap<String, Object>();
        List<Object> keys = new ArrayList<>();
        List<Object> values = new ArrayList<>();
        for (int i = 0; i < avgByYearAndCourseids.size(); i++) {
            List<Object> vo = avgByYearAndCourseids.get(i);
            keys.add(vo.get(0));
            values.add(new Double(vo.get(1).toString()));
        }
        map.put("keys", keys);
        map.put("values", values);
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

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }

    public String getStuid() {
        return stuid;
    }

    public void setStuid(String stuid) {
        this.stuid = stuid;
    }
}
