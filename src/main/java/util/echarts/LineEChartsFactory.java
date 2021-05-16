package util.echarts;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import lombok.Data;
import org.junit.Test;

import java.util.Arrays;
import java.util.Collection;

/**
 * 基本折线图
 * <pre>
 *     option = {
 *     xAxis: {
 *         type: 'category',
 *         data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
 *     },
 *     yAxis: {
 *         type: 'value'
 *     },
 *     series: [{
 *         data: [150, 230, 224, 218, 135, 147, 260],
 *         type: 'line'
 *     }]
 * };
 * </pre>
 */
@Data
public class LineEChartsFactory {
    @Data
    public class XAxis {
        String type = "category";
        Collection<String> data;
    }

    @Data
    public class Series {
        String type = "line";
        Collection<Long> data;
    }

    @Data
    public class YAxis {
        String type = "value";
    }

    private String text;
    private XAxis xAxis = new XAxis();
    private YAxis yAxis = new YAxis();
    private Series series = new Series();

    public static LineEChartsFactory builder() {
        LineEChartsFactory chartsVo = new LineEChartsFactory();
        return chartsVo;
    }

    /**
     * 添加XAxisData
     *
     * @param data
     * @return
     */
    public LineEChartsFactory builderXAxisData(Collection<String> data) {
        this.xAxis.data = data;
        return this;
    }

    /**
     * 添加seriesData(连续数据)
     */
    public LineEChartsFactory builderSeriesData(Collection<Long> data) {
        this.series.data = data;
        return this;
    }

    /**
     * 生成json对象
     *
     * @return
     */
    public JSONObject toJson() {
        String JsonObject = new Gson().toJson(this);
        JSONObject result = JSONObject.parseObject(JsonObject);
        return result;
    }

    /**
     * <pre>
     * {
     *     "xAxis":{
     *         "type":"category",
     *         "data":[
     *             "星期一",
     *             "星期二",
     *             "星期三"
     *         ]
     *     },
     *     "yAxis":{
     *         "type":"value"
     *     },
     *     "series":{
     *         "type":"line",
     *         "data":[
     *             100,
     *             200,
     *             30
     *         ]
     *     }
     * }
     * </pre>
     */
    @Test
    public void test() {
        LineEChartsFactory builder = LineEChartsFactory.builder();
        builder.builderXAxisData(Arrays.asList("星期一", "星期二", "星期三"));//添加x轴数据
        builder.builderSeriesData(Arrays.asList(100L, 200L, 30L));//添加y轴数据
        System.out.println(builder.toJson());
    }

}


