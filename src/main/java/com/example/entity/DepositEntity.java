package com.example.entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "deposit", schema = "public", catalog = "cnpm_web_database")
public class DepositEntity {
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
    @Column(name = "rolled_over")
    private String rolledOver;
    @Basic
    @Column(name = "interest")
    private Double interest;
    @Basic
    @Column(name = "penalty_interest")
    private Double penaltyInterest;
    @Basic
    @Column(name = "maturity_date")
    private Timestamp maturityDate;
    @Basic
    @Column(name = "end_date")
    private Timestamp endDate;
    @Basic
    @Column(name = "account_src")
    private String accountSrc;
    @Basic
    @Column(name = "account_dist")
    private String accountDist;

    public DepositEntity(int id, Timestamp createTime, String state, String name, Double amount, String rolledOver, Double interest, Double penaltyInterest, Timestamp maturityDate, Timestamp endDate, String accountSrc, String accountDist) {
        this.id = id;
        this.createTime = createTime;
        this.state = state;
        this.name = name;
        this.amount = amount;
        this.rolledOver = rolledOver;
        this.interest = interest;
        this.penaltyInterest = penaltyInterest;
        this.maturityDate = maturityDate;
        this.endDate = endDate;
        this.accountSrc = accountSrc;
        this.accountDist = accountDist;
    }

    public DepositEntity() {
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

    public String getRolledOver() {
        return rolledOver;
    }

    public void setRolledOver(String rolledOver) {
        this.rolledOver = rolledOver;
    }

    public Double getInterest() {
        return interest;
    }

    public void setInterest(Double interest) {
        this.interest = interest;
    }

    public Double getPenaltyInterest() {
        return penaltyInterest;
    }

    public void setPenaltyInterest(Double penaltyInterest) {
        this.penaltyInterest = penaltyInterest;
    }

    public Timestamp getMaturityDate() {
        return maturityDate;
    }

    public void setMaturityDate(Timestamp maturityDate) {
        this.maturityDate = maturityDate;
    }

    public Timestamp getEndDate() {
        return endDate;
    }

    public void setEndDate(Timestamp endDate) {
        this.endDate = endDate;
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

        DepositEntity that = (DepositEntity) o;

        if (id != that.id) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (state != null ? !state.equals(that.state) : that.state != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (amount != null ? !amount.equals(that.amount) : that.amount != null) return false;
        if (rolledOver != null ? !rolledOver.equals(that.rolledOver) : that.rolledOver != null) return false;
        if (interest != null ? !interest.equals(that.interest) : that.interest != null) return false;
        if (penaltyInterest != null ? !penaltyInterest.equals(that.penaltyInterest) : that.penaltyInterest != null)
            return false;
        if (maturityDate != null ? !maturityDate.equals(that.maturityDate) : that.maturityDate != null) return false;
        if (endDate != null ? !endDate.equals(that.endDate) : that.endDate != null) return false;
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
        result = 31 * result + (rolledOver != null ? rolledOver.hashCode() : 0);
        result = 31 * result + (interest != null ? interest.hashCode() : 0);
        result = 31 * result + (penaltyInterest != null ? penaltyInterest.hashCode() : 0);
        result = 31 * result + (maturityDate != null ? maturityDate.hashCode() : 0);
        result = 31 * result + (endDate != null ? endDate.hashCode() : 0);
        result = 31 * result + (accountSrc != null ? accountSrc.hashCode() : 0);
        result = 31 * result + (accountDist != null ? accountDist.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "DepositEntity{" +
                "id=" + id +
                ", createTime=" + createTime +
                ", state='" + state + '\'' +
                ", name='" + name + '\'' +
                ", amount=" + amount +
                ", rolledOver='" + rolledOver + '\'' +
                ", interest=" + interest +
                ", penaltyInterest=" + penaltyInterest +
                ", maturityDate=" + maturityDate +
                ", endDate=" + endDate +
                ", accountSrc='" + accountSrc + '\'' +
                ", accountDist='" + accountDist + '\'' +
                '}';
    }
}
