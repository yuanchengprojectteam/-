package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Totalreason;
import com.yc.TCMail.bean.TotalreasonExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TotalreasonMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    long countByExample(TotalreasonExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int deleteByExample(TotalreasonExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int insert(Totalreason record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int insertSelective(Totalreason record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    List<Totalreason> selectByExample(TotalreasonExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    Totalreason selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByExampleSelective(@Param("record") Totalreason record, @Param("example") TotalreasonExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByExample(@Param("record") Totalreason record, @Param("example") TotalreasonExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByPrimaryKeySelective(Totalreason record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table totalreason
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByPrimaryKey(Totalreason record);
}