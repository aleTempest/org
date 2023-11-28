create table Users (
    uuid int primary key,
    first_name varchar(255),
    last_name varchar(255),
    phone_number varchar(20),
    address1 varchar(255),
    address2 varchar(255),
    zipcode varchar(10),
    username varchar(128),
    password varchar(255)
);

create table staff (
    uuid int primary key,
    degree varchar(255),
    salary decimal(10, 2),
    field varchar(255),
    curp char(18),
    rfc char(13),
    area varchar(255)
);

create table Appointments (
    id int primary key,
    due_date date,
    description text,
    doctor_id int,
    foreign key (doctor_id) references staff(uuid)
);

create table Prescriptions (
    id int primary key,
    description text,
    patient_id int,
    foreign key (patient_id) references person(uuid)
);

create table Patients (
    uuid int primary key,
    medical_conditions text,
    foreign key (uuid) references person(uuid)
);

create table Doctors (
    uuid int primary key,
    foreign key (uuid) references staff(uuid)
);

insert into Users values (1,'Agustín Alejandro','Mota Hinojosa','834123123','Calle1','Calle2','87037','user1','12345678');
insert into Users values (2,'Lorem','Ipsum','834123123','Calle1','Calle2','87037','user2','12345678');
insert into Users values (3,'Lorem','Ipsum','834123123','Calle1','Calle2','87037','user3','12345678');
insert into Users values (4,'Lorem','Ipsum','834123123','Calle1','Calle2','87037','user4','12345678');
insert into Users values (5,'Lorem','Ipsum','834123123','Calle1','Calle2','87037','user5','12345678');
