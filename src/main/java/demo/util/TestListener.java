package demo.util;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by xiaozhu
 * on 2017/6/15
 */

@WebListener
public class TestListener implements ServletRequestListener, ServletRequestAttributeListener {
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {// event 事件  request Destroyed 请求破坏
        HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
        System.out.println("requestDestroyed:" + request.getRequestURL());

    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {  //  request Initialized  请求初始化
        HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
        System.out.println("requestInitialized:" + request.getRequestURL());
    }

    @Override
    public void attributeAdded(ServletRequestAttributeEvent srae) {//  attribute Added  附加属性
        System.out.println("attributeAdded");
    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent srae) { // attribute Removed  删除属性
        System.out.println("attributeRemoved");
    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent srae) { //  attribute Replaced  属性代替
        System.out.println("attributeReplaced");
    }
}
