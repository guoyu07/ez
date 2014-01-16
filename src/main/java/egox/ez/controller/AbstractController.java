package egox.ez.controller;

import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gavin
 */
public class AbstractController {

    protected boolean wantJson(HttpServletRequest request) {
        return request.getRequestURI().endsWith(".json");
    }

}
