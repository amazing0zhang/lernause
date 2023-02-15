/*
 Navicat Premium Data Transfer

 Source Server         : 2022
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : 2022travel

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 18/10/2022 17:53:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 评论', 7, 'add_comment');
INSERT INTO `auth_permission` VALUES (26, 'Can change 评论', 7, 'change_comment');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 评论', 7, 'delete_comment');
INSERT INTO `auth_permission` VALUES (28, 'Can view 评论', 7, 'view_comment');
INSERT INTO `auth_permission` VALUES (29, 'Can add 景点', 8, 'add_movie');
INSERT INTO `auth_permission` VALUES (30, 'Can change 景点', 8, 'change_movie');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 景点', 8, 'delete_movie');
INSERT INTO `auth_permission` VALUES (32, 'Can view 景点', 8, 'view_movie');
INSERT INTO `auth_permission` VALUES (33, 'Can add 标签', 9, 'add_tags');
INSERT INTO `auth_permission` VALUES (34, 'Can change 标签', 9, 'change_tags');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 标签', 9, 'delete_tags');
INSERT INTO `auth_permission` VALUES (36, 'Can view 标签', 9, 'view_tags');
INSERT INTO `auth_permission` VALUES (37, 'Can add 用户', 10, 'add_user');
INSERT INTO `auth_permission` VALUES (38, 'Can change 用户', 10, 'change_user');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 用户', 10, 'delete_user');
INSERT INTO `auth_permission` VALUES (40, 'Can view 用户', 10, 'view_user');
INSERT INTO `auth_permission` VALUES (41, 'Can add 用户偏好', 11, 'add_usertagprefer');
INSERT INTO `auth_permission` VALUES (42, 'Can change 用户偏好', 11, 'change_usertagprefer');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 用户偏好', 11, 'delete_usertagprefer');
INSERT INTO `auth_permission` VALUES (44, 'Can view 用户偏好', 11, 'view_usertagprefer');
INSERT INTO `auth_permission` VALUES (45, 'Can add 评分信息', 12, 'add_rate');
INSERT INTO `auth_permission` VALUES (46, 'Can change 评分信息', 12, 'change_rate');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 评分信息', 12, 'delete_rate');
INSERT INTO `auth_permission` VALUES (48, 'Can view 评分信息', 12, 'view_rate');
INSERT INTO `auth_permission` VALUES (49, 'Can add 评论点赞', 13, 'add_likecomment');
INSERT INTO `auth_permission` VALUES (50, 'Can change 评论点赞', 13, 'change_likecomment');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 评论点赞', 13, 'delete_likecomment');
INSERT INTO `auth_permission` VALUES (52, 'Can view 评论点赞', 13, 'view_likecomment');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$UXtqfmGCAaxq$5WGuUZ5PVCX2gueMzRT7ZO/7JKVzDSvxWAN+FJAAlTY=', '2022-10-18 09:52:03.473434', 1, 'admins', '', '', 'admins@qq.com', 1, 1, '2021-05-27 15:01:13.262848');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2022-10-18 09:42:56.732314', '42', '北京', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (2, '2022-10-18 09:43:55.523958', '2164', '颐和园', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (3, '2022-10-18 09:47:08.236544', '2165', '北京故宫', 1, '[{\"added\": {}}]', 8, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'travel', 'comment');
INSERT INTO `django_content_type` VALUES (13, 'travel', 'likecomment');
INSERT INTO `django_content_type` VALUES (8, 'travel', 'movie');
INSERT INTO `django_content_type` VALUES (12, 'travel', 'rate');
INSERT INTO `django_content_type` VALUES (9, 'travel', 'tags');
INSERT INTO `django_content_type` VALUES (10, 'travel', 'user');
INSERT INTO `django_content_type` VALUES (11, 'travel', 'usertagprefer');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-05-14 16:55:09.045628');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-05-14 16:55:09.287870');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-05-14 16:55:09.897360');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-05-14 16:55:10.194868');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-14 16:55:10.203915');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-05-14 16:55:10.321051');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-05-14 16:55:10.389146');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-05-14 16:55:10.466250');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-05-14 16:55:10.476250');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-05-14 16:55:10.537374');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-05-14 16:55:10.541367');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-14 16:55:10.549369');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-05-14 16:55:10.623443');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-14 16:55:10.708697');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-05-14 16:55:10.786920');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-05-14 16:55:10.795924');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2021-05-14 16:55:10.856981');
INSERT INTO `django_migrations` VALUES (18, 'travel', '0001_initial', '2021-05-14 16:55:11.378315');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('3a488x9afeggdk6cg5l1yfdbaivqvk7p', 'MzQ3OWU0OWY2MmY4NmMxNWEzNmYyNGE5ODEzNTgzNTU0MTA5ODYwMzp7Im9yZGVyIjpudWxsLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzhkNzk3ODQ0N2E0MjVmYzY4ZTc5YmE2M2NjNzYyZTE4NWFiZGFjMyIsInNpbXBsZXVpXzIwMjIxMDE4Ijp0cnVlfQ==', '2022-11-01 09:52:22.515903');
INSERT INTO `django_session` VALUES ('4uubwzca53t8eh3k115oydj6v448hqp9', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2021-06-10 14:57:16.848844');
INSERT INTO `django_session` VALUES ('fgn1z03zlr3nnxsjs01izblts05r38yh', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2022-11-01 09:49:40.636928');
INSERT INTO `django_session` VALUES ('i7i7vb5fz9qygtv092w9xfjbn99sa3k7', 'YTUyMjE5NmFmOWI0NDIzYWQ0MTJjOTg1ZjMyNjY3YWNhNGI3NjQyZTp7Im9yZGVyIjpudWxsLCJsb2dpbl9pbiI6dHJ1ZSwidXNlcl9pZCI6MTc5OSwibmFtZSI6ImFkbWlucyJ9', '2021-05-28 16:58:14.727806');
INSERT INTO `django_session` VALUES ('ozx7ppg96ug0c92vigkscoz61gqqdwkr', 'MzA5ZGVkZjRjMjY4MWE0NzhhZDZlNGVjODNiMzY1YWZlMjY2MzdkZjp7Im9yZGVyIjpudWxsLCJsb2dpbl9pbiI6dHJ1ZSwidXNlcl9pZCI6MTc5OSwibmFtZSI6ImFkbWlucyIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOGQ3OTc4NDQ3YTQyNWZjNjhlNzliYTYzY2M3NjJlMTg1YWJkYWMzIiwic2ltcGxldWlfMjAyMTA1MjciOnRydWV9', '2021-06-10 15:01:19.342647');
INSERT INTO `django_session` VALUES ('wq31yqmy1ljiv9zh4hx7dwtbs4v45hv5', 'MzQ3OWU0OWY2MmY4NmMxNWEzNmYyNGE5ODEzNTgzNTU0MTA5ODYwMzp7Im9yZGVyIjpudWxsLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzhkNzk3ODQ0N2E0MjVmYzY4ZTc5YmE2M2NjNzYyZTE4NWFiZGFjMyIsInNpbXBsZXVpXzIwMjIxMDE4Ijp0cnVlfQ==', '2022-11-01 09:47:19.243307');

-- ----------------------------
-- Table structure for travel_comment
-- ----------------------------
DROP TABLE IF EXISTS `travel_comment`;
CREATE TABLE `travel_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `movie_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `travel_comment_movie_id_9b667ff6_fk_travel_movie_id`(`movie_id`) USING BTREE,
  INDEX `travel_comment_user_id_78fc720d_fk_travel_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `travel_comment_movie_id_9b667ff6_fk_travel_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `travel_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `travel_comment_user_id_78fc720d_fk_travel_user_id` FOREIGN KEY (`user_id`) REFERENCES `travel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_comment
-- ----------------------------
INSERT INTO `travel_comment` VALUES (1, '2021年5月份来过，非常壮观！', '2021-05-27 14:59:18.688566', 2162, 1799);
INSERT INTO `travel_comment` VALUES (2, '来过', '2022-10-18 09:51:23.658631', 2162, 1799);

-- ----------------------------
-- Table structure for travel_likecomment
-- ----------------------------
DROP TABLE IF EXISTS `travel_likecomment`;
CREATE TABLE `travel_likecomment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `comment_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `travel_likecomment_comment_id_91bad987_fk_travel_comment_id`(`comment_id`) USING BTREE,
  INDEX `travel_likecomment_user_id_4ca1b0b1_fk_travel_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `travel_likecomment_comment_id_91bad987_fk_travel_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `travel_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `travel_likecomment_user_id_4ca1b0b1_fk_travel_user_id` FOREIGN KEY (`user_id`) REFERENCES `travel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_likecomment
-- ----------------------------
INSERT INTO `travel_likecomment` VALUES (1, 1, 1799);

-- ----------------------------
-- Table structure for travel_movie
-- ----------------------------
DROP TABLE IF EXISTS `travel_movie`;
CREATE TABLE `travel_movie`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `years` date NOT NULL,
  `leader` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_rate_nums` int(0) NOT NULL,
  `d_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(0) NOT NULL,
  `origin_image_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imdb_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2164 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_movie
-- ----------------------------
INSERT INTO `travel_movie` VALUES (2154, '黄山风景区', '黄山风景区', '安徽省', '2022-10-18', '黄山风景区', 5, '5', '世界文化与自然双重遗产，世界地质公园，国家AAAAA级旅游景区。黄山风景区位于安徽省黄山市黄山区。\r\n\r\n黄山五绝——奇松、怪石、云海、温泉、冬雪。素有“五岳归来不看山，黄山归来不看岳”。黄山不仅有美丽的景色，还有许多特产，是一个非常值得一去的地方。', 8, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/5_FGOSy5C.jpeg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2156, '九华山', '九华山', '中国安徽', '2022-10-18', '无', 5, '5', '“中国佛教四大名山”之一，国家AAAAA级旅游景区，位于安徽省池州市青阳县境内，素有“东南第一山”之称。\r\n\r\n九华山自山麓至天台峰，名刹古寺林立，文物古迹众多，尚存化城寺、月身宝殿、慧居寺、百岁宫等古刹78座，佛像1500余尊，藏有明万历皇帝颁赐的圣旨、藏经及其它玉印、法器等文物1300余件。\r\n\r\n它为皖南斜列的三大山系（黄山、九华山、天目山）之一。位于安徽省池州市东南境，西北隔长江与天柱山相望，被誉为国际性佛教道场。', 5, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/6_2RQ2XB3.jpg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2157, '天柱山', '天柱山', '中国安徽', '2022-10-18', '无', 5, '5', '天柱山位于安徽省安庆市潜山市西部，天柱山因独特的自然景观，名列安徽省三大名山之一（黄山、九华山、天柱山）。\r\n\r\n建国后开发为风景名胜区，景区获AAAAA级旅游景区、国家森林公园、国家地质公园、中国自然和文化遗产地等称号，并于2011年9月被联合国教科文组织正式批准成为世界地质公园。', 7, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/7_yYI0NO0.jpeg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2158, '西递宏村', '西递宏村', '中国安徽', '2022-10-18', '无', 5, '5', '皖南古村落位于安徽省黟县东，以西递村、宏村为代表。西递、宏村古民居村落位于中国东部安徽省黟县境内的黄山风景区。\r\n\r\n西递村至今完好地保存着典型的明清古村落风格，有\"活的古民居博物馆\"之称。宏村始建于公元1131年，现存明、清古建筑137幢。\r\n\r\n是中国封建社会后期文化的典型代表——徽州文化的载体，集中体现了工艺精湛的徽派民居特色。', 8, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/8_iGJqGng.jpeg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2159, '天堂寨风景区', '天堂寨风景区', '中国安徽', '2022-10-18', '无', 5, '5', '天堂寨（国家AAAAA级旅游景区、国家级自然保护区、国家森林公园、国家地质公园），是大别山第二高峰，由十一届全国人大常委会委员长吴邦国先生题字。\r\n\r\n位于安徽省金寨县与湖北省罗田县交界的地区，有“华东最后一片原始森林、植物的王国、花的海洋”的美称。是一处美得不像人间的地方。', 7, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/2_qiNTdwr.jpeg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2160, '八里河风景区', '八里河风景区', '中国安徽', '2022-10-18', '无', 5, '5', '八里河风景区是国家AAAAA级旅游景区，环保“全球500佳”，地处安徽省阜阳市东南的颍上县，其主园区即“世界风光”、“锦绣中华”、“碧波游览区”、“鸟语林”占地面3600亩，享有“天下第一农民公园”之美称。', 8, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/9_lUZmkZw.jpeg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2161, '齐云山风景区', '齐云山风景区', '中国安徽', '2022-10-18', '无', 5, '5', '齐云山风景名胜区，位于安徽省黄山市休宁县城西约15公里处。\r\n\r\n由齐云、白岳、歧山、万寿等9座山峰组成。共分月华街、云岩湖、楼上楼三个景区。齐云山风景名胜区，是一处以道教文化和丹霞地貌为特色的国家重点风景名胜区。\r\n\r\n1994年被国务院批准为国家级风景名胜区， 2005年被评为国家AAAA级旅游景区。 2006年被国务院公布为第六批全国重点文物保护单位。', 5, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/10_CfLoDjM.jpeg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2162, '广州塔', '广州塔（广东）', '中国广东', '2022-10-18', '无', 5, '5', '广州塔（英语：Canton Tower）又称广州新电视塔，昵称小蛮腰，其位于中国广东省广州市海珠区（艺洲岛）赤岗塔附近，距离珠江南岸125米，与珠江新城、花城广场、海心沙岛隔江相望。广州塔塔身主体高454米，天线桅杆高146米，总高度600米 [1-2]  。是中国第二高塔，仅次于上海中心大厦 [3]  ，是国家AAAA级旅游景区。\r\n广州塔是广州市的地标工程，电视塔可抵御8级地震、12级台风，设计使用年限超过100年 [1]  。广州塔塔身168~334.4米处设有“蜘蛛侠栈道”，是世界最高最长的空中漫步云梯。塔身422.8米处设有旋转餐厅，是世界最高的旋转餐厅 [4]  。塔身顶部450~454米处设有摩天轮，是世界最高摩天轮 [5]  。天线桅杆455~485米处设有“极速云霄”速降游乐项目，是世界最高的垂直速降游乐项目 [6]  。\r\n广州塔隶属广州城投集团，由广州市建筑集团有限公司和上海建工集团负责施工，总建筑面积114054平方米，2009年9月竣工，2010年9月30日正式对外开放，2010年10月1日正式公开售票接待游客 [7]  。广州塔有5个功能区和多种游乐设施，包括户外观景平台、摩天轮、极速云霄游乐项目，有2个观光大厅，有悬空走廊，天梯，4D和3D动感影院，中西美食，会展设施，购物商场及科普展示厅。', 21, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/1_u0NEneK.jpg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2163, '广州五羊石像', '广州五羊石像', '中国广东', '2022-10-18', '无', 5, '5', '《五羊石像》是由尹积昌、陈本宗、孔繁纬创作的花岗岩城市雕塑，始建于1960年4月，位于广州市越秀公园内的越秀山木壳岗。\r\n《五羊石像》整个石像连基座高11米。主羊头部高高昂起，口中衔穗，回眸微笑，其余四羊环绕于主羊周围，或戏耍，或吃草。五羊大小不一，姿态各异，造型优美，已经成为广州城市的标志。', 7, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'movie_cover/13_HUjBGTI.jpg', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `travel_movie` VALUES (2164, '颐和园', '颐和园', '北京', '2022-10-18', '颐和园前身为清清园，始建于清乾隆十五年，坐落在北京西郊', 5, '5', '颐和园前身为清清园，始建于清乾隆十五年，坐落在北京西郊，与承德避暑山庄、抽政园、留园并称为中国四大名园。它是以昆明湖、万寿山为基址，以杭州西湖为蓝本，没取江南园林的设计手法而建成的一座大型山水园林，也是保存较完整的一座皇家行宫御苑，被誉为“皇家园林博物馆”，也是国家重点旅游景点。北京颐和园浸透着中国人民的血汗，体规了中国人民的智慧和创造，展示出中国造园艺术的精华。', 53, 'https://www.maigoo.com/citiao/3378.html', 'movie_cover/1_h4MjYVm.jpg', 'https://www.maigoo.com/citiao/3378.html');
INSERT INTO `travel_movie` VALUES (2165, '北京故宫', '北京市东城区景山前街4号', '北京', '2022-10-18', '很受欢迎~', 5, '5', '北京故宫是中国明清两代的皇家官殿，旧称紫禁城，与法国凡尔赛宫、英国白金汉宫、美国白宫、俄罗斯克里姆林宫并称世界五大宫殿。北京故宫博物院始建于1925年10月10日，是一座中国综合性博物馆，是中国最大的古代文化艺术博物馆，是第一批全国爱国主义教育示范基。北京故官博物院收藏品包括但不限于明朝、清朝两代皇宫及其收藏，涵盖几乎整个古代中国文明发展史和几乎所有文物门类。', 53, 'https://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E6%95%85%E5%AE%AB/345415?fromtitle=%E6%95%85%E5%AE%AB&fromid=9326&fr=aladdin', 'movie_cover/2.jpg', 'https://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E6%95%85%E5%AE%AB/345415?fromtitle=%E6%95%85%E5%AE%AB&fromid=9326&fr=aladdin');

-- ----------------------------
-- Table structure for travel_movie_collect
-- ----------------------------
DROP TABLE IF EXISTS `travel_movie_collect`;
CREATE TABLE `travel_movie_collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `movie_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `travel_movie_collect_movie_id_user_id_3d3205b6_uniq`(`movie_id`, `user_id`) USING BTREE,
  INDEX `travel_movie_collect_user_id_db6d6bd7_fk_travel_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `travel_movie_collect_movie_id_1b5095ed_fk_travel_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `travel_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `travel_movie_collect_user_id_db6d6bd7_fk_travel_user_id` FOREIGN KEY (`user_id`) REFERENCES `travel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 609 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_movie_collect
-- ----------------------------
INSERT INTO `travel_movie_collect` VALUES (602, 2156, 1797);
INSERT INTO `travel_movie_collect` VALUES (603, 2157, 1798);
INSERT INTO `travel_movie_collect` VALUES (604, 2159, 1798);
INSERT INTO `travel_movie_collect` VALUES (605, 2160, 1798);
INSERT INTO `travel_movie_collect` VALUES (606, 2161, 1797);
INSERT INTO `travel_movie_collect` VALUES (607, 2162, 1796);
INSERT INTO `travel_movie_collect` VALUES (618, 2162, 1799);
INSERT INTO `travel_movie_collect` VALUES (608, 2163, 1796);
INSERT INTO `travel_movie_collect` VALUES (617, 2163, 1799);
INSERT INTO `travel_movie_collect` VALUES (609, 2164, 1796);
INSERT INTO `travel_movie_collect` VALUES (610, 2164, 1797);
INSERT INTO `travel_movie_collect` VALUES (611, 2164, 1798);
INSERT INTO `travel_movie_collect` VALUES (612, 2164, 1799);
INSERT INTO `travel_movie_collect` VALUES (613, 2165, 1796);
INSERT INTO `travel_movie_collect` VALUES (614, 2165, 1797);
INSERT INTO `travel_movie_collect` VALUES (615, 2165, 1798);
INSERT INTO `travel_movie_collect` VALUES (616, 2165, 1799);

-- ----------------------------
-- Table structure for travel_movie_tags
-- ----------------------------
DROP TABLE IF EXISTS `travel_movie_tags`;
CREATE TABLE `travel_movie_tags`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `movie_id` int(0) NOT NULL,
  `tags_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `travel_movie_tags_movie_id_tags_id_aa90bb88_uniq`(`movie_id`, `tags_id`) USING BTREE,
  INDEX `travel_movie_tags_tags_id_3fe3b4a5_fk_travel_tags_id`(`tags_id`) USING BTREE,
  CONSTRAINT `travel_movie_tags_movie_id_dd587a46_fk_travel_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `travel_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `travel_movie_tags_tags_id_3fe3b4a5_fk_travel_tags_id` FOREIGN KEY (`tags_id`) REFERENCES `travel_tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5493 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_movie_tags
-- ----------------------------
INSERT INTO `travel_movie_tags` VALUES (5485, 2156, 26);
INSERT INTO `travel_movie_tags` VALUES (5486, 2157, 26);
INSERT INTO `travel_movie_tags` VALUES (5487, 2158, 26);
INSERT INTO `travel_movie_tags` VALUES (5488, 2159, 26);
INSERT INTO `travel_movie_tags` VALUES (5489, 2160, 26);
INSERT INTO `travel_movie_tags` VALUES (5490, 2161, 26);
INSERT INTO `travel_movie_tags` VALUES (5491, 2162, 27);
INSERT INTO `travel_movie_tags` VALUES (5492, 2163, 27);
INSERT INTO `travel_movie_tags` VALUES (5493, 2164, 42);
INSERT INTO `travel_movie_tags` VALUES (5494, 2165, 42);

-- ----------------------------
-- Table structure for travel_rate
-- ----------------------------
DROP TABLE IF EXISTS `travel_rate`;
CREATE TABLE `travel_rate`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `mark` double NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `movie_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `travel_rate_movie_id_68452862_fk_travel_movie_id`(`movie_id`) USING BTREE,
  INDEX `travel_rate_user_id_24aae645_fk_travel_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `travel_rate_movie_id_68452862_fk_travel_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `travel_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `travel_rate_user_id_24aae645_fk_travel_user_id` FOREIGN KEY (`user_id`) REFERENCES `travel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_rate
-- ----------------------------
INSERT INTO `travel_rate` VALUES (1, 4, '2021-05-14 16:58:24.877754', 2160, 1799);
INSERT INTO `travel_rate` VALUES (2, 5, '2022-10-18 09:51:31.245404', 2162, 1799);
INSERT INTO `travel_rate` VALUES (3, 4, '2022-10-18 09:51:54.948671', 2165, 1799);

-- ----------------------------
-- Table structure for travel_tags
-- ----------------------------
DROP TABLE IF EXISTS `travel_tags`;
CREATE TABLE `travel_tags`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_tags
-- ----------------------------
INSERT INTO `travel_tags` VALUES (31, '云南省');
INSERT INTO `travel_tags` VALUES (42, '北京');
INSERT INTO `travel_tags` VALUES (41, '台湾省');
INSERT INTO `travel_tags` VALUES (35, '吉林省');
INSERT INTO `travel_tags` VALUES (29, '四川省');
INSERT INTO `travel_tags` VALUES (26, '安徽省');
INSERT INTO `travel_tags` VALUES (34, '山西省');
INSERT INTO `travel_tags` VALUES (27, '广东省');
INSERT INTO `travel_tags` VALUES (25, '河北省');
INSERT INTO `travel_tags` VALUES (32, '浙江省');
INSERT INTO `travel_tags` VALUES (28, '海南省');
INSERT INTO `travel_tags` VALUES (38, '甘肃省');
INSERT INTO `travel_tags` VALUES (40, '福建省');
INSERT INTO `travel_tags` VALUES (30, '贵州省');
INSERT INTO `travel_tags` VALUES (36, '辽宁省');
INSERT INTO `travel_tags` VALUES (37, '陕西省');
INSERT INTO `travel_tags` VALUES (39, '青海省');
INSERT INTO `travel_tags` VALUES (33, '黑龙江省');

-- ----------------------------
-- Table structure for travel_user
-- ----------------------------
DROP TABLE IF EXISTS `travel_user`;
CREATE TABLE `travel_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1800 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_user
-- ----------------------------
INSERT INTO `travel_user` VALUES (1796, '1', '1', '1@163.com', '2021-05-07 12:12:37.270469');
INSERT INTO `travel_user` VALUES (1797, '2', '2', '2@163.com', '2021-05-07 12:12:41.054592');
INSERT INTO `travel_user` VALUES (1798, '3', '3', '3@163.com', '2021-05-07 12:12:44.361121');
INSERT INTO `travel_user` VALUES (1799, 'admins', 'admins', 'admins@qq.com', '2021-05-14 16:58:07.159256');

-- ----------------------------
-- Table structure for travel_usertagprefer
-- ----------------------------
DROP TABLE IF EXISTS `travel_usertagprefer`;
CREATE TABLE `travel_usertagprefer`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `score` double NOT NULL,
  `tag_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `travel_usertagprefer_tag_id_bea17998_fk_travel_tags_id`(`tag_id`) USING BTREE,
  INDEX `travel_usertagprefer_user_id_bc1b7364_fk_travel_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `travel_usertagprefer_tag_id_bea17998_fk_travel_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `travel_tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `travel_usertagprefer_user_id_bc1b7364_fk_travel_user_id` FOREIGN KEY (`user_id`) REFERENCES `travel_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_usertagprefer
-- ----------------------------
INSERT INTO `travel_usertagprefer` VALUES (1, 7, 27, 1799);
INSERT INTO `travel_usertagprefer` VALUES (2, 4, 26, 1799);
INSERT INTO `travel_usertagprefer` VALUES (3, 4, 42, 1799);

SET FOREIGN_KEY_CHECKS = 1;
