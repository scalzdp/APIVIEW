package com.david.dao.impl;


import com.david.dao.IBaseDAO;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ZhengDaPeng on 2015/4/22.
 */
@SuppressWarnings("unchecked")
@Repository
@Transactional(propagation = Propagation.MANDATORY)
public class BaseDAO implements IBaseDAO {

    private SessionFactory sessionFactory;

    @Autowired
    public BaseDAO(@Qualifier("sessionFactory") SessionFactory factory) {
        this.sessionFactory = factory;

    }

    @Override
    public Session getCurrentSession(){
       return sessionFactory.getCurrentSession();
    }

    @Override
    public <T> T save(T t) {
        //Transaction tx = sessionFactory.getCurrentSession().beginTransaction();
        this.sessionFactory.getCurrentSession().save(t);
        //this.sessionFactory.getCurrentSession().flush();
        return t;
        //tx.commit();
    }

    @Override
    public <T> T get(T t, int id) {
        return (T)this.sessionFactory.getCurrentSession().get(t.getClass(), id);
    }

    @Override
    public <T> List<T> querySelf(T t, String hql) {
        return this.sessionFactory.getCurrentSession().createSQLQuery(hql).addEntity(t.getClass()).list();
    }

    @Override
    public <T> void delete(T t, int id) {
        //Transaction tx = sessionFactory.getCurrentSession().beginTransaction();
        T tmp = this.get(t, id);
        this.sessionFactory.getCurrentSession().delete(tmp);
        //tx.commit();
    }

    @Override
    public <T> void update(T t) {
        //Transaction tx = sessionFactory.getCurrentSession().beginTransaction();
        this.sessionFactory.getCurrentSession().update(t);
        //tx.commit();
    }

    @Override
    public <T> int queryEmailRepeatTimes(T t, String email) {
        return 0;
    }

    @Override
    public <T> List<T> getAllSelf(T t, String tablename) {
        String hql = "select * from "+tablename;
        //List<SecurityQuestions> tt= (List<SecurityQuestions>)this.sessionFactory.getCurrentSession().createQuery(hql).list();
        List<T> temp = (List<T>)this.sessionFactory.getCurrentSession().createSQLQuery(hql).addEntity(t.getClass()).list();
        return temp;
    }

    @Override
    public <T> List<T> queryFactory(T t, String tablename, String whereClause) {
        String hql = "select * from "+tablename;
        if(!whereClause.equals("")&&whereClause!=null){
            hql += " where 1=1 "+ whereClause;
        }
        List<T> temp = (List<T>)this.sessionFactory.getCurrentSession().createSQLQuery(hql).addEntity(t.getClass()).list();
        return temp;
    }

    @Override
    public <T> List<T> queryFactory(T t, String hql) {
        List<T> temp = (List<T>)this.sessionFactory.getCurrentSession().createSQLQuery(hql).addEntity(t.getClass()).list();
        return temp;
    }

    @Override
    @SuppressWarnings("unchecked")
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public <T> List<T> all(Class<T> clazz) {
        Criteria crit = this.sessionFactory.getCurrentSession().createCriteria(clazz);
        return crit.list();
    }

    @Override
    public void excuteSQL(String sql) throws Exception {
        try {
            this.sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
//            SQLQuery query =this.sessionFactory.getCurrentSession().createSQLQuery(sql);
//            query.executeUpdate();
        }catch(Exception e){
            throw e;
        }
    }

    @Override
    public List findFlexible(String sql) {
        Query query =  this.sessionFactory.getCurrentSession().createSQLQuery(sql);
        return query.list();
    }
}
