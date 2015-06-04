
-- ���� ���ű�:TBL_NEWS
create table TBL_NEWS 
(
	newsID int not null,
	title varchar(50) ,	
	content varchar(800),
	writeDate varchar(20),
  constraint PK_TBL_NEWS primary key (newsID)
);


-- ���� ��Ʒ��:TBL_PRODUCT
create table TBL_PRODUCT
(
	productID int not null,
	serialNumber varchar(20),
	name varchar(20)  ,
	brand varchar(20),
	model varchar(20),
	price numeric(9,2),
	picture varchar(20),
	description varchar(800),
  constraint PK_TBL_PRODUCT primary key (productID)
);


-- ���� �û���:TBL_USER
create table TBL_USER
(
	userID int not null,
	userName varchar(20) ,
	password varchar(20)  ,
	status int ,
  constraint PK_TBL_USER primary key (userID)
);

-- ���� ���Ա�:TBL_MESSAGE
create table TBL_MESSAGE
(
	messageID int   not null,
	title varchar(50),
	name varchar(20)  ,
	content varchar(800),
	leaveDate  varchar(20) ,
  constraint PK_TBL_MESSAGE primary key (messageID)
);


-- ���� ������: TBL_REVERT
create table TBL_REVERT
(
	revertID INT   not null,
	title varchar(50) ,
	name varchar(20) ,
	content varchar(800),
	replyDate  varchar(20) ,
	messageID int ,
  constraint PK_TBL_REVERT primary key (revertID)
);


insert into TBL_NEWS(newsID,title,writeDate,content)
values(1,'����������������������Ż�','2000-9-26','˵�������wϵ�������
���Ŵ�Ҷ�����е�İ�����䲻��Ĺ��ܱ������ʱ��ǰ����������ƣ�
һ�������������Ͽɣ����գ����ߴ�����ר�Ҵ���Ϥ��
���wϵ�Ͷ˻���w55�Ƴ�1550Ԫ�Ĵ����۸񣬸���һ��512M�ļ��������Ϊ��ֵ��
����Ȥ�Ķ��߿��Թ�עһ��');
insert into TBL_NEWS(newsID,title,writeDate,content)
values(2,'����������������������Ż�','2000-9-26','˵�������wϵ�������
���Ŵ�Ҷ�����е�İ�����䲻��Ĺ��ܱ������ʱ��ǰ����������ƣ�
һ�������������Ͽɣ����գ����ߴ�����ר�Ҵ���Ϥ��
���wϵ�Ͷ˻���w55�Ƴ�1550Ԫ�Ĵ����۸񣬸���һ��512M�ļ��������Ϊ��ֵ��
����Ȥ�Ķ��߿��Թ�עһ��');
insert into TBL_NEWS(newsID,title,writeDate,content)
values(3,'����������������������Ż�','2000-9-26','˵�������wϵ�������
���Ŵ�Ҷ�����е�İ�����䲻��Ĺ��ܱ������ʱ��ǰ����������ƣ�
һ�������������Ͽɣ����գ����ߴ�����ר�Ҵ���Ϥ��
���wϵ�Ͷ˻���w55�Ƴ�1550Ԫ�Ĵ����۸񣬸���һ��512M�ļ��������Ϊ��ֵ��
����Ȥ�Ķ��߿��Թ�עһ��');
insert into TBL_NEWS(newsID,title,writeDate,content)
values(4,'����������������������Ż�','2000-9-26','˵�������wϵ�������
���Ŵ�Ҷ�����е�İ�����䲻��Ĺ��ܱ������ʱ��ǰ����������ƣ�
һ�������������Ͽɣ����գ����ߴ�����ר�Ҵ���Ϥ��
���wϵ�Ͷ˻���w55�Ƴ�1550Ԫ�Ĵ����۸񣬸���һ��512M�ļ��������Ϊ��ֵ��
����Ȥ�Ķ��߿��Թ�עһ��');
insert into TBL_NEWS(newsID,title,writeDate,content)
values(5,'����������������������Ż�','2000-9-26','˵�������wϵ�������
���Ŵ�Ҷ�����е�İ�����䲻��Ĺ��ܱ������ʱ��ǰ����������ƣ�
һ�������������Ͽɣ����գ����ߴ�����ר�Ҵ���Ϥ��
���wϵ�Ͷ˻���w55�Ƴ�1550Ԫ�Ĵ����۸񣬸���һ��512M�ļ��������Ϊ��ֵ��
����Ȥ�Ķ��߿��Թ�עһ��');


insert INTO TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(1,'v3','�����ֻ�','����',60,'5000.00','d_r11_10_r1_c22.jpg','����v3');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(2,'v1','�������','�´�',70,'8000.00','d_r11_10_r1_c16.jpg','�´�v1');
insert  INTO TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(3,'v2','�����','����',80,'8000.00','d_r11_10_r1_c116.jpg','����v2');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(4,'v3','�ʼǱ�','IBM',90,'8000.00','d_r11_10_r1_c1.jpg','IBMv3');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(5,'v4','�ֻ�','Ħ������',80,'8000.00','d_r11_10_r1_c221.jpg','Ħ������v4');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(6,'v5','�ֻ�','����',60,'5000.00','d_r11_10_r1_c22.jpg','����v3');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(7,'v6','���','�´�',70,'8000.00','d_r11_10_r1_c8.jpg','�´�v1');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(8,'v7','���������','����',80,'8000.00','d_r11_10_r1_c16.jpg','����v2');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(9,'v8','���±ʼǱ�','IBM',90,'8000.00','d_r11_10_r1_c2.jpg','IBMv3');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(10,'v9','�ֻ�','Ħ������',80,'8000.00','d_r11_10_r1_c22.jpg','Ħ������v4');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(11,'v6','���','�´�',70,'8000.00','d_r11_10_r1_c22.jpg','�´�v1');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(12,'v7','���������','����',80,'8000.00','d_r11_10_r1_c81.jpg','����v2');
insert INTO  TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(13,'v8','���±ʼǱ�','IBM',90,'8000.00','d_r11_10_r1_c1.jpg','IBMv3');
insert INTO TBL_PRODUCT(productID,serialNumber,name,brand,model,price,picture,description)
values(14,'v9','�ֻ�','Ħ������',80,'8000.00','d_r11_10_r1_c22.jpg','Ħ������v4');

insert into TBL_USER(userID,userName,password,status)values(1,'accpAdmin','456','0');
insert into TBL_USER(userID,userName,password,status)values(2,'000','456','0');
insert into TBL_USER(userID,userName,password,status)values(3,'Ծ������','456','0');
insert into TBL_USER(userID,userName,password,status)values(4,'��������','456','0');
insert into TBL_USER(userID,userName,password,status)values(5,'�������','456','0');
insert into TBL_USER(userID,userName,password,status)values(6,'�����Ҷ','456','0');
insert into TBL_USER(userID,userName,password,status)values(7,'Ҷ��','456','0');
insert into TBL_USER(userID,userName,password,status)values(8,'tear..','456','0');
insert into TBL_USER(userID,userName,password,status)values(9,'��ϲ����','456','0');
insert into TBL_USER(userID,userName,password,status)values(10,'456-��ţ������','456','0');
insert into TBL_USER(userID,userName,password,status)values(11,'mary','456','0');
insert into TBL_USER(userID,userName,password,status)values(12,'��,�ܲ�������','789','0');

-- select (select TO_CHAR(SYSDATE, 'yyyy-mm-dd hh24:mi:ss') as a from dual);

insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(1,'��ʱ��ʦ�ķ����ķ����ط���','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(2,'��˹�ٷ��ƣ�','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(3,'MP4�۸��Ƕ���','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(4,'ƤŶ���϶Է�','accp','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(5,'��ʱ��˹�ٷ�','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(6,'MP4�۸��Ƕ���','accp','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(7,'��ɶ�ط��Ǵ�˹�ٷ�','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(8,'MP4�۸��Ƕ���','��ϲ����','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(9,'��Ŷ���ķ�ʽ�򷨶�','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(10,'MP4�۸��Ƕ���','С��Ů','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(11,'�����ȵȵصص���','�㣬�ܲ�����!','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(12,'�����ķ����ط��Ǵ󷽵�','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(13,'�۶�������������Ƕ���','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(14,'��������','�ɺ�','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(15,'MP4�۸��Ƕ���','����','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(16,'Ʒ�������ּ��ʲô','��ţ������','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(17,'��ɽ�۽�ʱʲôʱ��','456','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(18,'�۸��Ƕ���?','Ծ������','����󷽿Ƽ�����˹��','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(19,'��˳���طſ�','tear..','��˹�������������϶Է�','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(20,'MP4�۸��Ƕ���','��������','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(21,'Ʒ�������ּ��ʲô','������','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(22,'��ɽ�۽�ʱʲôʱ��','�����Ҷ','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(23,'�۸��Ƕ���?','��ҹ֮��','����󷽿Ƽ�����˹��','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(24,'��˳���طſ�,̫ŭ���ˡ�����','�����Ҷ','��˹�������������϶Է�','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(25,'Ʒ�������ּ��ʲô','�㣬�ܲ�����','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(26,'��ɽ�۽�ʱʲôʱ��,����˭֪�ص�ѽ','��ţ������','MP4�۸���255Ԫ����','2000-12-12');
insert into TBL_MESSAGE(messageID,title,name,content,leaveDate)values(27,'��˭֪��Mp3�۸��Ƕ���?','�������','����󷽿Ƽ�����˹��','2000-12-12');

insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(1,'�۸��Ƕ���','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(2,'��̨������','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(3,'�鿴���Ժͻظ�����','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(4,'����Ч����ʲô����','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(5,'�л������������','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(6,'������120Ԫ��','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(7,'¥�ϵ���֪����','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(8,'���а�','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(9,'������120Ԫ��','789','������120Ԫ��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(10,'5��1��','789','5��1��','2000-12-12',1);
insert into TBL_REVERT(revertID,title,name,content,replyDate,messageID)values(11,'��֪��','789','��֪��','2000-12-12',1);


select * from TBL_NEWS;
select * from TBL_PRODUCT;
select * from TBL_USER;
select * from TBL_MESSAGE;
select * from TBL_REVERT ;