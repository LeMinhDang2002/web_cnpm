package com.example.data;

import com.example.entity.TransactionAccountEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import java.util.List;

public class TransactionAccount_DAO {

    public static void Insert_TransactionAccount(TransactionAccountEntity transactionAccountEntity){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try{
            entityManager.persist(transactionAccountEntity);
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

    public static void Delete_TransactionAccount(TransactionAccountEntity transactionAccountEntity)
    {
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();
        System.out.println(transactionAccountEntity);

        entityTransaction.begin();
        try {
            entityManager.remove(entityManager.merge(transactionAccountEntity));
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

    public static void Update_Inc_TransactonAccount(TransactionAccountEntity transactionAccountEntity){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try{
            entityManager.merge(transactionAccountEntity);
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
    public static void Update_Des_TransactonAccount(TransactionAccountEntity transactionAccountEntity){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try{
            entityManager.merge(transactionAccountEntity);
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
    public static TransactionAccountEntity getTransactionAccountEntity(String account_number){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        String query = "select t from TransactionAccountEntity t where t.accountNumber =: val";
        TypedQuery<TransactionAccountEntity> q = entityManager.createQuery(query, TransactionAccountEntity.class);
        q.setParameter("val", account_number);

        try {
            TransactionAccountEntity account = q.getSingleResult();
            return account;
        }
        catch (NoResultException e){
            return null;
        }
        finally {
            entityManager.close();
        }

    }
    public static List<TransactionAccountEntity> listTransactionAccountEntity(){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        String query = "select t from TransactionAccountEntity t";
        TypedQuery<TransactionAccountEntity> q = entityManager.createQuery(query, TransactionAccountEntity.class);

        try {
            List<TransactionAccountEntity> list = q.getResultList();
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
