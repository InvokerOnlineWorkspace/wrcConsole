/******************************************/
/**           wrc-船支信息表             **/
/*****************************************/
DROP TABLE IF EXISTS wrc_boat_info;
CREATE TABLE wrc_boat_info (
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  boat_name VARCHAR(50) NOT NULL COMMENT '帆船名字',
  min_price INT(7) DEFAULT 0 COMMENT '以元为单位',
  max_price INT(7) DEFAULT 0 COMMENT '以元为单位',
  boat_type VARCHAR(36) DEFAULT NULL COMMENT '帆船型号',
  boat_brand VARCHAR(36) DEFAULT NULL COMMENT '帆船品牌',
  dest_id VARCHAR(36) DEFAULT  NULL COMMENT '目的地id',
  boat_seat INT(7) DEFAULT 0 COMMENT '载客量',
  boat_detail VARCHAR(500) DEFAULT NULL COMMENT '帆船详细',
  album_id VARCHAR(36) NOT NULL COMMENT '相册id',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-船支信息表';
/******************************************/
/**           wrc-目的地信息表            **/
/*****************************************/
DROP TABLE IF EXISTS wrc_destination_info;
CREATE TABLE wrc_destination_info(
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  destination_cn_name VARCHAR (36) NOT NULL COMMENT '目的地中文名称',
  destination_en_name VARCHAR (36) NOT NULL COMMENT '目的地英文名称',
  destination_intro VARCHAR(255) DEFAULT NULL COMMENT '目的地简介',
  weather VARCHAR(255) DEFAULT NULL COMMENT '目的地气候',
  exit_entry VARCHAR(255) DEFAULT NULL COMMENT '目的地出入境',
  message_mode VARCHAR(255) DEFAULT NULL COMMENT '目的地通讯方式',
  trade VARCHAR(255) DEFAULT NULL COMMENT '目的地交易方式（货币）',
  medical_advice VARCHAR(255) DEFAULT NULL COMMENT '目的地医疗咨询',
  useful_advice VARCHAR(255) DEFAULT NULL COMMENT '目的地实用咨询',
  how_to_arrived VARCHAR(255) DEFAULT NULL COMMENT '目的地航班咨询',
  public_utility VARCHAR(255) DEFAULT NULL COMMENT '目的地公共设施',
  album_id VARCHAR(36) NOT NULL COMMENT '相册id',
  key_word VARCHAR(100) DEFAULT NULL COMMENT '目的地关键字',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-目的地信息表';
/******************************************/
/**           wrc-航海计划信息表          **/
/*****************************************/
DROP TABLE IF EXISTS wrc_airroute_info;
CREATE TABLE wrc_airroute_info(
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  airroute_name VARCHAR(36) DEFAULT NULL COMMENT '活动名称',
  airroute_intro VARCHAR(255) DEFAULT NULL COMMENT '活动简介',
  destination_id VARCHAR(36) NOT NULL COMMENT '目的地id',
  album_id VARCHAR(36) NOT NULL COMMENT '相册id',
  key_word VARCHAR(100) DEFAULT NULL COMMENT '活动关键字',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-航海计划信息表';
/******************************************/
/**        wrc-航海计划特色详情表          **/
/*****************************************/
DROP TABLE IF EXISTS wrc_airroute_feature_detail;
CREATE TABLE wrc_airroute_feature_detail(
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  feature_name VARCHAR(36) DEFAULT NULL COMMENT '特色名称',
  feature_context VARCHAR(500) DEFAULT NULL COMMENT '特色内容',
  album_id VARCHAR(36) NOT NULL COMMENT '相册id',
  airroute_id VARCHAR(36) DEFAULT NULL COMMENT '活动id',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-航海计划特色详情表';
/******************************************/
/**        wrc-航海计划行程详情表          **/
/*****************************************/
DROP TABLE IF EXISTS wrc_airroute_flow_detail;
CREATE TABLE wrc_airroute_flow_detail(
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  flow_name VARCHAR(36) DEFAULT NULL COMMENT '行程名称',
  flow_context VARCHAR(500) DEFAULT NULL COMMENT '行程内容',
  flow_order int(7) DEFAULT 0 COMMENT '行程排序，默认为0，0为最先',
  airroute_id VARCHAR(36) NOT NULL COMMENT '活动id',
  include_food VARCHAR(36) DEFAULT NULL COMMENT '用餐标准',
  include_rest VARCHAR(36) DEFAULT NULL COMMENT '住宿标准',
  album_id VARCHAR(36) DEFAULT NULL COMMENT '相册id',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-航海计划行程详情表';
/******************************************/
/**        wrc-航海计划费用详情表          **/
/*****************************************/
DROP TABLE IF EXISTS wrc_airroute_fee_detail;
CREATE TABLE wrc_airroute_fee_detail(
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  fee_total VARCHAR(500) DEFAULT NULL COMMENT '费用总额',
  total_remark VARCHAR(500) DEFAULT NULL COMMENT '总额备注',
  fee_include VARCHAR(500) DEFAULT NULL COMMENT '费用包含',
  include_remark VARCHAR(500) DEFAULT NULL COMMENT '费用包含备注',
  fee_have_not VARCHAR(500) DEFAULT NULL COMMENT '费用不包含',
  have_not_remark  VARCHAR(500) DEFAULT NULL COMMENT '费用不包含备注',
  refund_context VARCHAR(500) DEFAULT NULL COMMENT '退费说明',
  airroute_id VARCHAR(36) NOT NULL COMMENT '活动id',
  album_id VARCHAR(36) DEFAULT NULL COMMENT '相册id',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-航海计划费用详情表';
/******************************************/
/**              wrc-相册表              **/
/*****************************************/
DROP TABLE IF EXISTS wrc_album;
CREATE TABLE wrc_album(
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  album_name VARCHAR(36) NOT NULL COMMENT '修改人',
  fid VARCHAR(36) DEFAULT NULL COMMENT '父级id',
  cover_url VARCHAR(150) DEFAULT NULL COMMENT '封面图片',
  album_intro VARCHAR(255) DEFAULT NULL COMMENT '相册简介',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-相册表';
/******************************************/
/**              wrc-图片表              **/
/*****************************************/
DROP TABLE IF EXISTS wrc_pic;
CREATE TABLE wrc_pic(
  gmt_created DATETIME NOT NULL COMMENT '创建时间',
  gmt_modified DATETIME NOT NULL COMMENT '修改时间',
  created_by VARCHAR(32) COMMENT '创建人',
  modified_by VARCHAR(32) COMMENT '修改人',
  id VARCHAR(36) NOT NULL COMMENT '主键id,作为@BizId',
  pic_name VARCHAR(36) NOT NULL COMMENT '图片名称',
  pic_intro VARCHAR(255) DEFAULT NULL COMMENT '图片描述',
  pic_url VARCHAR(150) NOT NULL COMMENT '图片链接',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='wrc-图片表';