/**
 *
 */
package com.xscj.echarts;

import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONObject;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/**
 * @author xxx
 * @date
 *
 */
public class EchartsAction extends ActionSupport {

    private String result;

    private String type;//数据结构类型



    /**
     *
     */
    private static final long serialVersionUID = 8527569411000570082L;

    @Override
    public String execute() throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        Object[][] source = {
                {" 1 ", 41, "Engineer", 316, "2011-02-12"},
                {" 2 ", 41, "Engineer", 315, "2011-02-12"},
                {" 3 ", 41, "Engineer", 314, "2011-02-12"}};
        map.put("dimensions", Arrays.asList("name", "age", "profession", "score", "date"));
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
