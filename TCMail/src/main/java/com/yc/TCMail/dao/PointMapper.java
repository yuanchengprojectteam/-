package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Point;
import com.yc.TCMail.bean.PointExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PointMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    long countByExample(PointExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int deleteByExample(PointExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int insert(Point record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int insertSelective(Point record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    List<Point> selectByExample(PointExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    Point selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByExampleSelective(@Param("record") Point record, @Param("example") PointExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByExample(@Param("record") Point record, @Param("example") PointExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByPrimaryKeySelective(Point record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table point
     *
     * @mbg.generated Sat Apr 27 21:16:02 CST 2019
     */
    int updateByPrimaryKey(Point record);
}