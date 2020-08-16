delete
from user_role;
delete
from usr;

insert into usr(id, active, password, username)
VALUES (1, true, '$2a$08$BL.cJg5V3olJzYhdgOI8ruO1ll9XIvlzosYiGiXeeiBNAYNnl24Yq', 'admin'),
       (2, true, '$2a$08$BL.cJg5V3olJzYhdgOI8ruO1ll9XIvlzosYiGiXeeiBNAYNnl24Yq', 'bob');
insert into user_role(user_id, roles)
VALUES (1, 'USER'),
       (2, 'ADMIN'),
       (2, 'ADMIN');
