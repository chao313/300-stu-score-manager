/**
 *
 */
package com.xscj.delete.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.service.CoursePlan;

/**
 * @author xxx
 * @date
 * 课程删除按钮触发的请求
 */
public class CourseDeleteAction extends ActionSupport {

    /**
     *
     */
    private static final long serialVersionUID = 1422711079096982883L;

    @Autowired
    @Qualifier("coursePlanImpl")
    private CoursePlan coursePlan;

    private String[] courseDel; //被选的课程编号数组

    public String[] getCourseDel() {
        return courseDel;
    }

    public void setCourseDel(String[] courseDel) {
        this.courseDel = courseDel;
    }

    @Override
    public String execute() throws Exception {
        if (courseDel == null) {

        } else {
            coursePlan.deleteChoiceCourses(courseDel); //模拟删除操作设置删除标志
        }
        return SUCCESS;
    }

}
