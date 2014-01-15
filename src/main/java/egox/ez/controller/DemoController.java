package egox.ez.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Gavin on 14-1-13.
 */
@Controller
public class DemoController extends AbstractController {
    private static final Logger logger = LoggerFactory.getLogger(DemoController.class);

    @RequestMapping(value = "icon", method = RequestMethod.GET)
    public ModelAndView icon() {
        return new ModelAndView("demo/icon");
    }

    @RequestMapping(value = "ueditor", method = RequestMethod.GET)
    public ModelAndView ueditor() {
        return new ModelAndView("demo/ueditor");
    }
}
