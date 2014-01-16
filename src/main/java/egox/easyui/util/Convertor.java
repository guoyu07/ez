package egox.easyui.util;

import egox.easyui.Tree;
import egox.ez.bean.Resource;

/**
 * Created by Gavin on 14-1-16.
 */
public class Convertor {

    public static Tree convertToTree(Resource resource) {
        Tree tree = new Tree();
        tree.setId("" + resource.getId());

        tree.setIconCls(resource.getIcon());
        tree.setPid("" + resource.getParentId());
        tree.setText(resource.getName());
        // TODO add more for tree
        return tree;
    }
}
