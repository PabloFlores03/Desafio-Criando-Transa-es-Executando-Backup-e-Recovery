-- Banco de dados Utilizado "Company_constraints"
-- OBS.: Tive dificuldades em baixar o mysqldump, pois o computador que utilizo para estudo é da empresa a qual presto serviço e temos restrições quanto a alguns programas. Desse modo não consigo executar a atividade de Rollback e Recovery. 

Set autocommit=0;
Select @@autocommit; 
    
Delete from employee;
        Insert into employee(Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) 
			values ('John', 'B', 'Smith', 123456789, 1965-01-09, '731-rua alameda', 'M',50000.00, null, 1);    
    
Start transaction;
		Delete from employee;
        Insert into employee(Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) 
			values ('John', 'B', 'Smith', 123456789, 1965-01-09, '731-rua alameda', 'M',50000.00, null, 1)
        Select * from employee;
Rollback;        