/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

/**
 *
 * @author TUF FX504
 */
public class EmpActionDAO<T> extends GeneralDAO<T> {

    public EmpActionDAO(SessionFactory sessionFactory, Class<T> t) {
        super(sessionFactory, t);
    }
    
    public List<T> getByForum(Object key) {
        List<T> ts = new ArrayList<>();
        session = this.sessionFactory.openSession();
        transaction = session.beginTransaction();
        try {
            String hql = "FROM " + t.getClass().getSimpleName() + " WHERE FORUM = :x";
            Query query = session.createQuery(hql);
            query.setParameter("x", key);
            ts = query.list();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }

        return ts;
    }
    
     public List<T> getReply(Object key) {
        List<T> ts = new ArrayList<>();
        session = this.sessionFactory.openSession();
        transaction = session.beginTransaction();
        try {
            String hql = "FROM " + t.getClass().getSimpleName() + " WHERE FORUM = :x AND Action = 'Reply'";
            Query query = session.createQuery(hql);
            query.setParameter("x", key);
            ts = query.list();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }

        return ts;
    }
    
    public List<T> getData(Object key) {
        List<T> ts = new ArrayList<>();
        session = this.sessionFactory.openSession();
        transaction = session.beginTransaction();
        try {
            String hql = "FROM " + t.getClass().getSimpleName() + (key == null ? " WHERE Action = 'Create'   " : " WHERE "); 
            for (Field field : t.getClass().getDeclaredFields()) {
                System.out.println(field.getName());
                if (!field.getName().matches(".*(List|UID)") && key != null) {
                    hql = hql + "LOWER(" + field.getName() + ") LIKE '%"+ key+ "%' OR ";
                }
                //FROM Region LOWER(id) like %keyword% OR lower name ........... OR
            }
            hql = hql.substring(0,hql.length()-3);//FROM Region LOWER(id) like %keyword% OR lower name ........... untuk membuang ORnya.
            hql = hql + " ORDER BY 1 ";
            System.out.println(hql);
            Query query = session.createQuery(hql);
            ts = query.list();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }finally{
            session.close();
        }
        return ts;
    }
    
   
    
    
}
