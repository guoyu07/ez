package egox.ez.controller;

import egox.ez.bean.Resource;
import egox.ez.service.ResourceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.PathParam;
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

    @RequestMapping(value = "resource/move", method = RequestMethod.POST)
    public List<Resource> move(@PathParam("sourceId")Long sourceId, @PathParam("targetId")Long targetId, @PathParam("point")String point) {
        Resource source = resourceService.getResourceById(sourceId);
        Resource target = resourceService.getResourceById(targetId);
        if ("top".equalsIgnoreCase(point)) {
            source.setParentId(target.getParentId());
            source.setParentIds(target.getParentIds());
            source.setWeight(target.getWeight() - 1);
        } else if ("bottom".equalsIgnoreCase(point)) {
            source.setParentId(target.getParentId());
            source.setParentIds(target.getParentIds());
            source.setWeight(target.getWeight() + 1);
        } else {
            // append
            source.setParentId(targetId);
            source.setParentIds(target.getParentIds() + "/" + targetId);
        }
        resourceService.save(source);
        if (wantJson(request)) {
            return resourceService.getAllResources();
        }
        return null;
    }

}
