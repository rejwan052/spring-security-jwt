INSERT INTO `t_user` (`id`, `created_date`, `updated_date`, `name`, `password`) VALUES
  ('40b2dd57ca074dc0bd757c3e36fb2ffd', round(unix_timestamp() * 1000 + MICROSECOND(sysdate(6)) / 1000),
   round(unix_timestamp() * 1000 + MICROSECOND(sysdate(6)) / 1000), 'admin',
   '$2a$10$W3rO9JXdqvH01bYK/QRYCO7VYNsPDI2tK.4zzmAarYYlE1fLoXxfe');

INSERT INTO `t_user` (`id`, `created_date`, `updated_date`, `name`, `password`) VALUES
  ('40b2dd57ca074dc0bdjk8c3e36fb2ffd', round(unix_timestamp() * 1000 + MICROSECOND(sysdate(6)) / 1000),
   round(unix_timestamp() * 1000 + MICROSECOND(sysdate(6)) / 1000), 'pm2017',
   '$2a$10$W3rO9JXdqvH01bYK/QRYCO7VYNsPDI2tK.4zzmAarYYlE1fLoXxfe');

INSERT INTO `t_role` (`symbol`, `name`) VALUES ('SYSTEM_ADMIN', '系统管理员');
INSERT INTO `t_role` (`symbol`, `name`) VALUES ('PROJECT_MANAGER', '项目经理');


INSERT INTO `t_user_role` (`user_id`, `role_symbol`) VALUES ('40b2dd57ca074dc0bd757c3e36fb2ffd', 'SYSTEM_ADMIN');
INSERT INTO `t_user_role` (`user_id`, `role_symbol`) VALUES ('40b2dd57ca074dc0bdjk8c3e36fb2ffd', 'PROJECT_MANAGER');


INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('CREATE_USER', '创建用户');
INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('UPDATE_USER', '更新用户');
INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('RETRIVE_USER', '检索用户');
INSERT INTO `t_privilege` (`symbol`, `name`) VALUES ('DELETE_USER', '删除用户');


INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'CREATE_USER');
INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'UPDATE_USER');
INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'RETRIVE_USER');
INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('SYSTEM_ADMIN', 'DELETE_USER');
INSERT INTO `t_role_privilege` (`role_symbol`, `privilege_symbol`) VALUES ('PROJECT_MANAGER', 'RETRIVE_USER');