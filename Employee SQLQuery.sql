/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmpID]
      ,[EmpFirstName]
      ,[EmpLastName]
      ,[EmpFullName]
      ,[DateOfBirth]
      ,[HireDate]
      ,[EduID]
      ,[DeptID]
      ,[Gender]
      ,[Age]
      ,[AgeGroup]
      ,[MaritalStatus]
      ,[PayTypeID]
      ,[EthnicGroupID]
      ,[PositionID]
      ,[TermDate]
  FROM [student].[dbo].[Emplyees$]
  select * from dbo.Emplyees$ order by EmpID desc
  select * from dbo.Emplyees$ order by EmpID asc
  select dbo.Emplyees$.EmpFirstName, dbo.Emplyees$.EmpLastName, dbo.Emplyees$.PayTypeID from dbo.Emplyees$ order by dbo.Emplyees$.PayTypeID desc
  select dbo.Emplyees$.EmpLastName, dbo.Emplyees$.EmpFirstName, dbo.Emplyees$.PayTypeID from dbo.Emplyees$ order by dbo.Emplyees$.PayTypeID asc
  select dbo.Emplyees$.EmpFullName, dbo.Emplyees$.EmpID, dbo.Emplyees$.PayTypeID from dbo.Emplyees$ order by dbo.Emplyees$.PayTypeID desc
  SELECT EMPFirstname,emplastname,deptid,hiredate,gender,paytypeid AS Employeestatus from dbo.Emplyees$ where PayTypeID = 'permanent' AND Age < 50
  SELECT * FROM DBO.Emplyees$ WHERE DBO.Emplyees$.EmpFirstName LIKE '[JO]%'
  SELECT * FROM DBO.Emplyees$ WHERE DBO.Emplyees$.EmpLastName LIKE '[AB]%'
  SELECT DBO.Emplyees$.EmpFirstName,DBO.Emplyees$.EmpLastName,DBO.Emplyees$.Age,DBO.Emplyees$.Gender FROM DBO.Emplyees$ WHERE AGE < 25 AND GENDER ='F'

  SELECT dbo.Emplyees$.EmpFullName,dbo.Emplyees$.EmpID,dbo.Emplyees$.Age,dbo.Emplyees$.Gender FROM DBO.Emplyees$ where  age > 20 and gender = 'M'
  SELECT DBO.Emplyees$.EmpFirstName,DBO.Emplyees$.EmpLastName,DBO.Emplyees$.EduID FROM DBO.Emplyees$ WHERE dbo.Emplyees$.EmpID BETWEEN 1 AND 3
  SELECT * FROM DBO.Emplyees$ where DBO.Emplyees$.EmpID between 1 and 3
  select * from dbo.Emplyees$ where dbo.Emplyees$.DateOfBirth between 20 and 30
  use Database_Product
  select * from dbo.Emplyees$ where dbo.Emplyees$.Gender ='F'and dbo.Emplyees$.MaritalStatus ='S'
  select * FROM dbo.Emplyees$ where dbo.Emplyees$.Gender ='F'
  SELECT TOP 10* FROM DBO.Emplyees$
  SELECT TOP 10* FROM DBO.['Emp Salary$'] ORDER BY DBO.['Emp Salary$'].EmpSalary DESC
  SELECT TOP 1* FROM DBO.Emplyees$ ORDER BY DBO.Emplyees$.DateOfBirth DESC
  SELECT TOP 5* FROM DBO.['Emp Salary$'] INNER JOIN DBO.Emplyees$ ON DBO.['Emp Salary$'].EmpID=DBO.Emplyees$.EmpID ORDER BY DBO.['Emp Salary$'].EmpSalary ASC
  
  INSERT INTO DBO.Emplyees$(EmpFirstName,EmpLastName) VALUES ('Sulaimon','Ibrahim')
  select * from dbo.Emplyees$ where dbo.Emplyees$.EmpFirstName='sulaimon' and dbo.Emplyees$.EmpLastName='Ibrahim'
  select * from dbo.['Emp Salary$'] where dbo.['Emp Salary$'].EmpSalary > '50000'
