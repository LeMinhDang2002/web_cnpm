package com.example.data;

import com.example.entity.TransactionAccountEntity;
import com.example.entity.TransferEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;

public class Transfer_DAO {
    public static int check_Transaction_Account(String phone_number){
        int result = 0;

        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();

        String query = "Select t from TransactionAccountEntity t where t.accountNumber =: val";
        TypedQuery<TransactionAccountEntity> q = entityManager.createQuery(query, TransactionAccountEntity.class);
        q.setParameter("val",phone_number);

        TransactionAccountEntity transactionAccountEntity = q.getSingleResult();
        if(transactionAccountEntity == null){
            System.out.println("Khong ton tai tai khoan");
        }
        else {
            System.out.println(transactionAccountEntity.getAccountNumber());
            result = 1;
        }
        return result;
    }
    public static void
    Insert_Transfer(TransferEntity transfer){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try{
            entityManager.persist(transfer);
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
    public static void Update_Transfer(TransferEntity transfer){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();


        entityTransaction.begin();
        try {
            entityManager.merge(transfer);
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
    public static void Delete_Transfer(TransferEntity transfer){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();

        entityTransaction.begin();
        try{
            entityManager.remove(entityManager.merge(transfer));
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
    public static List<TransferEntity> List_Transfer(){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        String query = "select t from TransferEntity t";
        TypedQuery<TransferEntity> q =entityManager.createQuery(query, TransferEntity.class);

        List<TransferEntity> list ;
        try
        {
            list = q.getResultList();
            if(list == null || list.isEmpty()){
                list = null;
            }
        }
        finally {
            entityManager.close();
        }
        return list;
    }
}
