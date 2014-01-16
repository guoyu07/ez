package egox.ez.controller;

import egox.ez.bean.Resource;
import egox.ez.service.ResourceService;
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
 * @author Gavin <egox.vip@gmail.com>
 */
@Controller
@RequestMapping("sys")
public class ResourceController extends AbstractController {

    /**
     * logger
     */
    private static final Logger logger = LoggerFactory.getLogger(ResourceController.class);

    @Autowired
    private ResourceService resourceService;
    @Autowired
    private HttpServletRequest request;

    @RequestMapping(value = "resource", method = RequestMethod.GET)
    public List<Resource> getAllUsers() {
        if (wantJson(request)) {
            return resourceService.getAllResources();
        }
        return null;
    }

}
