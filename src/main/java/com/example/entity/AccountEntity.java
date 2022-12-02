package com.example.entity;

import javax.persistence.*;

@Entity
@Table(name = "account", schema = "public", catalog = "cnpm_web_database")
public class AccountEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "firstname")
    private String firstname;
    @Basic
    @Column(name = "lastname")
    private String lastname;
    @Basic
    @Column(name = "address")
    private String address;
    @Basic
    @Column(name = "dob")
    private String dob;
    @Basic
    @Column(name = "number_phone")
    private String numberPhone;
    @Basic
    @Column(name = "email")
    private String email;
    @Basic
    @Column(name = "password")
    private String password;
    @Basic
    @Column(name = "identify")
    private String identify;

    public AccountEntity(int id, String firstname, String lastname, String address, String dob, String numberPhone, String email, String password, String identify) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.dob = dob;
        this.numberPhone = numberPhone;
        this.email = email;
        this.password = password;
        this.identify = identify;
    }

    public AccountEntity() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdentify() {
        return identify;
    }

    public void setIdentify(String identify) {
        this.identify = identify;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AccountEntity account = (AccountEntity) o;

        if (id != account.id) return false;
        if (firstname != null ? !firstname.equals(account.firstname) : account.firstname != null) return false;
        if (lastname != null ? !lastname.equals(account.lastname) : account.lastname != null) return false;
        if (address != null ? !address.equals(account.address) : account.address != null) return false;
        if (dob != null ? !dob.equals(account.dob) : account.dob != null) return false;
        if (numberPhone != null ? !numberPhone.equals(account.numberPhone) : account.numberPhone != null) return false;
        if (email != null ? !email.equals(account.email) : account.email != null) return false;
        if (password != null ? !password.equals(account.password) : account.password != null) return false;
        if (identify != null ? !identify.equals(account.identify) : account.identify != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (firstname != null ? firstname.hashCode() : 0);
        result = 31 * result + (lastname != null ? lastname.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (dob != null ? dob.hashCode() : 0);
        result = 31 * result + (numberPhone != null ? numberPhone.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (identify != null ? identify.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "AccountEntity{" +
                "id=" + id +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", address='" + address + '\'' +
                ", dob='" + dob + '\'' +
                ", numberPhone='" + numberPhone + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", identify='" + identify + '\'' +
                '}';
    }
}
