package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UorderMapper {
	//Uorder selectById(Integer orderid,Integer gid);
	List<Uorder> selectWithReturn(User user,Integer id);
	Uorder selectByOrderId(Integer orderid);
	Uorder selectByUorderId(Integer orderid);
	List<Uorder> selectUorderByUser(User user);
	void insertUorder(Uorder uorder);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    long countByExample(UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int deleteByExample(UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int insert(Uorder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int insertSelective(Uorder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    List<Uorder> selectByExample(UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    Uorder selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int updateByExampleSelective(@Param("record") Uorder record, @Param("example") UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int updateByExample(@Param("record") Uorder record, @Param("example") UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int updateByPrimaryKeySelective(Uorder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Mon May 06 19:06:57 CST 2019
     */
    int updateByPrimaryKey(Uorder record);
}