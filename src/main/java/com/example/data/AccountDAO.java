package com.example.data;

import com.example.entity.AccountEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.List;
import java.util.regex.Pattern;

public class AccountDAO {
    @Transactional
    public static List<AccountEntity> getAccount()
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        String qString = "SELECT a from AccountEntity a";

        TypedQuery<AccountEntity> q = em.createQuery(qString, AccountEntity.class);
        List<AccountEntity> accountEntities;

        try {
            accountEntities = q.getResultList();
            if (accountEntities == null || accountEntities.isEmpty())
                accountEntities = null;
        } finally {
            em.close();
        }

        return accountEntities;
    }

    public static AccountEntity getAccount(String number_phone){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();

        String qString = "SELECT a from AccountEntity a where a.numberPhone =: number_phone";
        TypedQuery<AccountEntity> q = entityManager.createQuery(qString, AccountEntity.class);
        q.setParameter("number_phone", number_phone);
        try {
            AccountEntity account  = q.getSingleResult();
            return account;
        }
        catch (NoResultException e)
        {
            return null;
        }
        finally {
            entityManager.close();
        }
    }

    public static void Insert_Account(AccountEntity account){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try {
            entityManager.persist(account);
            entityTransaction.commit();
        }
        catch (Exception e){
            System.out.println(e);
            entityTransaction.rollback();
        }
        finally {
            entityManager.close();
        }
    }
    public static void Delete_Account(AccountEntity account){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try {
            entityManager.remove(entityManager.merge(account));
            entityTransaction.commit();
        }
        catch (Exception e){
            System.out.println(e);
            entityTransaction.rollback();
        }
        finally {
            entityManager.close();
        }
    }
    public static void Update_Account(AccountEntity account){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try {
            entityManager.merge(account);
            entityTransaction.commit();
        }
        catch (Exception e){
            System.out.println(e);
            entityTransaction.rollback();
        }
        finally {
            entityManager.close();
        }
    }
    public static boolean check_Acc_Pass(String account, String password){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();

        String query = "select a from AccountEntity a where a.numberPhone =: account and a.password =: password";
        TypedQuery<AccountEntity> q = entityManager.createQuery(query, AccountEntity.class);
        q.setParameter("account", account);
        q.setParameter("password", password);

        try {
            AccountEntity acc = q.getSingleResult();
            if(acc == null){
                return false;
            }
            else {
                return true;
            }
        }
        catch (NoResultException e){
            System.out.println(e);
            return false;
        }
        finally {
            entityManager.close();
        }
    }
    public static boolean check_exists_Number_Phone(String Number_Phone){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();

        String query = "select a from AccountEntity a where a.numberPhone =: number_phone";
        TypedQuery<AccountEntity> q = entityManager.createQuery(query, AccountEntity.class);
        q.setParameter("number_phone", Number_Phone);

        try {
            AccountEntity acc = q.getSingleResult();
            if(acc == null){
                return false;
            }
            else {
                return true;
            }
        }
        catch (NoResultException e){
            System.out.println(e);
            return false;
        }
        finally {
            entityManager.close();
        }
    }public static boolean check_exists_Email(String email){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();

        String query = "select a from AccountEntity a where a.email =: email";
        TypedQuery<AccountEntity> q = entityManager.createQuery(query, AccountEntity.class);
        q.setParameter("email", email);

        try {
            AccountEntity acc = q.getSingleResult();
            if(acc == null){
                return false;
            }
            else {
                return true;
            }
        }
        catch (NoResultException e){
            System.out.println(e);
            System.out.println("?");
            return false;
        }
        finally {
            entityManager.close();
        }
    }
    public static boolean isValid(String email)
    {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
                "[a-zA-Z0-9_+&*-]+)*@" +
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                "A-Z]{2,7}$";

        Pattern pat = Pattern.compile(emailRegex);
        if (email == null)
            return false;
        return pat.matcher(email).matches();
    }
}
