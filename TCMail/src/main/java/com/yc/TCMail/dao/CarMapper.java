package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.CarExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CarMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    long countByExample(CarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int deleteByExample(CarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int insert(Car record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int insertSelective(Car record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    List<Car> selectByExample(CarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    Car selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByExampleSelective(@Param("record") Car record, @Param("example") CarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByExample(@Param("record") Car record, @Param("example") CarExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByPrimaryKeySelective(Car record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table car
     *
<<<<<<< HEAD
     * @mbg.generated Mon May 06 20:08:23 CST 2019
=======
     * @mbg.generated Mon May 06 17:25:16 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByPrimaryKey(Car record);
}