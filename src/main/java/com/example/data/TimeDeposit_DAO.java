package com.example.data;

import com.example.entity.DepositEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import java.util.List;

public class TimeDeposit_DAO {
    public static void Insert_TimeDeposit(DepositEntity timedepositEntity){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try {
            entityManager.persist(timedepositEntity);
            entityTransaction.commit();
        }
        catch (Exception e)
        {
            System.out.println(e);
            entityTransaction.rollback();
        }
        finally {
            entityManager.close();
        }
    }
    public static void Delete_TimeDeposit(DepositEntity timedepositEntity){

        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try {
            entityManager.remove(entityManager.merge(timedepositEntity));
            entityTransaction.commit();
            System.out.println("Da xoa thanh cong");
        }
        catch (Exception e)
        {
            System.out.println(e);
            entityTransaction.rollback();
        }
        finally {
            entityManager.close();
        }
    }
    public static void Update_TimeDeposit(DepositEntity timedepositEntity){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try {
            entityManager.merge(timedepositEntity);
            entityTransaction.commit();
        }
        catch (Exception e)
        {
            System.out.println(e);
            entityTransaction.rollback();
        }
        finally {
            entityManager.close();
        }
    }
    public static DepositEntity getTimeDeposit(String account_number){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        String query = "select t from DepositEntity t where t.accountSrc =: val";
        TypedQuery<DepositEntity> q = entityManager.createQuery(query, DepositEntity.class);
        q.setParameter("val", account_number);

        try {
            DepositEntity account = q.getSingleResult();
            return account;
        }
        catch (NoResultException e){
            return null;
        }
        finally {
            entityManager.close();
        }
    }
    public static List<DepositEntity> listTimedeposit(){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        String query = "select t from DepositEntity t";
        TypedQuery<DepositEntity> q = entityManager.createQuery(query, DepositEntity.class);

        try {
            List<DepositEntity> list = q.getResultList();
            return list;
        }
        catch (NoResultException e){
            return null;
        }
        finally {
            entityManager.close();
        }
    }
}
