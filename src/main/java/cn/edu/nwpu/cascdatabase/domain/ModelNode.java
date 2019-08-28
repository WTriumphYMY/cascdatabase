package cn.edu.nwpu.cascdatabase.domain;

import java.util.List;

/**
 * @ClassName ModelNode
 * @Author: wkx
 * @Date: 2019/7/10 15:16
 * @Version: v1.0
 * @Description: 型号树节点实体类，如NWPU-001
 */
public class ModelNode {

    private Integer pkId;

    private String text;//节点名称（NWPU-001）

    private String iconCls;//图标样式

    private Integer parentId;//父级系统Node的id


    public Integer getPkId() {
        return pkId;
    }

    public void setPkId(Integer pkId) {
        this.pkId = pkId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    @Override
    public String toString() {
        return "ModelNode{" +
                "pkId=" + pkId +
                ", text='" + text + '\'' +
                ", iconCls='" + iconCls + '\'' +
                ", parentId=" + parentId +
                '}';
    }
}
