package egox.ez.service;

import egox.ez.bean.Resource;
import egox.ez.ui.Menu;
import java.util.List;

/**
 *
 * @author Gavin
 */
public interface ResourceService {
    List<Resource> getResourcesByUserId(Long id);
    
    Resource getResourceById(Long id);
    
    List<Resource> getAllResources();
    
    public List<Menu> convetToMenus(List<Resource> resources);
}
