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
@RequestMapping("demo")
public class DemoController extends AbstractController {
    private static final Logger logger = LoggerFactory.getLogger(DemoController.class);

    @RequestMapping(value = "font-awesome", method = RequestMethod.GET)
    public ModelAndView fontAwesome() {
        return new ModelAndView("demo/font-awesome");
    }

    @RequestMapping(value = "ueditor", method = RequestMethod.GET)
    public ModelAndView uEditor() {
        return new ModelAndView("demo/ueditor");
    }
}
