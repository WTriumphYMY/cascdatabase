package cn.edu.nwpu.cascdatabase.dto;

/**
 * @ClassName AssembleMatchingDTO
 * @Author: wkx
 * @Date: 2019/7/5 21:53
 * @Version: v1.0
 * @Description: 组合件配套表数据传输对象
 */
public class AssembleMatchingDTO {
    private Integer pkId;
    private String name;
    private String alias;
    private int amount;
    private String productCode;
    private String remark;
    private String link;

    public AssembleMatchingDTO(Integer pkId, String name, String alias, String productCode, String remark, String link) {
        this.pkId = pkId;
        this.name = name;
        this.alias = alias;
        this.productCode = productCode;
        this.remark = remark;
        this.link = link;
    }

    public Integer getPkId() {
        return pkId;
    }

    public void setPkId(Integer pkId) {
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

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
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
}
