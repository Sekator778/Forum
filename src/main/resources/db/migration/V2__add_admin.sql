insert into usr (id, username, password, active)
VALUES ('1', 'admin', 'admin', true);
insert into user_role (user_id, roles)
VALUES (1, 'USER'),
       (1, 'ADMIN');