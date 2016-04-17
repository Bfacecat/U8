
IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMP WHERE TaskType = '0' AND cfrombillcardnum='MQ6303' AND ctobillcardnum='MO21' )  
BEGIN
 insert into MES_CQ_FIELDCMP (TaskType, ccode,cfrombillcardnum,cname,ctobillcardnum,id,iprintcount,vt_id ) values 
  ('0','0000000014','MQ6303','�����ƻ�������������','MO21','1000000014',null,'17')
END

GO
 
-- �����ƻ�������������  SELECT * FROM MES_CQ_FIELDCMP 
-- DELETE FROM MES_CQ_FIXVALUE WHERE DID IN (SELECT AUTOID FROM  MES_CQ_FIELDCMPS  WHERE TaskType = '0' AND id='1000000014')
-- DELETE FROM MES_CQ_FIELDCMPS  WHERE TaskType = '0' AND id='1000000014'

-- ��ͷ
IF (1=1)  
BEGIN

    IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='MoId') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','��������id','T','0000000014',null,null,1,'111','MoId',null,'1000000014',1,1)
	END 
	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='MoCode') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','����������','T','0000000014',null,null,1,'1111','MoCode',null,'1000000014',1,1)
	END   
END
GO
 
-- ����
IF (1=1)   
BEGIN 

	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='DMoClass') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','����','B','0000000014',null,null,0,'����|����,B|MES_MOTYPE','DMoClass',null,'1000000014',1,1)
	END 
	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='DInvCode') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','�������','B','0000000014',null,null,0,'����|�������,B|MES_cInvCode','DInvCode',null,'1000000014',1,1)
	END 
	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='DStartDate') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','��������','B','0000000014',null,null,0,'����|��������,B|MES_PStartDate','DStartDate',null,'1000000014',1,1)
	END 
	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='DDueDate') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','�깤����','B','0000000014',null,null,0,'����|�깤����,B|MES_PDueDate','DDueDate',null,'1000000014',1,1)
	END  
	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='DQty') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','��������','B','0000000014',null,null,0,'����|��������,B|MES_iquantity','DQty',null,'1000000014',1,1)
	END 
	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='DSortSeq') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','�к�','B','0000000014',null,null,1,'1','DSortSeq',null,'1000000014',1,1)
	END 
	
END
 

-- �Ӽ����ϱ�
IF (1=1)   
BEGIN 

	IF NOT EXISTS (SELECT 1 FROM MES_CQ_FIELDCMPS WHERE TaskType = '0' AND id='1000000014' AND cardsection = 'B' AND fieldname='DQty') 
	BEGIN
	insert into MES_CQ_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('0','1','�Ӽ��к�','C','0000000014',null,null,0,'����|�Ӽ��к�,B|MES_iquantity','DQty',null,'1000000014',1,1)
	END 
	
			Mom_MoAllocate[0]["DSortSeq"] = ""; //�Ӽ��к�(����)��int����
			Mom_MoAllocate[0]["DOpSeq"] = ""; //�����кţ�string����
			Mom_MoAllocate[0]["DInvCode"] = ""; //�Ӽ�����(����)��string����
			Mom_MoAllocate[0]["DBaseQtyN"] = ""; //����������double����
			Mom_MoAllocate[0]["DBaseQtyD"] = ""; //����������double����
			Mom_MoAllocate[0]["DStartDemDate"] = ""; //�������ڣ�DateTime����
END 
GO
    	