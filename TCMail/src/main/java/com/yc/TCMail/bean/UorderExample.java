package com.yc.TCMail.bean;

import java.util.ArrayList;
import java.util.List;

public class UorderExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table uorder
     *
<<<<<<< HEAD
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public UorderExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andAidIsNull() {
            addCriterion("aid is null");
            return (Criteria) this;
        }

        public Criteria andAidIsNotNull() {
            addCriterion("aid is not null");
            return (Criteria) this;
        }

        public Criteria andAidEqualTo(Integer value) {
            addCriterion("aid =", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidNotEqualTo(Integer value) {
            addCriterion("aid <>", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidGreaterThan(Integer value) {
            addCriterion("aid >", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidGreaterThanOrEqualTo(Integer value) {
            addCriterion("aid >=", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidLessThan(Integer value) {
            addCriterion("aid <", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidLessThanOrEqualTo(Integer value) {
            addCriterion("aid <=", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidIn(List<Integer> values) {
            addCriterion("aid in", values, "aid");
            return (Criteria) this;
        }

        public Criteria andAidNotIn(List<Integer> values) {
            addCriterion("aid not in", values, "aid");
            return (Criteria) this;
        }

        public Criteria andAidBetween(Integer value1, Integer value2) {
            addCriterion("aid between", value1, value2, "aid");
            return (Criteria) this;
        }

        public Criteria andAidNotBetween(Integer value1, Integer value2) {
            addCriterion("aid not between", value1, value2, "aid");
            return (Criteria) this;
        }

        public Criteria andOrderstatuIsNull() {
            addCriterion("orderstatu is null");
            return (Criteria) this;
        }

        public Criteria andOrderstatuIsNotNull() {
            addCriterion("orderstatu is not null");
            return (Criteria) this;
        }

        public Criteria andOrderstatuEqualTo(String value) {
            addCriterion("orderstatu =", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuNotEqualTo(String value) {
            addCriterion("orderstatu <>", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuGreaterThan(String value) {
            addCriterion("orderstatu >", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuGreaterThanOrEqualTo(String value) {
            addCriterion("orderstatu >=", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuLessThan(String value) {
            addCriterion("orderstatu <", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuLessThanOrEqualTo(String value) {
            addCriterion("orderstatu <=", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuLike(String value) {
            addCriterion("orderstatu like", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuNotLike(String value) {
            addCriterion("orderstatu not like", value, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuIn(List<String> values) {
            addCriterion("orderstatu in", values, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuNotIn(List<String> values) {
            addCriterion("orderstatu not in", values, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuBetween(String value1, String value2) {
            addCriterion("orderstatu between", value1, value2, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrderstatuNotBetween(String value1, String value2) {
            addCriterion("orderstatu not between", value1, value2, "orderstatu");
            return (Criteria) this;
        }

        public Criteria andOrdertimeIsNull() {
            addCriterion("ordertime is null");
            return (Criteria) this;
        }

        public Criteria andOrdertimeIsNotNull() {
            addCriterion("ordertime is not null");
            return (Criteria) this;
        }

        public Criteria andOrdertimeEqualTo(String value) {
            addCriterion("ordertime =", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeNotEqualTo(String value) {
            addCriterion("ordertime <>", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeGreaterThan(String value) {
            addCriterion("ordertime >", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeGreaterThanOrEqualTo(String value) {
            addCriterion("ordertime >=", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeLessThan(String value) {
            addCriterion("ordertime <", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeLessThanOrEqualTo(String value) {
            addCriterion("ordertime <=", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeLike(String value) {
            addCriterion("ordertime like", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeNotLike(String value) {
            addCriterion("ordertime not like", value, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeIn(List<String> values) {
            addCriterion("ordertime in", values, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeNotIn(List<String> values) {
            addCriterion("ordertime not in", values, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeBetween(String value1, String value2) {
            addCriterion("ordertime between", value1, value2, "ordertime");
            return (Criteria) this;
        }

        public Criteria andOrdertimeNotBetween(String value1, String value2) {
            addCriterion("ordertime not between", value1, value2, "ordertime");
            return (Criteria) this;
        }

        public Criteria andPaystatuIsNull() {
            addCriterion("paystatu is null");
            return (Criteria) this;
        }

        public Criteria andPaystatuIsNotNull() {
            addCriterion("paystatu is not null");
            return (Criteria) this;
        }

        public Criteria andPaystatuEqualTo(String value) {
            addCriterion("paystatu =", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuNotEqualTo(String value) {
            addCriterion("paystatu <>", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuGreaterThan(String value) {
            addCriterion("paystatu >", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuGreaterThanOrEqualTo(String value) {
            addCriterion("paystatu >=", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuLessThan(String value) {
            addCriterion("paystatu <", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuLessThanOrEqualTo(String value) {
            addCriterion("paystatu <=", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuLike(String value) {
            addCriterion("paystatu like", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuNotLike(String value) {
            addCriterion("paystatu not like", value, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuIn(List<String> values) {
            addCriterion("paystatu in", values, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuNotIn(List<String> values) {
            addCriterion("paystatu not in", values, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuBetween(String value1, String value2) {
            addCriterion("paystatu between", value1, value2, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaystatuNotBetween(String value1, String value2) {
            addCriterion("paystatu not between", value1, value2, "paystatu");
            return (Criteria) this;
        }

        public Criteria andPaytypeIsNull() {
            addCriterion("paytype is null");
            return (Criteria) this;
        }

        public Criteria andPaytypeIsNotNull() {
            addCriterion("paytype is not null");
            return (Criteria) this;
        }

        public Criteria andPaytypeEqualTo(String value) {
            addCriterion("paytype =", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeNotEqualTo(String value) {
            addCriterion("paytype <>", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeGreaterThan(String value) {
            addCriterion("paytype >", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeGreaterThanOrEqualTo(String value) {
            addCriterion("paytype >=", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeLessThan(String value) {
            addCriterion("paytype <", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeLessThanOrEqualTo(String value) {
            addCriterion("paytype <=", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeLike(String value) {
            addCriterion("paytype like", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeNotLike(String value) {
            addCriterion("paytype not like", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeIn(List<String> values) {
            addCriterion("paytype in", values, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeNotIn(List<String> values) {
            addCriterion("paytype not in", values, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeBetween(String value1, String value2) {
            addCriterion("paytype between", value1, value2, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeNotBetween(String value1, String value2) {
            addCriterion("paytype not between", value1, value2, "paytype");
            return (Criteria) this;
        }

        public Criteria andTcompIsNull() {
            addCriterion("tcomp is null");
            return (Criteria) this;
        }

        public Criteria andTcompIsNotNull() {
            addCriterion("tcomp is not null");
            return (Criteria) this;
        }

        public Criteria andTcompEqualTo(String value) {
            addCriterion("tcomp =", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompNotEqualTo(String value) {
            addCriterion("tcomp <>", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompGreaterThan(String value) {
            addCriterion("tcomp >", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompGreaterThanOrEqualTo(String value) {
            addCriterion("tcomp >=", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompLessThan(String value) {
            addCriterion("tcomp <", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompLessThanOrEqualTo(String value) {
            addCriterion("tcomp <=", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompLike(String value) {
            addCriterion("tcomp like", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompNotLike(String value) {
            addCriterion("tcomp not like", value, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompIn(List<String> values) {
            addCriterion("tcomp in", values, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompNotIn(List<String> values) {
            addCriterion("tcomp not in", values, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompBetween(String value1, String value2) {
            addCriterion("tcomp between", value1, value2, "tcomp");
            return (Criteria) this;
        }

        public Criteria andTcompNotBetween(String value1, String value2) {
            addCriterion("tcomp not between", value1, value2, "tcomp");
            return (Criteria) this;
        }

        public Criteria andUidIsNull() {
            addCriterion("uid is null");
            return (Criteria) this;
        }

        public Criteria andUidIsNotNull() {
            addCriterion("uid is not null");
            return (Criteria) this;
        }

        public Criteria andUidEqualTo(Integer value) {
            addCriterion("uid =", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotEqualTo(Integer value) {
            addCriterion("uid <>", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThan(Integer value) {
            addCriterion("uid >", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThanOrEqualTo(Integer value) {
            addCriterion("uid >=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThan(Integer value) {
            addCriterion("uid <", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThanOrEqualTo(Integer value) {
            addCriterion("uid <=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidIn(List<Integer> values) {
            addCriterion("uid in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotIn(List<Integer> values) {
            addCriterion("uid not in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidBetween(Integer value1, Integer value2) {
            addCriterion("uid between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotBetween(Integer value1, Integer value2) {
            addCriterion("uid not between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andNumIsNull() {
            addCriterion("num is null");
            return (Criteria) this;
        }

        public Criteria andNumIsNotNull() {
            addCriterion("num is not null");
            return (Criteria) this;
        }

        public Criteria andNumEqualTo(Integer value) {
            addCriterion("num =", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotEqualTo(Integer value) {
            addCriterion("num <>", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThan(Integer value) {
            addCriterion("num >", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("num >=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThan(Integer value) {
            addCriterion("num <", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThanOrEqualTo(Integer value) {
            addCriterion("num <=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumIn(List<Integer> values) {
            addCriterion("num in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotIn(List<Integer> values) {
            addCriterion("num not in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumBetween(Integer value1, Integer value2) {
            addCriterion("num between", value1, value2, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotBetween(Integer value1, Integer value2) {
            addCriterion("num not between", value1, value2, "num");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table uorder
     *
     * @mbg.generated do_not_delete_during_merge Thu May 02 09:29:58 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table uorder
     *
     * @mbg.generated Thu May 02 09:29:58 CST 2019
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}