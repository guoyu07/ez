package egox.ez.controller;

import egox.ez.bean.User;
import egox.ez.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Gavin <egox.vip@gmail.com>
 */
@Controller
public class UserController extends AbstractController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    protected HttpServletRequest request;

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public List<User> getAllUsers() {
        if (wantJson(request)) {
            return userService.getAllUsers();
        }
        return null;
    }

    @RequestMapping(value = "user/{userId}", method = RequestMethod.GET)
    public User getUserById(@PathVariable("userId") Long userId) {
        logger.error("getUserById method run! ");
        return userService.getUserById(userId);
    }

}
