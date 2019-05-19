package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GtypeMapper {
	List<Gtype> selectAllGtypes();
	List<Gtype> selectChildTypes(Integer id);
	List<Gtype> selectGsonTypes(Integer id);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    long countByExample(GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int deleteByExample(GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int insert(Gtype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int insertSelective(Gtype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    List<Gtype> selectByExample(GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    Gtype selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByExampleSelective(@Param("record") Gtype record, @Param("example") GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByExample(@Param("record") Gtype record, @Param("example") GtypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByPrimaryKeySelective(Gtype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gtype
     *
<<<<<<< HEAD
     * @mbg.generated Sat May 11 14:59:10 CST 2019
=======
     * @mbg.generated Sun May 12 09:52:27 CST 2019
>>>>>>> refs/remotes/origin/master
     */
    int updateByPrimaryKey(Gtype record);
    
    
	Gtype selectThreeTypeWithGoods(@Param("id")int id);
	
	
	List<Gtype> selectFourGtypeByPid(@Param("pid")int pid);
	
	List<Gtype> selectFourGtypeBySunid(@Param("sunid")int sunid);
	
	
}