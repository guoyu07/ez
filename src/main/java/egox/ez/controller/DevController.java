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
@RequestMapping("dev")
public class DevController extends AbstractController {
    private static final Logger logger = LoggerFactory.getLogger(DevController.class);

    @RequestMapping(value = "json/format", method = RequestMethod.GET)
    public ModelAndView jsonFormat() {
        return new ModelAndView("dev/json/jsonFormat");
    }

    @RequestMapping(value = "json/request", method = RequestMethod.GET)
    public ModelAndView jsonRequest() {
        return new ModelAndView("dev/json/jsonRequest");
    }

}
