CREATE TABLE Departments (
    id serial NOT NULL,
    dept_no varchar primary key NOT NULL,
    dept_name varchar   NOT NULL
	
);


CREATE TABLE employees (
    id serial NOT NULL,
    emp_no int primary key NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL

);

CREATE TABLE dept_emp (
	id serial not null,
    emp_no  int NOT NULL,
    dept_no varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no, dept_no)

);

CREATE TABLE dept_manager (
    id serial NOT NULL,
    emp_no int NOT NULL,
    dept_no varchar NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
);


	
CREATE TABLE salaries (
    id serial primary key NOT NULL,
    emp_no int NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	foreign key (emp_no) references employees (emp_no)

);

CREATE TABLE titles (
    id serial primary key NOT NULL,
    emp_no int  NOT NULL,
    title varchar   NOT NULL,
	foreign key (emp_no) references employees (emp_no)
	
);