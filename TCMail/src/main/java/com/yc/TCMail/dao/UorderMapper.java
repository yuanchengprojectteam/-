package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UorderMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    long countByExample(UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int deleteByExample(UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int insert(Uorder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int insertSelective(Uorder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    List<Uorder> selectByExample(UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    Uorder selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int updateByExampleSelective(@Param("record") Uorder record, @Param("example") UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int updateByExample(@Param("record") Uorder record, @Param("example") UorderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int updateByPrimaryKeySelective(Uorder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    int updateByPrimaryKey(Uorder record);
    
    List<Uorder> selectUorderByUser(User user);
}