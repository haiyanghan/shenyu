-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- this file works for PostgreSQL, can not use "`" syntax.

INSERT INTO "public"."shenyu_dict" VALUES ('1629403902796107811', 'operator', 'OPERATOR', 'isBlank', 'isBlank', 'isBlank', 10, 1, '2023-08-10 11:11:18', '2023-08-10 11:11:18');

--- clickhouse plugin
INSERT INTO "public"."shenyu_dict" VALUES ('1572621976689762310', 'engine', 'engine', 'ReplicatedReplicatedMergeTree', 'ReplicatedReplicatedMergeTree', '', 2, 1, '2023-03-01 11:14:15', '2023-08-16 11:15:14');
INSERT INTO "public"."shenyu_dict" VALUES ('1572621976689762311', 'engine', 'engine', 'ReplicatedMergeTree', 'ReplicatedMergeTree', '', 3, 1, '2023-03-01 11:14:15', '2023-08-16 11:15:14');
INSERT INTO "public"."plugin_handle" VALUES ('1529402613204172737', '38', 'ttl', 'ttl', 3, 3, 10,  '{"required":"0","defaultValue":"30"}', '2023-03-01 11:14:15', '2023-08-16 11:15:14');
---- clickhouse plugin end

--elasticsearch plugin
UPDATE "public"."plugin_handle" SET plugin_id = '32', field = 'indexName', label = 'indexName', data_type = 2, type = 3, sort = 10, ext_obj = '{"required":"0","defaultValue":"shenyu-access-logging"}', date_created = '2022-06-19 22:00:00.000', date_updated = '2023-08-31 22:28:28.353' WHERE plugin_id = '32' AND field = 'index';
--elasticsearch plugin end


--dubbo plugin
UPDATE "public"."plugin_handle" SET plugin_id = '6', field = 'loadBalance', label = 'loadStrategy', data_type = 3, type = 2, sort = 0, ext_obj = NULL, date_created = '2022-06-19 22:00:00.000', date_updated = '2023-08-31 22:28:28.353' WHERE plugin_id = '6' AND field = 'loadBalance';
DELETE FROM "public"."plugin_handle" WHERE id = 1529403902779330602;
INSERT INTO "public"."plugin_handle" VALUES ('1529402613204173923', '6', 'retries', 'retries', 3, 2, 0, NULL, '2022-05-25 18:08:01', '2022-05-25 18:08:01');
INSERT INTO "public"."plugin_handle" VALUES ('1529402613204173924', '6', 'timeout', 'timeout', 3, 2, 0, NULL, '2022-05-25 18:08:01', '2022-05-25 18:08:01');
--dubbo plugin end

--alert notice menu
INSERT INTO "public"."resource" VALUES ('1697141926247763968','1346776175553376256','SHENYU.MENU.SYSTEM.MANAGMENT.ALERT','','/system/alert','',1,3,'alert',0,0,'',1,'2023-08-31 14:59:01','2023-08-31 06:59:01');
INSERT INTO "public"."resource" VALUES ('1697146375729025024', '1697141926247763968', 'SHENYU.BUTTON.SYSTEM.LIST', '', '', '', 2, 0, 'unordered-list', 1, 0, 'system:alert:list', 1, '2023-08-31 15:16:42', '2023-08-31 07:22:07');
INSERT INTO "public"."resource" VALUES ('1697145808210333696','1697141926247763968','SHENYU.BUTTON.SYSTEM.ADD','','','',2,0,'plus',1,0,'system:alert:add',1,'2023-08-31 15:14:26','2023-08-31 07:14:26');
INSERT INTO "public"."resource" VALUES ('1697146617513873408','1697141926247763968','SHENYU.BUTTON.SYSTEM.DELETE','','','',2,0,'delete',1,0,'system:alert:delete',1,'2023-08-31 15:17:39','2023-08-31 07:22:07');
INSERT INTO "public"."resource" VALUES ('1697146860540235776','1697141926247763968','SHENYU.BUTTON.SYSTEM.EDIT','','','',2,0,'edit',1,0,'system:alert:edit',1,'2023-08-31 15:18:37','2023-08-31 07:18:37');

INSERT INTO "public"."permission" VALUES ('1697141926281318400', '1346358560427216896', '1697141926247763968', '2023-08-31 14:59:01', '2023-08-31 06:59:01');
INSERT INTO "public"."permission" VALUES ('1697145808239693824', '1346358560427216896', '1697145808210333696', '2023-08-31 15:14:26', '2023-08-31 07:14:26');
INSERT INTO "public"."permission" VALUES ('1697146375754190848', '1346358560427216896', '1697146375729025024', '2023-08-31 15:16:42', '2023-08-31 07:16:42');
INSERT INTO "public"."permission" VALUES ('1697146617543233536', '1346358560427216896', '1697146617513873408', '2023-08-31 15:17:39', '2023-08-31 07:17:39');
INSERT INTO "public"."permission" VALUES ('1697146860569595904', '1346358560427216896', '1697146860540235776', '2023-08-31 15:18:37', '2023-08-31 07:18:37');
--alert notice menu end

-- add percentage field for rewrite plugin
INSERT INTO "public"."plugin_handle" VALUES ('1697146860569596304', '3', 'percentage', 'percentage', 1, 2, 3, NULL, '2023-09-15 20:25:53', '2023-09-15 20:25:53');

-- ----------------------------
-- Table structure for alert_receiver
-- ----------------------------
DROP TABLE IF EXISTS "public"."alert_receiver";
CREATE TABLE "public"."alert_receiver"
(
    "id"                   varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
    "name"                 varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "enable"               int4     NOT NULL,
    "type"                 int4     NOT NULL,
    "phone"                varchar(255) COLLATE "pg_catalog"."default",
    "email"                varchar(255) COLLATE "pg_catalog"."default",
    "hook_url"             varchar(255) COLLATE "pg_catalog"."default",
    "wechat_id"            varchar(255) COLLATE "pg_catalog"."default",
    "access_token"         varchar(255) COLLATE "pg_catalog"."default",
    "tg_bot_token"         varchar(255) COLLATE "pg_catalog"."default",
    "tg_user_id"           varchar(255) COLLATE "pg_catalog"."default",
    "slack_web_hook_url"   varchar(255) COLLATE "pg_catalog"."default",
    "corp_id"              varchar(255) COLLATE "pg_catalog"."default",
    "agent_id"             varchar(255) COLLATE "pg_catalog"."default",
    "app_secret"           varchar(255) COLLATE "pg_catalog"."default",
    "discord_channel_id"   varchar(255) COLLATE "pg_catalog"."default",
    "discord_bot_token"    varchar(255) COLLATE "pg_catalog"."default",
    "smn_ak"               varchar(255) COLLATE "pg_catalog"."default",
    "smn_sk"               varchar(255) COLLATE "pg_catalog"."default",
    "smn_project_id"       varchar(255) COLLATE "pg_catalog"."default",
    "smn_region"           varchar(255) COLLATE "pg_catalog"."default",
    "smn_topic_urn"        varchar(255) COLLATE "pg_catalog"."default",
    "match_all"            int4      NOT NULL,
    "labels"               varchar(255) COLLATE "pg_catalog"."default",
    "levels"               varchar(255) COLLATE "pg_catalog"."default",
    "date_created"  timestamp(6) NOT NULL DEFAULT timezone('UTC-8'::text, (now())::timestamp(0) without time zone),
    "date_updated"  timestamp(6) NOT NULL DEFAULT timezone('UTC-8'::text, (now())::timestamp(0) without time zone)
)
;
COMMENT ON COLUMN "public"."alert_receiver"."id" IS 'primary key id';
COMMENT ON COLUMN "public"."alert_receiver"."name" IS 'alarm receiver name';
COMMENT ON COLUMN "public"."alert_receiver"."enable" IS 'enable or not';
COMMENT ON COLUMN "public"."alert_receiver"."type" IS 'notice type 0-SMS 1-Email 2-webhook 3-WeChat Official Account 4-Enterprise WeChat Robot 5-DingTalk Robot 6-FeiShu Robot 7-Telegram Bot 8-SlackWebHook 9-Discord Bot 10-Enterprise WeChat';
COMMENT ON COLUMN "public"."alert_receiver"."match_all" IS 'match all or not';
COMMENT ON COLUMN "public"."alert_receiver"."date_created" IS 'create time';
COMMENT ON COLUMN "public"."alert_receiver"."date_updated" IS 'update time';


UPDATE "public"."plugin_handle" SET label = 'flowRuleEnable 1 or 0' WHERE id = '1529403902770941954';
UPDATE "public"."plugin_handle" SET label = 'degradeRuleEnable 1 or 0' WHERE id = '1529403902770941956';


INSERT INTO "public"."plugin" VALUES ('44', 'basicAuth', '{"defaultHandleJson":"{\"authorization\":\"test:test123\"}"}', 'Authentication', 150, 0, '2022-07-24 19:00:00', '2022-07-24 19:00:00', null);
INSERT INTO "public"."plugin_handle" VALUES ('1570591265492312086', '44', 'defaultHandleJson', 'defaultHandleJson', 2, 3, 2, '{"required":"0","defaultValue":"{\"authorization\":\"test:test123\"}","placeholder":""}', '2022-05-25 18:02:53', '2022-05-25 18:02:53');

-- logging rabbitmq plugin
INSERT INTO "public"."plugin" VALUES ('45', 'loggingRabbitMQ', '{"host":"127.0.0.1","port":5672,"password":"admin","username":"admin","exchangeName":"exchange.logging.plugin","queueName":"queue.logging.plugin","routingKey":"topic.logging","virtualHost":"/","exchangeType":"direct","durable":"true","exclusive":"false","autoDelete":"false"}', 'Logging', 171, 0, '2023-11-06 15:49:56.454', '2023-11-10 10:40:58.447', NULL);

INSERT INTO "public"."plugin_handle" VALUES ('1721435546642157568', '45', 'host', 'host', 2, 3, 0, '{"required":"1","defaultValue":"127.0.0.1","rule":""}', '2023-11-06 15:53:11.704', '2023-11-07 13:31:41.010');
INSERT INTO "public"."plugin_handle" VALUES ('1721435708743618560', '45', 'port', 'port', 1, 3, 0, '{"required":"1","defaultValue":"15672","rule":""}', '2023-11-06 15:53:50.352', '2023-11-07 13:31:41.016');
INSERT INTO "public"."plugin_handle" VALUES ('1721436368046264320', '45', 'password', 'password', 2, 3, 0, '{"required":"0","defaultValue":"admin","rule":""}', '2023-11-06 15:56:27.541', '2023-11-07 13:31:41.021');
INSERT INTO "public"."plugin_handle" VALUES ('1721436500343001088', '45', 'username', 'username', 2, 3, 0, '{"required":"0","defaultValue":"admin","rule":""}', '2023-11-06 15:56:59.084', '2023-11-07 13:31:41.025');
INSERT INTO "public"."plugin_handle" VALUES ('1721436639635836928', '45', 'exchangeName', 'exchangeName', 2, 3, 0, '{"required":"1","defaultValue":"","rule":""}', '2023-11-06 15:57:32.295', '2023-11-07 13:31:41.030');
INSERT INTO "public"."plugin_handle" VALUES ('1721436745583955968', '45', 'queueName', 'queueName', 2, 3, 0, '{"required":"1","defaultValue":"","rule":""}', '2023-11-06 15:57:57.553', '2023-11-07 13:31:41.035');
INSERT INTO "public"."plugin_handle" VALUES ('1721509996347617280', '45', 'routingKey', 'routingKey', 2, 3, 0, '{"required":"1","defaultValue":"","rule":""}', '2023-11-06 20:49:01.897', '2023-11-07 13:31:41.039');
INSERT INTO "public"."plugin_handle" VALUES ('1721725585461706752', '45', 'virtualHost', 'virtualHost', 2, 3, 0, '{"required":"1","defaultValue":"/","rule":""}', '2023-11-07 11:05:42.350', '2023-11-07 13:31:41.044');
INSERT INTO "public"."plugin_handle" VALUES ('1721725662875975680', '45', 'exchangeType', 'exchangeType', 2, 3, 0, '{"required":"1","defaultValue":"direct","rule":""}', '2023-11-07 11:06:00.803', '2023-11-07 13:31:41.048');
INSERT INTO "public"."plugin_handle" VALUES ('1722804180904927232', '45', 'durable', 'durable', 2, 3, 0, '{"required":"1","defaultValue":"true","placeholder":"true / false","rule":"/^(true|false)$/"}', '2023-11-07 11:06:00.803', '2023-11-07 13:31:41.048');
INSERT INTO "public"."plugin_handle" VALUES ('1722804370575548416', '45', 'exclusive', 'exclusive', 2, 3, 0, '{"required":"1","defaultValue":"false","placeholder":"true / false","rule":"/^(true|false)$/"}', '2023-11-07 11:06:00.803', '2023-11-07 13:31:41.048');
INSERT INTO "public"."plugin_handle" VALUES ('1722804461256400896', '45', 'autoDelete', 'autoDelete', 2, 3, 0, '{"required":"1","defaultValue":"false","placeholder":"true / false","rule":"/^(true|false)$/"}', '2023-11-07 11:06:00.803', '2023-11-07 13:31:41.048');
INSERT INTO "public"."plugin_handle" VALUES ('1722804548510507008', '45', 'args', 'args', 2, 3, 0, '{"required":"0","defaultValue":"","placeholder":"args json","rule":""}', '2023-11-07 11:06:00.803', '2023-11-07 13:31:41.048');
-- logging rabbitmq plugin end