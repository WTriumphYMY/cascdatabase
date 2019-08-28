package cn.edu.nwpu.cascdatabase.dto;

/**
 * @ClassName TableNodeDTO
 * @Author: wkx
 * @Date: 2019/7/10 15:10
 * @Version: v1.0
 * @Description: 各个表的实体类
 */
public class TableNodeDTO {

    private Integer id;

    private String text; //表名

    private String url;//点击后的链接

    private String iconCls; //图标

    public TableNodeDTO(Integer id, String text, String url, String iconCls) {
        this.id = id;
        this.text = text;
        this.url = url;
        this.iconCls = iconCls;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    @Override
    public String toString() {
        return "TableNodeDTO{" +
                "text='" + text + '\'' +
                ", url='" + url + '\'' +
                ", iconCls='" + iconCls + '\'' +
                '}';
    }
}
