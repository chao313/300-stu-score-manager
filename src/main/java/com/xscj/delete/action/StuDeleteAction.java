/**
 *
 */
package com.xscj.delete.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;
import com.xscj.service.StuService;

/**
 * @author xxx
 * @date
 */
public class StuDeleteAction extends ActionSupport {

    /**
     *
     */
    private static final long serialVersionUID = 7195728866425340378L;
    @Autowired
    @Qualifier("stuServiceImpl")
    private StuService stuService;

    private int xuehao;

    public int getXuehao() {
        return xuehao;
    }

    public void setXuehao(int xuehao) {
        this.xuehao = xuehao;
    }

    @Override
    public String execute() throws Exception {
        stuService.deleteStuByXueHao(xuehao);
        return SUCCESS;
    }

}
