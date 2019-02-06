alter table MAILING_NOTIFICATION add constraint FK_MAILING_NOTIFICATION_ON_TARGET foreign key (TARGET_ID) references SEC_USER(ID);
alter table MAILING_NOTIFICATION add constraint FK_MAILING_NOTIFICATION_ON_MAILING foreign key (MAILING_ID) references MAILING_MAILING(ID);
create index IDX_MAILING_NOTIFICATION_ON_TARGET on MAILING_NOTIFICATION (TARGET_ID);
create index IDX_MAILING_NOTIFICATION_ON_MAILING on MAILING_NOTIFICATION (MAILING_ID);