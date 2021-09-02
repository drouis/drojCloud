package com.droj.mbg;

import cn.hutool.core.util.ObjectUtil;
import com.droj.mbg.pop.MybatisConfigPop;
import com.droj.mbg.util.JasyptUtil;
import lombok.Getter;
import lombok.Setter;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.Context;
import org.mybatis.generator.config.GeneratedKey;
import org.mybatis.generator.config.TableConfiguration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * 用于生产MBG的代码
 * Created by macro on 2018/4/26.
 */
public class Generator {
    public static final String SQL_CONNECTION_URL = "jdbc:mysql://%s:%s/%s?useUnicode=true&characterEncoding=utf-8&serverTimezone=Asia/Shanghai";
    public static String dataBASEUrl;
    public static String dataBasePort;
    public static String dataBaseSchema;
    public static String generator_config_xml_id = "MySqlContext";

    //MBG 执行过程中的警告信息
    static List<String> warnings = new ArrayList<String>();
    //当生成的代码重复时，覆盖原代码
    static boolean overwrite = true;
    static Configuration config = null;
    @Getter
    @Setter
    @Value("${jdbc.userId}")
    String userId;
    @Getter
    @Setter
    @Value("${jdbc.password}")
    String password;

    static void initDBConn(String url, String port, String schema) {
        setDataBASEUrl(url);
        setDataBasePort(port);
        setDataBaseSchema(schema);
    }

    static Configuration initTables(Configuration editConfig, Context context, List<String> tables) {
        List<TableConfiguration> tcList = new ArrayList<>();
        tables.forEach(val -> {
            TableConfiguration tc = new TableConfiguration(context);
            tc.setTableName(val);
            tc.setGeneratedKey(new GeneratedKey("id", "Mysql", true, null));
            // 允许添加数据句柄
            tc.setInsertStatementEnabled(true);
            // 数据主键处理句柄
            tc.setSelectByPrimaryKeyStatementEnabled(true);
            tc.setUpdateByPrimaryKeyStatementEnabled(true);
            tc.setDeleteByPrimaryKeyStatementEnabled(true);
            // 数据条件处理句柄
            tc.setSelectByExampleStatementEnabled(true);
            tc.setUpdateByExampleStatementEnabled(true);
            tc.setDeleteByExampleStatementEnabled(true);
            // 数据总量查询句柄
            tc.setCountByExampleStatementEnabled(true);
            tcList.add(tc);
        });
        editConfig.getContext(generator_config_xml_id).getTableConfigurations().clear();
        editConfig.getContext(generator_config_xml_id).getTableConfigurations().addAll(tcList);
        return editConfig;
    }

    public static void main(String[] args) throws Exception {
        MybatisConfigPop pop = MybatisConfigPop.readProperties("generator.properties");
        ExecuteInnerClass innerClass = new ExecuteInnerClass(pop);
//        innerClass.executeMybatis(0, "com.droj.mbg.model.sys", "com.droj.mbg.mapper.sys", true);
        innerClass.executeMybatis(1, "com.droj.mbg.model.uc", "com.droj.mbg.mapper.uc", true);
//        innerClass.executeMybatis(2, "com.droj.mbg.model.supply", "com.droj.mbg.mapper.supply", true);
//        innerClass.executeMybatis(3, "com.droj.mbg.model.estimate", "com.droj.mbg.mapper.estimate", true);
//        innerClass.executeMybatis(4, "com.droj.mbg.model.warehouse", "com.droj.mbg.mapper.warehouse", true);
//        innerClass.executeMybatis(5, "com.droj.mbg.model.cms", "com.droj.mbg.mapper.cms", true);
//        innerClass.executeMybatis(6, "com.droj.mbg.model.finance", "com.droj.mbg.mapper.finance", true);

    }

    public static String getDataBASEUrl() {
        return dataBASEUrl;
    }

    public static void setDataBASEUrl(String dataBASEUrl) {
        Generator.dataBASEUrl = dataBASEUrl;
    }

    public static String getDataBasePort() {
        return dataBasePort;
    }

    public static void setDataBasePort(String dataBasePort) {
        Generator.dataBasePort = dataBasePort;
    }

    public static String getDataBaseSchema() {
        return dataBaseSchema;
    }

    public static void setDataBaseSchema(String dataBaseSchema) {
        Generator.dataBaseSchema = dataBaseSchema;
    }

    public static Configuration getConfig() {
        return config;
    }

    public static void setConfig(Configuration config) {
        Generator.config = config;
    }

    static class ExecuteInnerClass {
        @Getter
        @Setter
        MybatisConfigPop pop;

        public ExecuteInnerClass(MybatisConfigPop pop) {
            this.pop = pop;
        }

        public static void chooseDataBaseMakeCode(MybatisConfigPop pop, int flg, String java_model_path, String java_mapper_path, boolean changeFilePath) {
            List<String> executeTables = null;
            String java_model = StringUtils.isEmpty(java_model_path) ? "com.droj.mbg.model" : java_model_path;
            String java_mapper = StringUtils.isEmpty(java_mapper_path) ? "com.droj.mbg.mapper" : java_mapper_path;
            switch (flg) {
                case 0:
                    executeTables = new ArrayList<>();
                    /** 平台系统公共工具库
                     * 消息通知记录 ampq_message
                     * 短信息记录 sys_sms
                     * 系统审批记录 sys_appr_history
                     * 系统操作记录
                     * 地图街道设置 sys_street
                     * 地图地区设置 sys_area
                     * 地图城市设置 sys_city
                     * 地图省市设置 sys_province
                     * 系统公共字典 sys_dictionary
                     * 系统邮件 sys_email
                     * 系统邮件模板 sys_email_config
                     * 系统邮件发件人 sys_email_contactor
                     * 系统文件管理 sys_file_info
                     * 系统平台参数配置 sys_info
                     * 系统平台操作日志配置 sys_opt_event_log
                     * **/
//                executeTables.add("ampq_message");
//                executeTables.add("sys_appr_history");
//                executeTables.add("sys_area");
//                executeTables.add("sys_city");
//                executeTables.add("sys_dictionary");
//                executeTables.add("sys_email");
//                executeTables.add("sys_email_config");
//                executeTables.add("sys_email_contactor");
//                executeTables.add("sys_file_info");
//                executeTables.add("sys_info");
//                executeTables.add("sys_opt_event_log");
//                executeTables.add("sys_province");
//                executeTables.add("sys_sms");
//                executeTables.add("sys_street");
                    executeTables.add("sys_file_info");
                    executeTables.add("sys_model_file_info");
                    initDBConn("192.168.2.100", "3306", "sys-tools");
                    break;
                case 1:
                    executeTables = new ArrayList<>();
                    /** TODO 平台系统会员中心
                     * 用户 ums_member
                     * 用户扩展信息 ums_member_info
                     * 角色 ums_role
                     * 权限 ums_permission
                     * 访问资源 ums_resources
                     * 角色用户关系 ums_role_member_relation
                     * 角色权限关系 ums_role_permission_relation
                     * 角色资源关系 ums_role_resources_relation
                     * 登录日志 ums_member_login_log
                     * **/
                    executeTables.add("ums_member");
                    executeTables.add("ums_member_info");
                    executeTables.add("ums_role");
                    executeTables.add("ums_permission");
                    executeTables.add("ums_resources");
                    executeTables.add("ums_role_member_relation");
                    executeTables.add("ums_role_permission_relation");
                    executeTables.add("ums_role_resources_relation");
                    executeTables.add("ums_member_login_log");
                    initDBConn("127.0.0.1", "3306", "droj-uc");
                    break;
                case 2:
                    executeTables = new ArrayList<>();
                    /** TODO 平台系统供应商链
                     *
                     *  ################################################
                     *  数字合同 合同信息表 dst_contract
                     *  数字合同 合同商品信息表 dst_contract_product
                     *  数字合同 合同模板信息表 dst_contract_sample
                     *  数字合同 发票订单关联表 dst_invoice_order
                     *  数字合同 发票信息表 dst_invoice
                     *  数字合同 发票抬头信息表 dst_invoice_title
                     *  数字合同 回款记录表 dst_payment
                     *  数字合同 回款计划表 dst_payment_plan
                     *  ################################################
                     *  商机 商户联系人信息表 bus_contacts
                     *  商机 商机信息表 bus_opportunity
                     *  商机 商机购销计划表 bus_opportunity_plan
                     *  商机 商机产品信息表 bus_opportunity_product
                     *  商机 商品预订单信息表 bus_order
                     *  商机 商品信息表 bus_product
                     *  商机 商品SKU信息表 bus_product_sku
                     *  商机 商品SKU值信息表 bus_product_sku_value
                     *  商机 商户信息表 bus_supplier
                     *  商机 商户商品信息表 bus_supplier_product
                     *  ################################################
                     *  认证管理 开户许可证信息 enterprise_accountopeninginfo
                     *  认证管理 实际控制人、管理层信息 enterprise_actualholderinfo
                     *  认证管理 企业基本信息 enterprise_basicinfo
                     *  认证管理 企业法人信息 enterprise_corporateinfo
                     *  认证管理  股东信息 && 关联企业信息 enterprise_linkbasicinfo
                     *  认证管理 公司组织架构及人员构成 enterprise_organizationalstructure
                     *  融资 融资商品表 finance_product_info
                     *  ################################################
                     *  账款 关联合同 bill_associated_contract
                     *  账款 合同信息 bill_buyer_contract
                     *  账款 凭证信息 bill_buyer_credentials_information
                     *  账款 凭证信息 bill_buyer_enterprise
                     *  ################################################
                     *  财务 会计科目列表 account_subjects
                     *  财务 流水账列表 account_flower_water
                     *  **/
//                executeTables.add("bus_contacts");
//                executeTables.add("bus_opportunity");
//                executeTables.add("bus_opportunity_plan");
//                executeTables.add("bus_opportunity_product");
//                executeTables.add("bus_order");
//                executeTables.add("bus_product");
//                executeTables.add("bus_product_sku");
//                executeTables.add("bus_product_sku_value");
//                executeTables.add("bus_supplier");
//                executeTables.add("bus_supplier_product");
//                executeTables.add("dst_contract");
//                executeTables.add("dst_contract_product");
                    executeTables.add("dst_invoice_order");
                    executeTables.add("dst_invoice");
//                executeTables.add("dst_invoice_title");
//                executeTables.add("dst_payment");
//                executeTables.add("dst_payment_plan");
//                executeTables.add("account_subjects");
//                executeTables.add("account_report");
//                executeTables.add("account_flower_water");
//                executeTables.add("account_flowwater_report");
//                executeTables.add("enterprise_bank");
//                executeTables.add("enterprise_basicinfo");
//                executeTables.add("enterprise_shop");
                    initDBConn("192.168.2.100", "3306", "rjpa-enterprise");
                    break;
                case 3:
                    executeTables = new ArrayList<>();
                    /** 平台系统项目运行成本估算
                     * 项目功能说明 记录项目工程的功能列表 est_function
                     * 项目功能说明 记录项目工程的功能列表 est_information_domain_value
                     * 项目功能说明 记录工程项目名称，项目经理 合同使用模板 est_project
                     * 项目功能说明 Fi加权因子信息 est_weighting_factor
                     * **/
                    executeTables.add("est_function");
                    executeTables.add("est_information_domain_value");
                    executeTables.add("est_project");
                    executeTables.add("est_weighting_factor");
                    initDBConn("127.0.0.1", "3306", "rjpa-estimation");
                    break;
                case 4:
                    executeTables = new ArrayList<>();
//                executeTables.add("wms_access_record");
//                executeTables.add("wms_customer");
                    executeTables.add("wms_goods");
//                executeTables.add("wms_operation_record");
//                executeTables.add("wms_record_in");
//                executeTables.add("wms_record_in_ground");
//                executeTables.add("wms_record_out");
//                executeTables.add("wms_record_out_extend");
//                executeTables.add("wms_record_storage");
//                executeTables.add("wms_record_storage_history");
//                executeTables.add("wms_repo_admin");
//                executeTables.add("wms_respository");
//                executeTables.add("wms_stock_bill");
//                executeTables.add("wms_supplier");
                    initDBConn("127.0.0.1", "3306", "rjpa-warehouse");
                    break;
                case 5:
                    /** 平台系统WEB站点CMS内容维护
                     * 项目功能说明 站点文章表 cms_article
                     * 项目功能说明 站点数据收集表 cms_cal
                     * 项目功能说明 站点栏目表 cms_catalog
                     * 项目功能说明 站点菜单表 cms_menu
                     * **/
                    executeTables = new ArrayList<>();
                    executeTables.add("cms_article");
                    executeTables.add("cms_cal");
                    executeTables.add("cms_catalog");
                    executeTables.add("cms_menu");
                    initDBConn("127.0.0.1", "3306", "rjpa-cms");
                    break;
                case 6:
                    /** 平台系统WEB站点CMS内容维护
                     * 项目功能说明 站点文章表 cms_article
                     * 项目功能说明 站点数据收集表 cms_cal
                     * 项目功能说明 站点栏目表 cms_catalog
                     * 项目功能说明 站点菜单表 cms_menu
                     * **/
                    executeTables = new ArrayList<>();
//                executeTables.add("financial_bs");
//                executeTables.add("financial_is");
//                executeTables.add("financial_cfs");
//                executeTables.add("financial_rule");
//                executeTables.add("rule_data");
//                executeTables.add("price_quotation");
//                executeTables.add("price_quotation_config");
//                  executeTables.add("price_quotation_ask");
                    executeTables.add("price_quotation_ask_link");
//                executeTables.add("price_inquiry");
//                executeTables.add("financial_subjects");
//                executeTables.add("financial_report_subject");
//                executeTables.add("financial_items");
//                executeTables.add("financial_items_version");
//                executeTables.add("financial_matters");
//                executeTables.add("financial_matters_version");
//                executeTables.add("balance_sheet_data");
//                executeTables.add("balance_sheet_entry");
//                executeTables.add("income_sheet_data");
//                executeTables.add("income_sheet_entry");
//                executeTables.add("financial_bank_info");
                    initDBConn("192.168.2.100", "3306", "rjpa-financial");
                    break;
                default:
                    break;
            }
            if (CollectionUtils.isEmpty(executeTables)) {
                return;
            }
            String execute_sql = SQL_CONNECTION_URL;
            try {
                String userId = JasyptUtil.decyptPwd(pop.getJspyPassword(), pop.getUserId());
                String password = JasyptUtil.decyptPwd(pop.getJspyPassword(), pop.getPassword());
                execute_sql = String.format(execute_sql, dataBASEUrl, dataBasePort, dataBaseSchema);
                System.out.println("执行数据库链接 = " + execute_sql);
                //读取我们的 MBG 配置文件
                InputStream is = Generator.class.getResourceAsStream("/generatorConfig.xml");
                ConfigurationParser cp = new ConfigurationParser(warnings);
                Configuration editConfig = cp.parseConfiguration(is);
                // Mybatis 数据库来源配置
                editConfig.getContext(generator_config_xml_id).getJdbcConnectionConfiguration().setConnectionURL(execute_sql);
                editConfig.getContext(generator_config_xml_id).getJdbcConnectionConfiguration().setUserId(userId);
                editConfig.getContext(generator_config_xml_id).getJdbcConnectionConfiguration().setPassword(password);
                if (!changeFilePath) {
                    String _file_path = null;
                    {
                        _file_path = editConfig.getContext(generator_config_xml_id).getJavaModelGeneratorConfiguration().getTargetPackage() + File.pathSeparator + java_model.split(".")[java_model.split(".").length - 1];
                        editConfig.getContext(generator_config_xml_id).getJavaModelGeneratorConfiguration().setTargetProject(_file_path);
                    }
                    {
                        _file_path = editConfig.getContext(generator_config_xml_id).getJavaClientGeneratorConfiguration().getTargetPackage() + File.pathSeparator + java_model.split(".")[java_model.split(".").length - 1];
                        editConfig.getContext(generator_config_xml_id).getJavaClientGeneratorConfiguration().setTargetProject(_file_path);
                    }

                    {
                        _file_path = editConfig.getContext(generator_config_xml_id).getSqlMapGeneratorConfiguration().getTargetPackage() + File.pathSeparator + java_mapper.split(".")[java_mapper.split(".").length - 1];
                        editConfig.getContext(generator_config_xml_id).getSqlMapGeneratorConfiguration().setTargetProject(_file_path);
                    }
                }
                editConfig.getContext(generator_config_xml_id).getJavaModelGeneratorConfiguration().setTargetPackage(java_model);
                editConfig.getContext(generator_config_xml_id).getJavaClientGeneratorConfiguration().setTargetPackage(java_mapper);
                editConfig.getContext(generator_config_xml_id).getSqlMapGeneratorConfiguration().setTargetPackage(java_mapper);
                Context context = editConfig.getContext(generator_config_xml_id);
                editConfig = initTables(editConfig, context, executeTables);
                setConfig(editConfig);
                is.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }

        public void executeMybatis(int flg, String java_model_path, String java_mapper_path, boolean changeFilePath) {
            if (StringUtils.isEmpty(pop.getUserId()) || StringUtils.isEmpty(pop.getPassword())) {
                return;
            }
            try {
                DefaultShellCallback callback = new DefaultShellCallback(overwrite);
                chooseDataBaseMakeCode(pop, flg, java_model_path, java_mapper_path, changeFilePath);
                if (!ObjectUtil.isEmpty(config)) {
                    //创建 MBG
                    MyBatisGenerator myBatisGenerator = new MyBatisGenerator(getConfig(), callback, warnings);
                    //执行生成代码
                    myBatisGenerator.generate(null);
                    //输出警告信息
                    for (String warning : warnings) {
                        System.out.println(warning);
                    }
                    System.out.println("生成完成！刷新代码目录。");
                } else {
                    System.out.println("生成失败！数据库源配置异常，无法建立数据链接。");
                }
            } catch (Exception e) {
                System.out.println(e);
                System.out.println("生成失败！系统运行异常。" + e.getCause());
            }
        }
    }
}
