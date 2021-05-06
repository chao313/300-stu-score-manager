/**
 *
 */
package com.xscj.util;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * @author xxx
 * @date
 */
public class AuthorityInterceptor extends AbstractInterceptor {

    /**
     *
     */
    private static final long serialVersionUID = -2855649174584099434L;

    /* (non-Javadoc)
     * @see com.opensymphony.xwork2.interceptor.AbstractInterceptor#intercept(com.opensymphony.xwork2.ActionInvocation)
     */
    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        ActionContext ctx = invocation.getInvocationContext();
        String userName = (String) ctx.getSession().get("userName");
        String userRole = (String) ctx.getSession().get("userRole");
        if (userName != null && userRole.equals("管理员")) {
            return invocation.invoke();
        }
        ((ActionSupport) invocation.getAction()).addActionError("您还没有登录，系统拒绝了您的访问请求");
        return Action.LOGIN;
    }

}
