package egox.easyui;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Gavin on 14-1-16.
 */
public class Datagrid implements Serializable {
    private Long total;
    private List rows = new ArrayList();

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }
}
