package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.FavoriteExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FavoriteMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    long countByExample(FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int deleteByExample(FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int insert(Favorite record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int insertSelective(Favorite record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    List<Favorite> selectByExample(FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    Favorite selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByExampleSelective(@Param("record") Favorite record, @Param("example") FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByExample(@Param("record") Favorite record, @Param("example") FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByPrimaryKeySelective(Favorite record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon May 06 17:25:16 CST 2019
     */
    int updateByPrimaryKey(Favorite record);
}