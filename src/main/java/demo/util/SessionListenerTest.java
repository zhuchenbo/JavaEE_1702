package demo.util;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Created by xiaozhu
 * on 2017/6/15
 */
@WebListener
public class SessionListenerTest implements HttpSessionListener,HttpSessionAttributeListener{
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        System.out.println("sessionCreated"+se.getSession().getId());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println("sessionDestroyed"+se.getSession().getId());
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println("attributeAdded: " + event.getName() + ", " + event.getValue());

    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        System.out.println("attributeRemoved: " + event.getName() + ", " + event.getValue());

    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println("attributeReplaced: " + event.getName() + ", " + event.getValue());

    }
}
