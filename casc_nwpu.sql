/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : casc_nwpu

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2019-08-28 18:11:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_ process_key_characteristics_a4
-- ----------------------------
DROP TABLE IF EXISTS `tb_ process_key_characteristics_a4`;
CREATE TABLE `tb_ process_key_characteristics_a4` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name_and_drawing_number` varchar(50) DEFAULT NULL,
  `key_characteristics` varchar(50) DEFAULT NULL,
  `key_characteristics_analysis` varchar(50) DEFAULT NULL,
  `main_control_requirements` varchar(50) DEFAULT NULL,
  `process_key_characteristics` varchar(50) DEFAULT NULL,
  `measured_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ process_key_characteristics_a4
-- ----------------------------

-- ----------------------------
-- Table structure for tb_ process_key_characteristics_b3
-- ----------------------------
DROP TABLE IF EXISTS `tb_ process_key_characteristics_b3`;
CREATE TABLE `tb_ process_key_characteristics_b3` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name_and_drawing_number` varchar(50) DEFAULT NULL,
  `key_characteristics` varchar(50) DEFAULT NULL,
  `key_characteristics_analysis` varchar(50) DEFAULT NULL,
  `main_control_requirements` varchar(50) DEFAULT NULL,
  `process_key_characteristics_requre` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ process_key_characteristics_b3
-- ----------------------------

-- ----------------------------
-- Table structure for tb_acceptance_test_history_a22
-- ----------------------------
DROP TABLE IF EXISTS `tb_acceptance_test_history_a22`;
CREATE TABLE `tb_acceptance_test_history_a22` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `acceptance_test_project` varchar(50) DEFAULT NULL,
  `experimental_condition` varchar(50) DEFAULT NULL,
  `experimental_result` varchar(50) DEFAULT NULL,
  `multimedia_recording` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_acceptance_test_history_a22
-- ----------------------------

-- ----------------------------
-- Table structure for tb_assemblematching
-- ----------------------------
DROP TABLE IF EXISTS `tb_assemblematching`;
CREATE TABLE `tb_assemblematching` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_assemblematching
-- ----------------------------
INSERT INTO `tb_assemblematching` VALUES ('1', '推力室', 'TSD102-100-2/0-0', '12306', '这就是个推力室，比冲高的那种', '<a>www.baidu.com</a>');
INSERT INTO `tb_assemblematching` VALUES ('2', '推力室', 'TSD102-100-2/0-1', '12307', '这还是个推力室', '<a>www.baidu.com</a>');
INSERT INTO `tb_assemblematching` VALUES ('4', '电磁阀', 'DCF111-2-22/1-1', '10086', '这是电磁阀诶', '<a>www.bing.com</a>');
INSERT INTO `tb_assemblematching` VALUES ('5', '电磁阀', 'DCF222-3-33/2-2', '10087', '这咋还是电磁阀', '<a>www.bing.com</a>');
INSERT INTO `tb_assemblematching` VALUES ('6', '电磁阀', '123', '4234', '这是电磁阀诶', '<a>www.baidu.com</a>');
INSERT INTO `tb_assemblematching` VALUES ('7', '电磁阀', 'asd', '4234', '这是电磁阀诶', '<a>www.baidu.com</a>');

-- ----------------------------
-- Table structure for tb_component_selection_list_a9
-- ----------------------------
DROP TABLE IF EXISTS `tb_component_selection_list_a9`;
CREATE TABLE `tb_component_selection_list_a9` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `component_name` varchar(50) DEFAULT NULL,
  `component_model` varchar(50) DEFAULT NULL,
  `standard` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `package_product` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `preferred_directory` varchar(50) DEFAULT NULL,
  `whether_super_catalog` varchar(50) DEFAULT NULL,
  `forbidden_or_not` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_component_selection_list_a9
-- ----------------------------

-- ----------------------------
-- Table structure for tb_department_group_functional_performance_data_sheet_a11
-- ----------------------------
DROP TABLE IF EXISTS `tb_department_group_functional_performance_data_sheet_a11`;
CREATE TABLE `tb_department_group_functional_performance_data_sheet_a11` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_part_name` varchar(50) DEFAULT NULL,
  `performance_data_name` varchar(50) DEFAULT NULL,
  `Performance_value_range` varchar(50) DEFAULT NULL,
  `basis` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `process_design_requirements` varchar(50) DEFAULT NULL,
  `process_control_requirements` varchar(50) DEFAULT NULL,
  `product_measured_value` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department_group_functional_performance_data_sheet_a11
-- ----------------------------

-- ----------------------------
-- Table structure for tb_design-character_b2
-- ----------------------------
DROP TABLE IF EXISTS `tb_design-character_b2`;
CREATE TABLE `tb_design-character_b2` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `character_name` varchar(50) DEFAULT NULL,
  `character_numerical` varchar(50) DEFAULT NULL,
  `character_dependency` varchar(50) DEFAULT NULL,
  `character_reason` varchar(50) DEFAULT NULL,
  `design_require` varchar(50) DEFAULT NULL,
  `proccess_require` varchar(50) DEFAULT NULL,
  `product_measure` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_design-character_b2
-- ----------------------------

-- ----------------------------
-- Table structure for tb_design_character_a3
-- ----------------------------
DROP TABLE IF EXISTS `tb_design_character_a3`;
CREATE TABLE `tb_design_character_a3` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `character_name` varchar(50) DEFAULT NULL,
  `character_numerical` varchar(50) DEFAULT NULL,
  `character_dependency` varchar(50) DEFAULT NULL,
  `character_reason` varchar(50) DEFAULT NULL,
  `design_require` varchar(50) DEFAULT NULL,
  `proccess_require` varchar(50) DEFAULT NULL,
  `product_measure` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_design_character_a3
-- ----------------------------

-- ----------------------------
-- Table structure for tb_ecord_check_confirmation_form_b8
-- ----------------------------
DROP TABLE IF EXISTS `tb_ecord_check_confirmation_form_b8`;
CREATE TABLE `tb_ecord_check_confirmation_form_b8` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `project` varchar(50) DEFAULT NULL,
  `part` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `recorder` varchar(50) DEFAULT NULL,
  `record_date` varchar(50) DEFAULT NULL,
  `verify_results` varchar(50) DEFAULT NULL,
  `confirmor` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ecord_check_confirmation_form_b8
-- ----------------------------

-- ----------------------------
-- Table structure for tb_forbidden_process_b9
-- ----------------------------
DROP TABLE IF EXISTS `tb_forbidden_process_b9`;
CREATE TABLE `tb_forbidden_process_b9` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `disable_process_name` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `product_name_involved` varchar(50) DEFAULT NULL,
  `drawing_number_involved` varchar(50) DEFAULT NULL,
  `measure` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_forbidden_process_b9
-- ----------------------------

-- ----------------------------
-- Table structure for tb_handling_and_implementationout_of_tolerance_and_substitute_b6
-- ----------------------------
DROP TABLE IF EXISTS `tb_handling_and_implementationout_of_tolerance_and_substitute_b6`;
CREATE TABLE `tb_handling_and_implementationout_of_tolerance_and_substitute_b6` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `product_drawing_number` varchar(50) DEFAULT NULL,
  `question_number` varchar(50) DEFAULT NULL,
  `reason_classification` varchar(50) DEFAULT NULL,
  `question_content` varchar(50) DEFAULT NULL,
  `design_check_confirmation_conclusion` varchar(50) DEFAULT NULL,
  `military_representative_processing_conclusion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_handling_and_implementationout_of_tolerance_and_substitute_b6
-- ----------------------------

-- ----------------------------
-- Table structure for tb_implementation_of_product_residual_control_measures_a20
-- ----------------------------
DROP TABLE IF EXISTS `tb_implementation_of_product_residual_control_measures_a20`;
CREATE TABLE `tb_implementation_of_product_residual_control_measures_a20` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(50) DEFAULT NULL,
  `anti-removal_control_measures` varchar(50) DEFAULT NULL,
  `carry_out_inspections` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_implementation_of_product_residual_control_measures_a20
-- ----------------------------

-- ----------------------------
-- Table structure for tb_input_and_output_interface_data_sheet_a13
-- ----------------------------
DROP TABLE IF EXISTS `tb_input_and_output_interface_data_sheet_a13`;
CREATE TABLE `tb_input_and_output_interface_data_sheet_a13` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `interface_size_requirements` varchar(50) DEFAULT NULL,
  `measure_size` varchar(50) DEFAULT NULL,
  `confirmor` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT '',
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_input_and_output_interface_data_sheet_a13
-- ----------------------------

-- ----------------------------
-- Table structure for tb_interface_and_outlook_check_b10
-- ----------------------------
DROP TABLE IF EXISTS `tb_interface_and_outlook_check_b10`;
CREATE TABLE `tb_interface_and_outlook_check_b10` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `drawing_number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `interface_position_and_element` varchar(50) DEFAULT NULL,
  `outlook_check` varchar(50) DEFAULT NULL,
  `outlook_check_result` varchar(255) DEFAULT NULL,
  `size_and_performance_record` varchar(50) DEFAULT NULL,
  `size_and_performance_record_result` varchar(50) DEFAULT NULL,
  `confirmor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_interface_and_outlook_check_b10
-- ----------------------------

-- ----------------------------
-- Table structure for tb_key_material_envelope_statistics_a6
-- ----------------------------
DROP TABLE IF EXISTS `tb_key_material_envelope_statistics_a6`;
CREATE TABLE `tb_key_material_envelope_statistics_a6` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliated_system` varchar(50) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `pruduct_drawing_number` varchar(50) DEFAULT NULL,
  `key_raw_materials_name` varchar(50) DEFAULT NULL,
  `key_raw_materials_parameter_name` varchar(50) DEFAULT NULL,
  `key_raw_materials_parameter_require_value` varchar(50) DEFAULT NULL,
  `key_raw_materials_parameter_measured_value` varchar(50) DEFAULT NULL,
  `upper_boundary` varchar(50) DEFAULT NULL,
  `lower_boundary` varchar(50) DEFAULT NULL,
  `within_the_successful_data_envelope_or_not` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_key_material_envelope_statistics_a6
-- ----------------------------

-- ----------------------------
-- Table structure for tb_key_material_envelope_statistics_b5
-- ----------------------------
DROP TABLE IF EXISTS `tb_key_material_envelope_statistics_b5`;
CREATE TABLE `tb_key_material_envelope_statistics_b5` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliated_system` varchar(50) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `pruduct_drawing_number` varchar(50) DEFAULT NULL,
  `key_raw_materials_name` varchar(50) DEFAULT NULL,
  `key_raw_materials_parameter_name` varchar(50) DEFAULT NULL,
  `key_raw_materials_parameter_require_value` varchar(50) DEFAULT NULL,
  `key_raw_materials_parameter_measured_value` varchar(50) DEFAULT NULL,
  `upper_boundary` varchar(50) DEFAULT NULL,
  `lower_boundary` varchar(50) DEFAULT NULL,
  `within_the_successful_data_envelope_or_not` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_key_material_envelope_statistics_b5
-- ----------------------------

-- ----------------------------
-- Table structure for tb_list_of_ground_support_equipment_and_software_products_a23
-- ----------------------------
DROP TABLE IF EXISTS `tb_list_of_ground_support_equipment_and_software_products_a23`;
CREATE TABLE `tb_list_of_ground_support_equipment_and_software_products_a23` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `ground_support_equipment_name` varchar(50) DEFAULT NULL,
  `software_product_name` varchar(50) DEFAULT NULL,
  `backup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_list_of_ground_support_equipment_and_software_products_a23
-- ----------------------------

-- ----------------------------
-- Table structure for tb_mandatory_checkpoint_check_confirmation_form_a18
-- ----------------------------
DROP TABLE IF EXISTS `tb_mandatory_checkpoint_check_confirmation_form_a18`;
CREATE TABLE `tb_mandatory_checkpoint_check_confirmation_form_a18` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliated_system` varchar(50) DEFAULT NULL,
  `product_name_and_code` varchar(50) DEFAULT NULL,
  `mandatory_checkpoint_name` varchar(50) DEFAULT NULL,
  `test_items` varchar(50) DEFAULT NULL,
  `decision_criterion` varchar(50) DEFAULT NULL,
  `test_method` varchar(50) DEFAULT NULL,
  `test_result` varchar(50) DEFAULT NULL,
  `confirmor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mandatory_checkpoint_check_confirmation_form_a18
-- ----------------------------

-- ----------------------------
-- Table structure for tb_mandatory_checkpoint_check_confirmation_form_b11
-- ----------------------------
DROP TABLE IF EXISTS `tb_mandatory_checkpoint_check_confirmation_form_b11`;
CREATE TABLE `tb_mandatory_checkpoint_check_confirmation_form_b11` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliated_system` varchar(50) DEFAULT NULL,
  `product_name_and_code` varchar(50) DEFAULT NULL,
  `mandatory_checkpoint_name` varchar(50) DEFAULT NULL,
  `test_items` varchar(50) DEFAULT NULL,
  `decision_criterion` varchar(50) DEFAULT NULL,
  `test_method` varchar(50) DEFAULT NULL,
  `test_result` varchar(50) DEFAULT NULL,
  `confirmor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mandatory_checkpoint_check_confirmation_form_b11
-- ----------------------------

-- ----------------------------
-- Table structure for tb_non-conforming_product_trials_and_measure_a21
-- ----------------------------
DROP TABLE IF EXISTS `tb_non-conforming_product_trials_and_measure_a21`;
CREATE TABLE `tb_non-conforming_product_trials_and_measure_a21` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `unqualified_products` varchar(11) DEFAULT NULL,
  `control_measure` varchar(50) DEFAULT NULL,
  `carry_out_inspections` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_non-conforming_product_trials_and_measure_a21
-- ----------------------------

-- ----------------------------
-- Table structure for tb_out-of-tolerance_statistics_a14
-- ----------------------------
DROP TABLE IF EXISTS `tb_out-of-tolerance_statistics_a14`;
CREATE TABLE `tb_out-of-tolerance_statistics_a14` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `product_drawing_number` varchar(50) DEFAULT NULL,
  `product_number` varchar(50) DEFAULT NULL,
  `drawings_and_technical_requirements` varchar(50) DEFAULT NULL,
  `actual_data` varchar(50) DEFAULT NULL,
  `cause_of_overshoot` varchar(50) DEFAULT NULL,
  `processing_order_number` varchar(50) DEFAULT NULL,
  `approver` varchar(50) DEFAULT NULL,
  `cause_classification` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_out-of-tolerance_statistics_a14
-- ----------------------------

-- ----------------------------
-- Table structure for tb_process_control_key_characteristic_a5
-- ----------------------------
DROP TABLE IF EXISTS `tb_process_control_key_characteristic_a5`;
CREATE TABLE `tb_process_control_key_characteristic_a5` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name_and_drawing_number` varchar(50) DEFAULT NULL,
  `key_characteristics` varchar(50) DEFAULT NULL,
  `key_characteristics_analysis` varchar(50) DEFAULT NULL,
  `main_control_requirements` varchar(50) DEFAULT NULL,
  `process_key_characteristics` varchar(50) DEFAULT NULL,
  `process_control_key_requirements` varchar(50) DEFAULT NULL,
  `measured_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_process_control_key_characteristic_a5
-- ----------------------------

-- ----------------------------
-- Table structure for tb_process_control_key_characteristic_b4
-- ----------------------------
DROP TABLE IF EXISTS `tb_process_control_key_characteristic_b4`;
CREATE TABLE `tb_process_control_key_characteristic_b4` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name_and_drawing_number` varchar(50) DEFAULT NULL,
  `key_characteristics` varchar(50) DEFAULT NULL,
  `key_characteristics_analysis` varchar(50) DEFAULT NULL,
  `main_control_requirements` varchar(50) DEFAULT NULL,
  `process_key_characteristics` varchar(50) DEFAULT NULL,
  `process_control_key_requirements` varchar(50) DEFAULT NULL,
  `measured_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_process_control_key_characteristic_b4
-- ----------------------------

-- ----------------------------
-- Table structure for tb_production_process_multimedia_record_a12
-- ----------------------------
DROP TABLE IF EXISTS `tb_production_process_multimedia_record_a12`;
CREATE TABLE `tb_production_process_multimedia_record_a12` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `project` varchar(50) DEFAULT NULL,
  `products_drawing_number` varchar(50) DEFAULT NULL,
  `products_serial_number` varchar(50) DEFAULT NULL,
  `useing` varchar(50) DEFAULT NULL,
  `part` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `picture_number` varchar(50) DEFAULT NULL,
  `record_date` varchar(50) DEFAULT NULL,
  `recorder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_production_process_multimedia_record_a12
-- ----------------------------

-- ----------------------------
-- Table structure for tb_restricted_process_statistics_a17
-- ----------------------------
DROP TABLE IF EXISTS `tb_restricted_process_statistics_a17`;
CREATE TABLE `tb_restricted_process_statistics_a17` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `forbidden_process_name` varchar(50) DEFAULT NULL,
  `reason_of_use` varchar(50) DEFAULT NULL,
  `control_measure` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_restricted_process_statistics_a17
-- ----------------------------

-- ----------------------------
-- Table structure for tb_substituting_statistics_a15
-- ----------------------------
DROP TABLE IF EXISTS `tb_substituting_statistics_a15`;
CREATE TABLE `tb_substituting_statistics_a15` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `product_drawing_number` varchar(50) DEFAULT NULL,
  `product_number` varchar(50) DEFAULT NULL,
  `required_material_device_name_specification` varchar(50) DEFAULT NULL,
  `substitute_material_device_name_specification` varchar(50) DEFAULT NULL,
  `substitute_reason` varchar(50) DEFAULT NULL,
  `processing_order_number` varchar(50) DEFAULT NULL,
  `approver` varchar(50) DEFAULT NULL,
  `cause_classification` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_substituting_statistics_a15
-- ----------------------------

-- ----------------------------
-- Table structure for tb_systemtree
-- ----------------------------
DROP TABLE IF EXISTS `tb_systemtree`;
CREATE TABLE `tb_systemtree` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_systemtree
-- ----------------------------
INSERT INTO `tb_systemtree` VALUES ('1', '0', 'NWPU-1动力系统', null);
INSERT INTO `tb_systemtree` VALUES ('2', '0', 'NWPU-2动力系统', null);
INSERT INTO `tb_systemtree` VALUES ('3', '29', '组合件配套表', null);
INSERT INTO `tb_systemtree` VALUES ('4', '29', '数据包项目清单', null);
INSERT INTO `tb_systemtree` VALUES ('5', '29', '发动机总体设计关键特性表', null);
INSERT INTO `tb_systemtree` VALUES ('6', '29', '设计关键特性表', null);
INSERT INTO `tb_systemtree` VALUES ('7', '29', '工艺关键特性表', null);
INSERT INTO `tb_systemtree` VALUES ('8', '29', '过程控制关键特性表', null);
INSERT INTO `tb_systemtree` VALUES ('9', '29', '关键原材料“包络性”统计表', null);
INSERT INTO `tb_systemtree` VALUES ('10', '29', '锁紧螺母检查数据表', null);
INSERT INTO `tb_systemtree` VALUES ('11', '29', '元器件选用情况清单', null);
INSERT INTO `tb_systemtree` VALUES ('12', '29', '发动机系统功能性能数据表', null);
INSERT INTO `tb_systemtree` VALUES ('13', '29', '部（组）件功能性能数据表', null);
INSERT INTO `tb_systemtree` VALUES ('14', '29', '生产过程多媒体记录表', null);
INSERT INTO `tb_systemtree` VALUES ('15', '29', '输入输出接口数据表', null);
INSERT INTO `tb_systemtree` VALUES ('16', '29', '超差情况统计表', null);
INSERT INTO `tb_systemtree` VALUES ('17', '29', '代料情况统计表', null);
INSERT INTO `tb_systemtree` VALUES ('18', '29', '焊缝质量情况统计表', null);
INSERT INTO `tb_systemtree` VALUES ('19', '29', '禁限用工艺落实情况统计表', null);
INSERT INTO `tb_systemtree` VALUES ('20', '29', '强制检验点检查确认表', null);
INSERT INTO `tb_systemtree` VALUES ('21', '29', '拧紧力矩检查确认表', null);
INSERT INTO `tb_systemtree` VALUES ('22', '29', '产品多余物控制措施落实情况统计表', null);
INSERT INTO `tb_systemtree` VALUES ('23', '29', '不合格品审理及措施落实情况统计表', null);
INSERT INTO `tb_systemtree` VALUES ('24', '29', '验收试验履历、试验条件、试验结果及多媒体记录表', null);
INSERT INTO `tb_systemtree` VALUES ('25', '29', '地面保障设备和软件产品清单', null);
INSERT INTO `tb_systemtree` VALUES ('26', '29', '“九新”检查确认表', null);
INSERT INTO `tb_systemtree` VALUES ('27', '29', '外包产品验收检查确认表', null);
INSERT INTO `tb_systemtree` VALUES ('28', '29', '质量问题归零汇总表', null);
INSERT INTO `tb_systemtree` VALUES ('29', '1', 'NWPU-001', null);

-- ----------------------------
-- Table structure for tb_tightening_torque_check_confirmation_form_a19
-- ----------------------------
DROP TABLE IF EXISTS `tb_tightening_torque_check_confirmation_form_a19`;
CREATE TABLE `tb_tightening_torque_check_confirmation_form_a19` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `threaded_joint_position` varchar(50) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `standard_part_code` varchar(50) DEFAULT NULL,
  `fastener_specifications` varchar(50) DEFAULT NULL,
  `required_value` varchar(50) DEFAULT NULL,
  `measure_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tightening_torque_check_confirmation_form_a19
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tightening_torque_check_confirmation_form_b7
-- ----------------------------
DROP TABLE IF EXISTS `tb_tightening_torque_check_confirmation_form_b7`;
CREATE TABLE `tb_tightening_torque_check_confirmation_form_b7` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `threaded_joint_position` varchar(50) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `standard_part_code` varchar(50) DEFAULT NULL,
  `fastener_specifications` varchar(50) DEFAULT NULL,
  `required_value` varchar(50) DEFAULT NULL,
  `measure_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tightening_torque_check_confirmation_form_b7
-- ----------------------------

-- ----------------------------
-- Table structure for tb_weld_quality_statistics_a16
-- ----------------------------
DROP TABLE IF EXISTS `tb_weld_quality_statistics_a16`;
CREATE TABLE `tb_weld_quality_statistics_a16` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `part` varchar(50) DEFAULT NULL,
  `weld_position` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `pipe_diameter_at_the_weld` varchar(50) DEFAULT NULL,
  `connector_type` varchar(50) DEFAULT NULL,
  `welding_method` varchar(50) DEFAULT NULL,
  `weld_grade` varchar(50) DEFAULT NULL,
  `work_pressure_mpa` varchar(50) DEFAULT NULL,
  `contact_medium` varchar(50) DEFAULT NULL,
  `welding_quality` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_weld_quality_statistics_a16
-- ----------------------------
