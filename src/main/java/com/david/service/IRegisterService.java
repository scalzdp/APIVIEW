package com.david.service;

import com.david.domain.User;
import com.david.exception.DAOException;

/**
 * Created by ZhengDaPeng on 2015/10/9.
 */
public interface IRegisterService {

    public void Register(User user)throws DAOException;
}
