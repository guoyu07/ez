package egox.ez.controller;

import egox.ez.bean.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Gavin on 14-1-15.
 */
@Controller
@RequestMapping("sys")
public class SysController extends AbstractController {

    @Autowired
    private HttpServletRequest request;

    private static final Logger logger = LoggerFactory.getLogger(SysController.class);


//    @RequestMapping(value = "resource", method = RequestMethod.GET)
//    public ModelAndView getAllUsers() {
//        return new ModelAndView("sys/resource");
//    }
}
