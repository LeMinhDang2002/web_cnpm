package com.example.entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "transfer", schema = "public", catalog = "cnpm_web_database")
public class TransferEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "create_time")
    private Timestamp createTime;
    @Basic
    @Column(name = "state")
    private String state;
    @Basic
    @Column(name = "name")
    private String name;
    @Basic
    @Column(name = "amount")
    private Double amount;
    @Basic
    @Column(name = "content")
    private String content;
    @Basic
    @Column(name = "fee")
    private Double fee;
    @Basic
    @Column(name = "charge_option")
    private String chargeOption;
    @Basic
    @Column(name = "account_src")
    private String accountSrc;
    @Basic
    @Column(name = "account_dist")
    private String accountDist;

    public TransferEntity(int id, Timestamp createTime, String state, String name, Double amount, String content, Double fee, String chargeOption, String accountSrc, String accountDist) {
        this.id = id;
        this.createTime = createTime;
        this.state = state;
        this.name = name;
        this.amount = amount;
        this.content = content;
        this.fee = fee;
        this.chargeOption = chargeOption;
        this.accountSrc = accountSrc;
        this.accountDist = accountDist;
    }

    public TransferEntity() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Double getFee() {
        return fee;
    }

    public void setFee(Double fee) {
        this.fee = fee;
    }

    public String getChargeOption() {
        return chargeOption;
    }

    public void setChargeOption(String chargeOption) {
        this.chargeOption = chargeOption;
    }

    public String getAccountSrc() {
        return accountSrc;
    }

    public void setAccountSrc(String accountSrc) {
        this.accountSrc = accountSrc;
    }

    public String getAccountDist() {
        return accountDist;
    }

    public void setAccountDist(String accountDist) {
        this.accountDist = accountDist;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TransferEntity that = (TransferEntity) o;

        if (id != that.id) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (state != null ? !state.equals(that.state) : that.state != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (amount != null ? !amount.equals(that.amount) : that.amount != null) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;
        if (fee != null ? !fee.equals(that.fee) : that.fee != null) return false;
        if (chargeOption != null ? !chargeOption.equals(that.chargeOption) : that.chargeOption != null) return false;
        if (accountSrc != null ? !accountSrc.equals(that.accountSrc) : that.accountSrc != null) return false;
        if (accountDist != null ? !accountDist.equals(that.accountDist) : that.accountDist != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (state != null ? state.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (fee != null ? fee.hashCode() : 0);
        result = 31 * result + (chargeOption != null ? chargeOption.hashCode() : 0);
        result = 31 * result + (accountSrc != null ? accountSrc.hashCode() : 0);
        result = 31 * result + (accountDist != null ? accountDist.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "TransferEntity{" +
                "id=" + id +
                ", createTime=" + createTime +
                ", state='" + state + '\'' +
                ", name='" + name + '\'' +
                ", amount=" + amount +
                ", content='" + content + '\'' +
                ", fee=" + fee +
                ", chargeOption='" + chargeOption + '\'' +
                ", accountSrc='" + accountSrc + '\'' +
                ", accountDist='" + accountDist + '\'' +
                '}';
    }
}
