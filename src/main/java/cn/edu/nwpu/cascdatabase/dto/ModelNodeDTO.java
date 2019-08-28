package cn.edu.nwpu.cascdatabase.dto;

import java.util.List;

/**
 * @ClassName ModelNodeDTO
 * @Author: wkx
 * @Date: 2019/7/12 09:50
 * @Version: v1.0
 * @Description: 型号数据传输对象
 */
public class ModelNodeDTO {
    private Integer id;

    private String text;//节点名称（NWPU-001）

    private String iconCls;//图标样式

    private List<TableNodeDTO> children;//表的子节点

    public ModelNodeDTO() {
    }

    public ModelNodeDTO(Integer id, String text, String iconCls, List<TableNodeDTO> children) {
        this.id = id;
        this.text = text;
        this.iconCls = iconCls;
        this.children = children;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public List<TableNodeDTO> getChildren() {
        return children;
    }

    public void setChildren(List<TableNodeDTO> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "ModelNode{" +
                "text='" + text + '\'' +
                ", iconCls='" + iconCls + '\'' +
                ", children=" + children +
                '}';
    }
}
