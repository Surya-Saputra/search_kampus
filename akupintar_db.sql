/*
Navicat MySQL Data Transfer

Source Server         : lokal_tes
Source Server Version : 100424
Source Host           : localhost:3306
Source Database       : aku_pintar_db

Target Server Type    : MYSQL
Target Server Version : 100424
File Encoding         : 65001

Date: 2022-10-18 14:22:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`uuid`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`connection`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`queue`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`payload`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`exception`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`failed_at`  timestamp NOT NULL DEFAULT current_timestamp() ,
PRIMARY KEY (`id`),
UNIQUE INDEX `failed_jobs_uuid_unique` (`uuid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`migration`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`batch`  int(11) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1'), ('2', '2014_10_12_100000_create_password_resets_table', '1'), ('3', '2019_08_19_000000_create_failed_jobs_table', '1'), ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1'), ('5', '2022_10_18_060200_create_user_table', '1');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
`email`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`token`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`created_at`  timestamp NULL DEFAULT '' ,
INDEX `password_resets_email_index` (`email`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci

;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`tokenable_type`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`tokenable_id`  bigint(20) UNSIGNED NOT NULL ,
`name`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`token`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`abilities`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL ,
`last_used_at`  timestamp NULL DEFAULT '' ,
`created_at`  timestamp NULL DEFAULT '' ,
`updated_at`  timestamp NULL DEFAULT '' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `personal_access_tokens_token_unique` (`token`) USING BTREE ,
INDEX `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`, `tokenable_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`nama_user`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`deleted_at`  timestamp NULL DEFAULT '' ,
`created_at`  timestamp NULL DEFAULT '' ,
`updated_at`  timestamp NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'tes', null, '2022-10-18 14:14:56', '2022-10-18 14:14:56');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`email`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`email_verified_at`  timestamp NULL DEFAULT '' ,
`password`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL ,
`remember_token`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' ,
`created_at`  timestamp NULL DEFAULT '' ,
`updated_at`  timestamp NULL DEFAULT '' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `users_email_unique` (`email`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Auto increment value for failed_jobs
-- ----------------------------
ALTER TABLE `failed_jobs` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for migrations
-- ----------------------------
ALTER TABLE `migrations` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for personal_access_tokens
-- ----------------------------
ALTER TABLE `personal_access_tokens` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for user
-- ----------------------------
ALTER TABLE `user` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for users
-- ----------------------------
ALTER TABLE `users` AUTO_INCREMENT=1;
SET FOREIGN_KEY_CHECKS=1;
