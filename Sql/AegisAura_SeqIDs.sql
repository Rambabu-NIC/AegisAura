--Create SEQUENCE [dbo].[SEQUENCEID]
--AS INT
--START WITH 1
--INCREMENT BY 1

--ALTER SEQUENCE [SEQUENCEID] RESTART WITH 1

--DROP TABLE IF Exists NIC_Employees
--CREATE TABLE NIC_Employees(SEQUENCEID_NIC varchar(50) primary key,
--EmployeeName Varchar(50),JoiningDate DATE)

DECLARE @SequenceId VARCHAR(50),@DigitNo INT=4
SELECT @SequenceId =NEXT VALUE FOR [dbo].[SEQUENCEID]
SELECT @SequenceId=SUBSTRING('000' + CONVERT(VARCHAR(20),@SequenceId),LEN('000' + CONVERT(VARCHAR(20),@SequenceId)) - (@DigitNo-1), @DigitNo)
select 'AG-U-'+@SequenceId
--INSERT INTO NIC_Employees(SEQUENCEID_NIC,EmployeeName,JoiningDate)
--select @SequenceId,'Rambabu','01 Mar 2024'
--select * from NIC_Employees
---------------------------------------
Create SEQUENCE [dbo].[UserId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @UserId VARCHAR(50),@DigitNo INT=4
SELECT @UserId =NEXT VALUE FOR [dbo].[UserId]
SELECT @UserId=SUBSTRING('000' + CONVERT(VARCHAR(20),@UserId),LEN('000' + CONVERT(VARCHAR(20),@UserId)) - (@DigitNo-1), @DigitNo)
select 'AG-U-'+@UserId
---------------------------------------
Create SEQUENCE [dbo].[RoomCategoryId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @RoomCategoryId VARCHAR(50),@DigitNo INT=4
SELECT @RoomCategoryId =NEXT VALUE FOR [dbo].[RoomCategoryId]
SELECT @RoomCategoryId=SUBSTRING('000' + CONVERT(VARCHAR(20),@RoomCategoryId),LEN('000' + CONVERT(VARCHAR(20),@RoomCategoryId)) - (@DigitNo-1), @DigitNo)
select 'AG-RC-'+@RoomCategoryId

---------------------------------------
Create SEQUENCE [dbo].[RoomTypeId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @RoomTypeId VARCHAR(50),@DigitNo INT=4
SELECT @RoomTypeId =NEXT VALUE FOR [dbo].[RoomTypeId]
SELECT @RoomTypeId=SUBSTRING('000' + CONVERT(VARCHAR(20),@RoomTypeId),LEN('000' + CONVERT(VARCHAR(20),@RoomTypeId)) - (@DigitNo-1), @DigitNo)
select 'AG-RT-'+@RoomTypeId
-------------------------------------------

Create SEQUENCE [dbo].[RoomStatusId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @RoomStatusId VARCHAR(50),@DigitNo INT=4
SELECT @RoomStatusId =NEXT VALUE FOR [dbo].[RoomStatusId]
SELECT @RoomStatusId=SUBSTRING('000' + CONVERT(VARCHAR(20),@RoomStatusId),LEN('000' + CONVERT(VARCHAR(20),@RoomStatusId)) - (@DigitNo-1), @DigitNo)
select 'AG-RS-'+@RoomStatusId

-----------------------------------------
Create SEQUENCE [dbo].[BookingStatusId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @BookingStatusId VARCHAR(50),@DigitNo INT=4
SELECT @BookingStatusId =NEXT VALUE FOR [dbo].[BookingStatusId]
SELECT @BookingStatusId=SUBSTRING('000' + CONVERT(VARCHAR(20),@BookingStatusId),LEN('000' + CONVERT(VARCHAR(20),@BookingStatusId)) - (@DigitNo-1), @DigitNo)
select 'AG-BS-'+@BookingStatusId

---------------------------------------

Create SEQUENCE [dbo].[PaymentStatusId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @PaymentStatusId VARCHAR(50),@DigitNo INT=4
SELECT @PaymentStatusId =NEXT VALUE FOR [dbo].[PaymentStatusId]
SELECT @PaymentStatusId=SUBSTRING('000' + CONVERT(VARCHAR(20),@PaymentStatusId),LEN('000' + CONVERT(VARCHAR(20),@PaymentStatusId)) - (@DigitNo-1), @DigitNo)
select 'AG-PS-'+@PaymentStatusId

---------------------------------------

Create SEQUENCE [dbo].[BookingId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @BookingId VARCHAR(50),@DigitNo INT=4
SELECT @BookingId =NEXT VALUE FOR [dbo].[BookingId]
SELECT @BookingId=SUBSTRING('000' + CONVERT(VARCHAR(20),@BookingId),LEN('000' + CONVERT(VARCHAR(20),@BookingId)) - (@DigitNo-1), @DigitNo)
select 'AG-B-'+@BookingId


---------------------------------------

Create SEQUENCE [dbo].[PaymentId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @PaymentId VARCHAR(50),@DigitNo INT=4
SELECT @PaymentId =NEXT VALUE FOR [dbo].[PaymentId]
SELECT @PaymentId=SUBSTRING('000' + CONVERT(VARCHAR(20),@PaymentId),LEN('000' + CONVERT(VARCHAR(20),@PaymentId)) - (@DigitNo-1), @DigitNo)
select 'AG-PM-'+@PaymentId


------------------------------ComplaintId

Create SEQUENCE [dbo].[ComplaintId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @ComplaintId VARCHAR(50),@DigitNo INT=4
SELECT @ComplaintId =NEXT VALUE FOR [dbo].[ComplaintId]
SELECT @ComplaintId=SUBSTRING('000' + CONVERT(VARCHAR(20),@ComplaintId),LEN('000' + CONVERT(VARCHAR(20),@ComplaintId)) - (@DigitNo-1), @DigitNo)
select 'AG-CP-'+@ComplaintId

------------------------------

Create SEQUENCE [dbo].[MealTypeId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @MealTypeId VARCHAR(50),@DigitNo INT=4
SELECT @MealTypeId =NEXT VALUE FOR [dbo].[MealTypeId]
SELECT @MealTypeId=SUBSTRING('000' + CONVERT(VARCHAR(20),@MealTypeId),LEN('000' + CONVERT(VARCHAR(20),@MealTypeId)) - (@DigitNo-1), @DigitNo)
select 'AG-MT-'+@MealTypeId


------------------------------

Create SEQUENCE [dbo].[MealPlanId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @MealPlanId VARCHAR(50),@DigitNo INT=4
SELECT @MealPlanId =NEXT VALUE FOR [dbo].[MealPlanId]
SELECT @MealPlanId=SUBSTRING('000' + CONVERT(VARCHAR(20),@MealPlanId),LEN('000' + CONVERT(VARCHAR(20),@MealPlanId)) - (@DigitNo-1), @DigitNo)
select 'AG-MP-'+@MealPlanId


------------------------------

Create SEQUENCE [dbo].[MealId]
AS INT
START WITH 1
INCREMENT BY 1

DECLARE @MealId VARCHAR(50),@DigitNo INT=4
SELECT @MealId =NEXT VALUE FOR [dbo].[MealId]
SELECT @MealId=SUBSTRING('000' + CONVERT(VARCHAR(20),@MealId),LEN('000' + CONVERT(VARCHAR(20),@MealId)) - (@DigitNo-1), @DigitNo)
select 'AG-M-'+@MealId