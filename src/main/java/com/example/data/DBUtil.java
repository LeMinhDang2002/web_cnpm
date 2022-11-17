package com.example.data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("default");

    public static EntityManagerFactory getEmFactory(){return emf;}
}
