package demo.util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by xiaozhu
 * on 2017/6/14
 * filter 过滤器  encoding 编码
 * 可以使用中文名字
 */
@WebFilter(urlPatterns = "/*")
public class EncodingFilter  implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // initialization 初始化
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        // chain 链
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {
    //destroy  销毁
    }
}
