package com.droj.mbg.model.uc;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UmsRoleExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UmsRoleExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

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

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSidIsNull() {
            addCriterion("sid is null");
            return (Criteria) this;
        }

        public Criteria andSidIsNotNull() {
            addCriterion("sid is not null");
            return (Criteria) this;
        }

        public Criteria andSidEqualTo(String value) {
            addCriterion("sid =", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotEqualTo(String value) {
            addCriterion("sid <>", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThan(String value) {
            addCriterion("sid >", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThanOrEqualTo(String value) {
            addCriterion("sid >=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThan(String value) {
            addCriterion("sid <", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThanOrEqualTo(String value) {
            addCriterion("sid <=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLike(String value) {
            addCriterion("sid like", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotLike(String value) {
            addCriterion("sid not like", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidIn(List<String> values) {
            addCriterion("sid in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotIn(List<String> values) {
            addCriterion("sid not in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidBetween(String value1, String value2) {
            addCriterion("sid between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotBetween(String value1, String value2) {
            addCriterion("sid not between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andCheckedIsNull() {
            addCriterion("checked is null");
            return (Criteria) this;
        }

        public Criteria andCheckedIsNotNull() {
            addCriterion("checked is not null");
            return (Criteria) this;
        }

        public Criteria andCheckedEqualTo(Boolean value) {
            addCriterion("checked =", value, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedNotEqualTo(Boolean value) {
            addCriterion("checked <>", value, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedGreaterThan(Boolean value) {
            addCriterion("checked >", value, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedGreaterThanOrEqualTo(Boolean value) {
            addCriterion("checked >=", value, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedLessThan(Boolean value) {
            addCriterion("checked <", value, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedLessThanOrEqualTo(Boolean value) {
            addCriterion("checked <=", value, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedIn(List<Boolean> values) {
            addCriterion("checked in", values, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedNotIn(List<Boolean> values) {
            addCriterion("checked not in", values, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedBetween(Boolean value1, Boolean value2) {
            addCriterion("checked between", value1, value2, "checked");
            return (Criteria) this;
        }

        public Criteria andCheckedNotBetween(Boolean value1, Boolean value2) {
            addCriterion("checked not between", value1, value2, "checked");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("description not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andAdminCountIsNull() {
            addCriterion("admin_count is null");
            return (Criteria) this;
        }

        public Criteria andAdminCountIsNotNull() {
            addCriterion("admin_count is not null");
            return (Criteria) this;
        }

        public Criteria andAdminCountEqualTo(Integer value) {
            addCriterion("admin_count =", value, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountNotEqualTo(Integer value) {
            addCriterion("admin_count <>", value, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountGreaterThan(Integer value) {
            addCriterion("admin_count >", value, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("admin_count >=", value, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountLessThan(Integer value) {
            addCriterion("admin_count <", value, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountLessThanOrEqualTo(Integer value) {
            addCriterion("admin_count <=", value, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountIn(List<Integer> values) {
            addCriterion("admin_count in", values, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountNotIn(List<Integer> values) {
            addCriterion("admin_count not in", values, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountBetween(Integer value1, Integer value2) {
            addCriterion("admin_count between", value1, value2, "adminCount");
            return (Criteria) this;
        }

        public Criteria andAdminCountNotBetween(Integer value1, Integer value2) {
            addCriterion("admin_count not between", value1, value2, "adminCount");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andSortIsNull() {
            addCriterion("sort is null");
            return (Criteria) this;
        }

        public Criteria andSortIsNotNull() {
            addCriterion("sort is not null");
            return (Criteria) this;
        }

        public Criteria andSortEqualTo(Integer value) {
            addCriterion("sort =", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotEqualTo(Integer value) {
            addCriterion("sort <>", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThan(Integer value) {
            addCriterion("sort >", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThanOrEqualTo(Integer value) {
            addCriterion("sort >=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThan(Integer value) {
            addCriterion("sort <", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThanOrEqualTo(Integer value) {
            addCriterion("sort <=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortIn(List<Integer> values) {
            addCriterion("sort in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotIn(List<Integer> values) {
            addCriterion("sort not in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortBetween(Integer value1, Integer value2) {
            addCriterion("sort between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotBetween(Integer value1, Integer value2) {
            addCriterion("sort not between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andMngflgIsNull() {
            addCriterion("mngflg is null");
            return (Criteria) this;
        }

        public Criteria andMngflgIsNotNull() {
            addCriterion("mngflg is not null");
            return (Criteria) this;
        }

        public Criteria andMngflgEqualTo(Integer value) {
            addCriterion("mngflg =", value, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgNotEqualTo(Integer value) {
            addCriterion("mngflg <>", value, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgGreaterThan(Integer value) {
            addCriterion("mngflg >", value, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgGreaterThanOrEqualTo(Integer value) {
            addCriterion("mngflg >=", value, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgLessThan(Integer value) {
            addCriterion("mngflg <", value, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgLessThanOrEqualTo(Integer value) {
            addCriterion("mngflg <=", value, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgIn(List<Integer> values) {
            addCriterion("mngflg in", values, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgNotIn(List<Integer> values) {
            addCriterion("mngflg not in", values, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgBetween(Integer value1, Integer value2) {
            addCriterion("mngflg between", value1, value2, "mngflg");
            return (Criteria) this;
        }

        public Criteria andMngflgNotBetween(Integer value1, Integer value2) {
            addCriterion("mngflg not between", value1, value2, "mngflg");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1IsNull() {
            addCriterion("role_memo_1 is null");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1IsNotNull() {
            addCriterion("role_memo_1 is not null");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1EqualTo(String value) {
            addCriterion("role_memo_1 =", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1NotEqualTo(String value) {
            addCriterion("role_memo_1 <>", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1GreaterThan(String value) {
            addCriterion("role_memo_1 >", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1GreaterThanOrEqualTo(String value) {
            addCriterion("role_memo_1 >=", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1LessThan(String value) {
            addCriterion("role_memo_1 <", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1LessThanOrEqualTo(String value) {
            addCriterion("role_memo_1 <=", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1Like(String value) {
            addCriterion("role_memo_1 like", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1NotLike(String value) {
            addCriterion("role_memo_1 not like", value, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1In(List<String> values) {
            addCriterion("role_memo_1 in", values, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1NotIn(List<String> values) {
            addCriterion("role_memo_1 not in", values, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1Between(String value1, String value2) {
            addCriterion("role_memo_1 between", value1, value2, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo1NotBetween(String value1, String value2) {
            addCriterion("role_memo_1 not between", value1, value2, "roleMemo1");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2IsNull() {
            addCriterion("role_memo_2 is null");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2IsNotNull() {
            addCriterion("role_memo_2 is not null");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2EqualTo(Integer value) {
            addCriterion("role_memo_2 =", value, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2NotEqualTo(Integer value) {
            addCriterion("role_memo_2 <>", value, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2GreaterThan(Integer value) {
            addCriterion("role_memo_2 >", value, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2GreaterThanOrEqualTo(Integer value) {
            addCriterion("role_memo_2 >=", value, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2LessThan(Integer value) {
            addCriterion("role_memo_2 <", value, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2LessThanOrEqualTo(Integer value) {
            addCriterion("role_memo_2 <=", value, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2In(List<Integer> values) {
            addCriterion("role_memo_2 in", values, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2NotIn(List<Integer> values) {
            addCriterion("role_memo_2 not in", values, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2Between(Integer value1, Integer value2) {
            addCriterion("role_memo_2 between", value1, value2, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo2NotBetween(Integer value1, Integer value2) {
            addCriterion("role_memo_2 not between", value1, value2, "roleMemo2");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3IsNull() {
            addCriterion("role_memo_3 is null");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3IsNotNull() {
            addCriterion("role_memo_3 is not null");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3EqualTo(Long value) {
            addCriterion("role_memo_3 =", value, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3NotEqualTo(Long value) {
            addCriterion("role_memo_3 <>", value, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3GreaterThan(Long value) {
            addCriterion("role_memo_3 >", value, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3GreaterThanOrEqualTo(Long value) {
            addCriterion("role_memo_3 >=", value, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3LessThan(Long value) {
            addCriterion("role_memo_3 <", value, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3LessThanOrEqualTo(Long value) {
            addCriterion("role_memo_3 <=", value, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3In(List<Long> values) {
            addCriterion("role_memo_3 in", values, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3NotIn(List<Long> values) {
            addCriterion("role_memo_3 not in", values, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3Between(Long value1, Long value2) {
            addCriterion("role_memo_3 between", value1, value2, "roleMemo3");
            return (Criteria) this;
        }

        public Criteria andRoleMemo3NotBetween(Long value1, Long value2) {
            addCriterion("role_memo_3 not between", value1, value2, "roleMemo3");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

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