	/*create database EmpresaDevJav*/
use EmpresaDevJav;
/*empleado*/
create table departamento(

	coDpto int,
	nombreDpto varchar(100) not null,
	ciudad varchar(100) not null,
	director int(50),
	
	primary key(coDpto)
);

describe departamento;



/*empleado*/

create table empleado(

	nDIEmp int,
	nomEmp varchar(100) not null,
	sexEmp varchar(20),
	fecNac date,
	fecIncorporacion date,
	salEmp int(150),
	comis int(50),
	cargo varchar(100),
	nroDepto int(30),
	
	primary key(nDIEmp)
);

describe empleado;



/*ingreso 5 registros*/

INSERT INTO departamento(coDpto,nombreDpto, ciudad, director) values
(1000,'Gerencia','Buenos Aires',31840269),
(1001,'Ventas', 'Buenos Aires', 51830267),
(1002,'Finanzas', 'Buenos Aires', 333402521),
(1003,'Producción', 'Mar del Plata', 77740269),
(1004,'Recursos Humanos', 'Mar del Plata', 31840932),
(1005,'Desarrollo', 'Buenos Aires', 99940269);

select * from departamento ;

/*ingreso 5 registros empleado*/

INSERT INTO empleado  (nDIEmp,nomEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, cargo, nroDepto) VALUES
(311178144,'Rosa Angulo', 'Femenino', '1957-03-15', '2022-08-22', 725000, 40000, 'Jefe de ventas', 1000),
(311178145,'Juan Pérez', 'Masculino', '1990-05-15', '2010-02-28', 324000, 50000, 'Vendedor', 1411),
(311178146,'María Rodríguez', 'Femenino', '1985-10-20', '2009-11-15', 324550, 40000, 'Contador', 1023),
(311178147,'Pedro Gomez', 'Masculino', '1988-08-10', '2012-06-30', 521100, 50000, 'Operario', 1222),
(311178148,'Laura Martínez', 'Femenino', '1993-04-25', '2015-09-10', 624100, 40000, 'Analista de RRHH', 1036),
(311178149,'Carlos Sánchez', 'Masculino', '1995-12-03', '2018-03-20', 777000, 50000, 'Programador', 1500),
(311178150,'Alexis Vazquez', 'Masculino', '2003-10-14', '2023-08-22', 200000, null ,'Pasante', 1451);


select * from empleado;

/*3)consultas*/

/*a*/select nomEmp from empleado;

/*b*/select * from departamento;

/*c*/ select * from empleado where cargo = 'Jefe de ventas';
	  select * from empleado where cargo = 'Contador';

/*d*/select COUNT(nomEmp) FROM empleado;

/*e*/select avg(salEmp) as sueldoPromedio from empleado;

/*f*/ select nombreDpto from departamento order by ciudad asc;

/*g*/select nomEmp,salEmp,comis from empleado where nroDepto = 1411;
	 select nomEmp,salEmp,comis from empleado where nroDepto = 1500;

/*h*/select salEmp from empleado; 
	 select salEmp * 1.25 as incremento from empleado; 
	 select salEmp * 1.25 + 20000 as sumaDelTodo from empleado;

	
/*i*/update empleado set salEmp = '991250.00';  


/*j*/update departamento set ciudad = 'Laferrere' where ciudad = 'Buenos Aires' and nombreDpto = 'Gerencia';
	 update departamento set ciudad = 'La Plata' where ciudad = 'Mar del Plata' and nombreDpto = 'Recursos Humanos';

	
/*K*/select salEmp from empleado where nDIEmp = 311178145;
	
/*I*/ select nomEmp from empleado where nomEmp like 'a%';

/*m*/
select * from empleado where comis is null;

/*n*/
select nomEmp from empleado where salEmp  > 300000 ; 

/*o*/
select nomEmp, max(salEmp) as SalarioAlto from empleado;

/*p*/
delete from empleado where nomEmp = 'Laura Martínez';





	
