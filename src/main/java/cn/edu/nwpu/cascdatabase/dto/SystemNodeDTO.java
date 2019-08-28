package cn.edu.nwpu.cascdatabase.dto;

import cn.edu.nwpu.cascdatabase.domain.ModelNode;

import java.util.List;

/**
 * @ClassName SystemNodeDTO
 * @Author: wkx
 * @Date: 2019/7/12 09:08
 * @Version: v1.0
 * @Description: 系统节点数据传输对象
 */
public class SystemNodeDTO {
    private Integer id;

    private String text;//节点名称（NWPU-动力系统001）

    private String iconCls;//图标样式

    private List<ModelNodeDTO> children;//模型子节点

    public SystemNodeDTO(Integer id, String text, String iconCls, List<ModelNodeDTO> children) {
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

    public List<ModelNodeDTO> getChildren() {
        return children;
    }

    public void setChildren(List<ModelNodeDTO> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "SystemNode{" +
                "text='" + text + '\'' +
                ", iconCls='" + iconCls + '\'' +
                ", children=" + children +
                '}';
    }
}
