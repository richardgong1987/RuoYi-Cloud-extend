CREATE TABLE `hx_condos`
(
    `id`          BIGINT PRIMARY KEY,
    `condo_name`  VARCHAR(200) DEFAULT '',
    `tower`       VARCHAR(30)  DEFAULT '',
    `phone`       VARCHAR(20)  DEFAULT '',
    `email`       VARCHAR(300) DEFAULT '',
    `Password`    VARCHAR(200) DEFAULT '',
    `about`       TEXT         DEFAULT '',
    `create_time` DATETIME     DEFAULT now(),
    `update_time` DATETIME     DEFAULT now()
) COMMENT '公寓表';

CREATE TABLE `hx_notice`
(
    `id`          BIGINT PRIMARY KEY,
    `subject`     VARCHAR(100) DEFAULT '',
    `body`        TEXT         DEFAULT '',
    `tower`       VARCHAR(50)  DEFAULT '',
    `condos_id`   BIGINT       DEFAULT 0,
    `create_by`   VARCHAR(100) DEFAULT '',
    `update_time` DATETIME     DEFAULT now(),
    `create_time` DATETIME     DEFAULT now()
) COMMENT '公告';

CREATE TABLE `hx_propertymanagement `
(
    `id`          BIGINT PRIMARY KEY,
    `tower`       VARCHAR(20),
    `condo_id`    BIGINT,
    `name`        VARCHAR(100),
    `phone`       VARCHAR(30),
    `type`        INT,
    `create_time` DATETIME DEFAULT now(),
    `update_time` DATETIME DEFAULT now()
) COMMENT '物业管理';

CREATE TABLE `hx_rooms`
(
    `id`          BIGINT PRIMARY KEY,
    `tower`       VARCHAR(20),
    `unit`        VARCHAR(30),
    `area`        INT,
    `type`        INT,
    `parking`     VARCHAR(50),
    `condo_id`    BIGINT,
    `update_time` DATETIME DEFAULT now(),
    `create_time` DATETIME DEFAULT now()
) COMMENT '房间信息';

CREATE TABLE `form`
(
    `id`          BIGINT PRIMARY KEY,
    `type`        INT COMMENT '(房东,住户,都是)',
    `room_id`     BIGINT,
    `hx_user_id`  BIGINT,
    `status`      INT COMMENT '(Pending,Approved,Rejected,Finished)',
    `update_time` DATETIME DEFAULT now(),
    `create_time` DATETIME DEFAULT now(),
    `action`      INT COMMENT '(搬入,搬出,gate pass,workpermit,MAINTANENCE)'
) COMMENT '(物业,前台)';

CREATE TABLE `hx_rooms_hx_user`
(
    `id`            BIGINT PRIMARY KEY,
    `hx_room_id`    BIGINT,
    `hx_user_email` BIGINT,
    `type`          INT COMMENT '(租户,房东)'
) COMMENT '房间与用户关系表';

CREATE TABLE `hx_paymentfree`
(
    `id`          BIGINT PRIMARY KEY,
    `create_time` DATETIME DEFAULT now()
) COMMENT '上传支付单据';

