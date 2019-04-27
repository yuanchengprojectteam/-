package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Goodsmsg;
import com.yc.TCMail.bean.GoodsmsgExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GoodsmsgMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    long countByExample(GoodsmsgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int deleteByExample(GoodsmsgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int insert(Goodsmsg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int insertSelective(Goodsmsg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    List<Goodsmsg> selectByExample(GoodsmsgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    Goodsmsg selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByExampleSelective(@Param("record") Goodsmsg record, @Param("example") GoodsmsgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByExample(@Param("record") Goodsmsg record, @Param("example") GoodsmsgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByPrimaryKeySelective(Goodsmsg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goodsmsg
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByPrimaryKey(Goodsmsg record);
}