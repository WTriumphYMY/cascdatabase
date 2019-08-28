package cn.edu.nwpu.cascdatabase.domain;

import javax.persistence.*;

/**
 * @ClassName AssembleMatching
 * @Author: wkx
 * @Date: 2019/7/3 11:01
 * @Version: v1.0
 * @Description: 系统中组合件配套表实体类
 */
@Entity
@Table(name = "tb_assemblematching")
public class AssembleMatching {

    @Id()
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "pk_id")
    private Integer pkId;
    @Column(name = "name")
    private String name;
    @Column(name = "alias")
    private String alias;
    @Column(name = "product_code")
    private String productCode;
    @Column(name = "remark")
    private String remark;
    @Column(name = "link")
    private String link;

    public Integer getPkId() {
        return pkId;
    }

    public void setPkId(int pkId) {
        this.pkId = pkId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "AssembleMatching{" +
                "pkId=" + pkId +
                ", name='" + name + '\'' +
                ", alias='" + alias + '\'' +
                ", productCode='" + productCode + '\'' +
                ", remark='" + remark + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
