package egox.ez.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Gavin on 14-1-15.
 */
@Controller
public class CommonController extends AbstractController {

    @RequestMapping(value = "error/500", method = RequestMethod.GET)
    public ModelAndView error500() {
        return new ModelAndView("common/error/500");
    }

    @RequestMapping(value = "error/404", method = RequestMethod.GET)
    public ModelAndView error404() {
        return new ModelAndView("common/error/404");
    }
}
