SELECT
	r.`id` AS id,
	r.`sid` AS sid,
	r.`name` AS `name`,
	r.`description` AS description,
	r.`mngflg` AS mngflg,
	u.`sid` AS uSid,
	u.`username` AS username,
	u.`phone` AS uPhone,
	u.`is_administration` AS uIsAdmin,
	u.`status` AS uStatus
FROM
	`droj-uc`.`ums_member` u
LEFT JOIN `droj-uc`.`ums_role_member_relation` rm ON u.sid = rm.admin_id,
 `droj-uc`.`ums_role` r
WHERE
	u.`status` = 1
	AND rm.role_id = r.sid
GROUP BY r.sid;

-- #####################################################################

SELECT
	r.`id` AS id,
	r.`sid` AS sid,
	r.`name` AS `name`,
	r.`description` AS description,
	r.`mngflg` AS mngflg,
	u.`sid` AS uSid,
	u.`username` AS username,
	u.`phone` AS uPhone,
	u.`is_administration` AS uIsAdmin,
	u.`status` AS uStatus
FROM
	(`droj-uc`.`ums_member` u LEFT JOIN `droj-uc`.`ums_role_member_relation` rm ON u.sid = rm.admin_id)
 LEFT JOIN `droj-uc`.`ums_role` r ON rm.role_id = r.sid
WHERE
	u.`status` = 1
GROUP BY u.`sid`,r.sid
-- #####################################################################
CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`%` SQL SECURITY INVOKER VIEW `view_member_role` AS
 select `r`.`id` AS `id`,`r`.`sid` AS `sid`,`r`.`name` AS `name`,`r`.`description` AS `description`,`r`.`mngflg` AS `mngflg`,`u`.`sid` AS `uSid`,`u`.`username` AS `username`,`u`.`phone` AS `uPhone`,`u`.`is_administration` AS `uIsAdmin`,`u`.`status` AS `uStatus` from ((`ums_member` `u` left join `ums_role_member_relation` `rm` on((`u`.`sid` = convert(`rm`.`admin_id` using utf8mb4)))) left join `ums_role` `r` on((`rm`.`role_id` = `r`.`sid`))) where (`u`.`status` = 1) group by `u`.`sid`,`r`.`sid`
-- #####################################################################
DESC view_member_role;
-- #####################################################################
SELECT
	v.`id`,
	v.`sid`,
	v.`name`,
	v.`description`,
	v.`mngflg`,
	v.`uSid`,
	v.`username`,
	v.`uPhone`,
	v.`uIsAdmin`,
	v.`uStatus`
FROM view_member_role v ;