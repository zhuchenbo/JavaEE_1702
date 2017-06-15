package demo.util;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by xiaozhu
 * on 2017/6/15
 */

@WebListener
public class TestListener implements ServletRequestListener {
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {// event 事件  request Destroyed 请求破坏
        System.out.println("requestDestroyed");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {  //  request Initialized  请求初始化
         System.out.println("requestInitialized");
    }
}
