package com.david.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ZhengDaPeng on 2015/4/22.
 */

@Repository
public interface IBaseDAO {

    /*获取当前数据库session
    *
    * */
    public Session getCurrentSession();
    /*保存信息
	 * @param  t 传递的参数
	 * */
    public <T> T save(T t) ;

    /*更具ID查询相关信息
     * @param  t 查询信息的类型
     * @param id 查询主键
     * */
    public <T> T get(T t, int id);

    /*根据条件查询
     * @param t 查询数据的类型
     * @param hql 查询的hql语句
     * */
    public <T> List<T> querySelf(T t, String hql);

    /*删除信息，根据ID
     * @param t删除信息类型
     * @param id删除信息的id
     * */
    public <T> void delete(T t, int id);

    /*更新数据
     * @param t 更新数据的类型
     * */
    public <T> void update(T t);

    /*查询注册的email的出现次数
     * @param t 查询类型
     * @email 传递查询的email
     * */
    public <T> int queryEmailRepeatTimes(T t, String email);

    /*查询自身
     * @param t 查询类型
     * @param tablename 查询的表名
     * */
    public <T> List<T> getAllSelf(T t, String tablename);

    /*根据传入的whereClause和需要查询的表名称查询响应表符合对象的结果
     * @param t 查询组装成为最后要得到的结果类型。
     * @tablename 传入查询的表名
     * @whereClause 查询条件
     * */
    public <T> List<T> queryFactory(T t, String tablename, String whereClause);

    /*根据hql查询需要得到类型的结果
     * @param t 最后需要得到的结果类型
     * @param hql 执行查询的hql查询语言。
     * */
    public <T> List<T> queryFactory(T t, String hql);

    /**展示所有对象
     * */
    @SuppressWarnings("unchecked")
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public <T> List<T> all(Class<T> clazz);

    /**
     * 执行制定的SQL语句
     * */
    public void excuteSQL(String sql) throws Exception;

    List findFlexible(String sql);
}
