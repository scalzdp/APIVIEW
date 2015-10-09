package com.david.service.impl;

import com.david.dao.IBaseDAO;
import com.david.domain.User;
import com.david.exception.DAOException;
import com.david.service.IRegisterService;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by ZhengDaPeng on 2015/10/9.
 */
@Service("registerService")
public class RegisterServiceImpl implements IRegisterService {

    @Resource
    private IBaseDAO dao;

    @Override
    public void Register(User user) throws DAOException{
        Transaction tx = dao.getCurrentSession().beginTransaction();
        try {
            dao.save(user);
            tx.commit();
        }catch(Exception e){
            tx.rollback();
            dao.getCurrentSession().close();
            String errorResult=e.getMessage()+": 用户注册失败"+user.toString();
            throw new DAOException(errorResult);
        }
    }
}
