package egox.easyui;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Gavin on 14-1-16.
 */
public class Tree implements Serializable {
    private String id;
    private String text;
    private String state = "open";// open,closed
    private boolean checked = false;
    private Attributes attributes;
    private List<Tree> children;
    private String iconCls;

    //若支持平滑数据格式，不用指定children,通过pid属性来指示其父级节点.
    private String pid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public Attributes getAttributes() {
        return attributes;
    }

    public void setAttributes(Attributes attributes) {
        this.attributes = attributes;
    }

    public List<Tree> getChildren() {
        return children;
    }

    public void setChildren(List<Tree> children) {
        this.children = children;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    class Attributes implements Serializable {
        private String url;
        private boolean iniframe = true;

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public boolean isIniframe() {
            return iniframe;
        }

        public void setIniframe(boolean iniframe) {
            this.iniframe = iniframe;
        }
    }
}
