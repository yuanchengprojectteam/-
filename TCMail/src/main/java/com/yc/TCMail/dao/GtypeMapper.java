package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GtypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    long countByExample(GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int deleteByExample(GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int insert(Gtype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int insertSelective(Gtype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    List<Gtype> selectByExample(GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    Gtype selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByExampleSelective(@Param("record") Gtype record, @Param("example") GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByExample(@Param("record") Gtype record, @Param("example") GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByPrimaryKeySelective(Gtype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByPrimaryKey(Gtype record);
}