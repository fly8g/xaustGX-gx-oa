use gxoa;

drop table gx_m_user;
drop table gx_m_roles;
drop table gx_m_permission;
drop table gx_m_staff;
drop table gx_m_dept;

--�û���
create table gx_m_user (
	user_id int identity(1,1) not null,
	username nvarchar(50) not null primary key ,
	password nvarchar(50) not null,
	staff_id char(6) not null unique,
	user_type char(1) not null,
	last_login_dt datetime,
	remark nvarchar(100),
	del_flg char(1) default '0',
	crt_uid char(6),
	crt_app_id char(7),
	crt_dt datetime,
	upd_uid char(6),
	upd_app_id char(7),
	upd_dt datetime
	--FOREIGN KEY (staff_id) REFERENCES gx_m_staff (staff_id)
);

--��ɫ��
create table gx_m_roles (
	role_id int identity(1,1) not null primary key,
	role_name nvarchar(50) not null,
	remark nvarchar(100),
	del_flg char(1) default '0',
	crt_uid char(6),
	crt_app_id char(7),
	crt_dt datetime,
	upd_uid char(6),
	upd_app_id char(7),
	upd_dt datetime
);

--Ȩ�ޱ�
create table gx_m_permission (
	perm_id int identity(1,1) not null primary key,
	perm_cd nvarchar(50) not null,
	perm_name nvarchar(50) not null,
	del_flg char(1) default '0',
	crt_uid char(6),
	crt_app_id char(7),
	crt_dt datetime,
	upd_uid char(6),
	upd_app_id char(7),
	upd_dt datetime
);

--�û��ͽ�ɫ�Ĺ�����
create table gx_m_user_roles (
	user_id int not null unique,
	role_id int not null,
	remark nvarchar(100),
	del_flg char(1) default '0',
	crt_uid char(6),
	crt_app_id char(7),
	crt_dt datetime,
	upd_uid char(6),
	upd_app_id char(7),
	upd_dt datetime,
	CONSTRAINT PK_user_roles PRIMARY KEY CLUSTERED (user_id ASC, role_id ASC)
);

--��ɫ��Ȩ�ޱ�Ĺ�����
create table gx_m_role_permissions (
	role_id int not null,
	perm_id int not null,
	remark nvarchar(100),
	del_flg char(1) default '0',
	crt_uid char(6),
	crt_app_id char(7),
	crt_dt datetime,
	upd_uid char(6),
	upd_app_id char(7),
	upd_dt datetime,
	CONSTRAINT PK_role_permissions PRIMARY KEY CLUSTERED (role_id ASC, perm_id ASC)
);

--Ա����Ϣ��
create table gx_m_staff (
	staff_id char(6) not null primary key,
	family_name nvarchar(50),
	sex char(1),
	birthday date,
	degree varchar(50),
	duty varchar(50),
	phone_no varchar(11),
	email varchar(50),
	dept_id char(4) not null,
	remark nvarchar(100),
	del_flg char(1) default '0',
	crt_uid char(6),
	crt_app_id char(7),
	crt_dt datetime,
	upd_uid char(6),
	upd_app_id char(7),
	upd_dt datetime
);

--������Ϣ��
create table gx_m_dept (
	dept_id char(4) not null primary key,
	dept_name nvarchar(50) not null,
	remark nvarchar(100),
	del_flg char(1) default '0',
	crt_uid char(6),
	crt_app_id char(7),
	crt_dt datetime,
	upd_uid char(6),
	upd_app_id char(7),
	upd_dt datetime
);

create table gx_m_menu (

);

create table gx_m_menu (

);

create table gx_m_menu (

);