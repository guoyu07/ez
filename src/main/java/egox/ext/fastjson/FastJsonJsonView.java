package egox.ext.fastjson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class FastJsonJsonView extends com.alibaba.fastjson.support.spring.FastJsonJsonView {

    @Override
    protected void prepareResponse(HttpServletRequest request, HttpServletResponse response) {
        super.prepareResponse(request, response);
        response.setContentType("text/html;charset=UTF-8");
    }

    /**
     * modelMap中只有一个值的情况
     * @param model
     * @return
     */
    @Override
    protected Object filterModel(Map<String, Object> model) {
        Map<?, ?> result = (Map<?, ?>) super.filterModel(model);
        if (result.size() == 1) {
            return result.values().iterator().next();
        } else {
            return result;
        }
    }
}
