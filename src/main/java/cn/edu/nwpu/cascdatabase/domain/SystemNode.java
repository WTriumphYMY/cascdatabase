package cn.edu.nwpu.cascdatabase.domain;

import javax.persistence.*;
import java.util.List;

/**
 * @ClassName SystemNode
 * @Author: wkx
 * @Date: 2019/7/10 15:22
 * @Version: v1.0
 * @Description: 节点系统实体类
 */
@Entity
@Table()
public class SystemNode {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column
    private Integer pkId;

    @Column
    private String text;//节点名称（NWPU-动力系统001）

    @Column
    private String description; //系统简介

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

    @Override
    public String toString() {
        return "SystemNode{" +
                "pkId=" + pkId +
                ", text='" + text + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
