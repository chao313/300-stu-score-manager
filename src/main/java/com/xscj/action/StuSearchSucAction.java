/**
 *
 */
package com.xscj.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.domain.SimpleStudent;
import com.xscj.service.StuService;
import com.xscj.util.Util;

/**
 * @author xxx
 * @date
 */
public class StuSearchSucAction extends ActionSupport {

    /**
     *
     */
    private static final long serialVersionUID = 3892923582008036390L;

    @Autowired
    @Qualifier("stuServiceImpl")
    private StuService stuService;

    private String stuXueHao;

    private SimpleStudent simpleStudent;


    @Override
    public String execute() throws Exception {
        if (stuXueHao == null || stuXueHao.trim().equals("") || !Util.isNumeric(stuXueHao) || stuService.isExisits(Integer.parseInt(stuXueHao)) == 0) {
            return INPUT;
        }
        simpleStudent = stuService.querySimpleStudent(Integer.parseInt(stuXueHao));
        return SUCCESS;
    }

    @Override
    public void validate() {

    }

    public String getStuXueHao() {
        return stuXueHao;
    }

    public void setStuXueHao(String stuXueHao) {
        this.stuXueHao = stuXueHao;
    }

    public SimpleStudent getSimpleStudent() {
        return simpleStudent;
    }

    public void setSimpleStudent(SimpleStudent simpleStudent) {
        this.simpleStudent = simpleStudent;
    }
}
