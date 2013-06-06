create table Staff(

staff_id varchar(10),
NIC varchar(10),
f_name varchar(50),
l_name varchar(50),
address varchar(100),
password varchar(10),

constraint staff_PK primary key(staff_id)
);
/*---------------------------------------------*/  
/*------------Doctor---------------------------*/
insert into Staff values('DOC1','893459754v','Saman','Ranasinghe','Colombo','12345');
insert into Staff values('DOC2','903456054v','Nalin','Silva','Malabe','abcde');
insert into Staff values('DOC3','883455758v','Kasun','Chamara','Colombo','54321');
insert into Staff values('DOC4','703459768v','Aamal','Perera','Kandy','defgh');
insert into Staff values('DOC5','934598779v','Praveen','Upamal','Colombo','64789');

/*------------------Receptionist-----------------*/

insert into Staff values('REC1','793459766v','Lakmal','Rathnayaka','Mathara','ijklm');
insert into Staff values('REC2','893559778v','Supun','Silva','Colombo','23456');
insert into Staff values('REC3','923456632v','Sanduni','Jayasiri','Kandy','34567');
insert into Staff values('REC4','883456625v','Deepal','Jayasooriya','Kaduwela','45678');
insert into Staff values('REC5','853459874v','Supuni','Vass','Negambo','56789');

/*---------------------MLT-------------------------*/
insert into Staff values('MLT1','929874561v','Charuni','nimasha','Rathnapura','67890');
insert into Staff values('MLT2','863456632v','Ranil','de Mel','Galle','78901');
insert into Staff values('MLT3','877345568v','Kaveesha','Ranasinghe','Mathara','89012');
insert into Staff values('MLT4','923456632v','Ruvini','Jayasiri','Kandy','90123');
insert into Staff values('MLT5','873456666v','Shehan','Vikum','Nawala','01234');

/*-------------------Admin------------------------*/
insert into Staff values('ADM1','924598121v','Dulaj','Attenayake','Hatten','12345');
insert into Staff values('ADM2','896547123v','Prasad','Vijaya','Gampaha','abcde');



create table Doctor(

doctor_id varchar(10),
staff_id varchar(10),
specialization varchar(50),
no_of_appointments varchar(10),
available_time varchar(20),
available_days varchar(15),
email varchar(50),

constraint doctor_PK primary key(doctor_id),
constraint doctor_FK foreign key(staff_id) references Staff(staff_id)
);

insert into Doctor values('DOCL1','DOC1','Surgen','20','2:00 p.m.','136','saman@gmail.com');
insert into Doctor values('DOCL2','DOC2','Cardiologist','20','4:00 p.m.','257','nalin@gmail.com');
insert into Doctor values('DOCL3','DOC3','Consaltant','20','4:00 p.m.','136','kasun@gmail.com');
insert into Doctor values('DOCL4','DOC4','Surgen','10','6:00 p.m.','35','amal@gmail.com');
insert into Doctor values('DOCL5','DOC2','Physician','30','2:00 p.m.','17','praveen@gmail.com');
insert into Doctor values('DOCL6','DOC6','Physician','30','2:00 p.m.','2','Shehan@gmail.com');
insert into Doctor values('DOCL7','DOC7','Cardiologist','15','6:00 p.m.','2','nalin@gmail.com');



create table Admin(

admin_id varchar(10),
staff_id varchar(10),

constraint admin_PK primary key(admin_id),
constraint admin_FK foreign key(staff_id) references Staff(staff_id)
);

insert into Admin values('ADML1','ADM1');
insert into Admin values('ADML2','ADM2');



create table Receptionist(

receptionist_id varchar(10),
staff_id varchar(10),

constraint receptionist_PK primary key(receptionist_id),
constraint receptionist_FK foreign key(staff_id) references Staff(staff_id)
);

insert into Receptionist values('RECL1','REC1');
insert into Receptionist values('RECL2','REC2');
insert into Receptionist values('RECL3','REC3');
insert into Receptionist values('RECL4','REC4');
insert into Receptionist values('RECL5','REC5');



create table Lab_assistant(

lab_assistant_id varchar(10),
staff_id varchar(10),

constraint lab_assistant_PK primary key(lab_assistant_id),
constraint lab_assistant_FK foreign key(staff_id) references Staff(staff_id)
);

insert into Lab_assistant values('MLTL1','MLT1');
insert into Lab_assistant values('MLTL2','MLT2');
insert into Lab_assistant values('MLTL3','MLT3');
insert into Lab_assistant values('MLTL4','MLT4');
insert into Lab_assistant values('MLTL5','MLT5');


create table Patient(

patient_id varchar(10),
receptionist_id varchar(10),
doctor_id varchar(10),

name varchar(50),
age varchar(10),
gender varchar(10),
contact_no varchar(20),
alergy_history varchar(1000),
note varchar(100),
rec_no varchar(10),

constraint patient_PK primary key(patient_id),
constraint patient_FK1 foreign key(receptionist_id) references Receptionist(receptionist_id),
constraint patient_FK3 foreign key(doctor_id) references doctor(doctor_id)
);

insert into Patient values('PID1','RECL1','DOCL1','Amarasiri Peris','35','Male','0712466980',' beef, Amoxicillin','Heart disease','No');
insert into Patient values('PID2','RECL2','DOCL3','Kamala Peris','45','Female','0772435660','Penicillin','High cholesterol, Diabetes','Yes');
insert into Patient values('PID3','RECL3','DOCL4','Ann Sarala','25','Female','0782556956','Amoxicillin, ibuprofen','Arthritis','No');
insert into Patient values('PID4','RECL2','DOCL3','Achala de Silva','20','Female','0725685660','Penicillin','High cholesterol','Yes');
insert into Patient values('PID5','RECL4','DOCL2','Manoj Perera','32','Male','0716852660','Cephalosporins, Sulfonamides','Diabetes, Back Pain','Yes');



create table Bill(

bill_id varchar(10),
receptionist_id varchar(10),
bill_date varchar(10),
ammount varchar(10),

constraint bill_PK primary key(bill_id),
constraint bill_FK foreign key(receptionist_id) references Receptionist(receptionist_id)

);

insert into Bill values('BIL1','RECL3','2013/06/18','1000');
insert into Bill values('BIL2','RECL1','2013/06/19','1500');
insert into Bill values('BIL3','RECL1','2013/06/19','1900');
insert into Bill values('BIL4','RECL2','2013/06/20','11000');
insert into Bill values('BIL5','RECL3','2013/06/21','12500');
insert into Bill values('BIL6','RECL4','2013/06/21','1600');



create table Medical_history(

h_date varchar(10),
patient_id varchar(10),
history_details varchar(5000),

constraint medical_history_PK primary key(h_date,patient_id),
constraint medical_history_FK foreign key(patient_id) references Patient(patient_id)
);

insert into Medical_history values ('2013/04/11','PID1','High cholesterol ,
														 High Blood pressure
														 Back pain');
insert into Medical_history values ('2013/05/19','PID2','High cholesterol ,
														 High Blood pressure,
														 Diabetes');	
insert into Medical_history values ('2013/04/10','PID3','High cholesterol,
														 Heart disease,
														 Diabetes');
insert into Medical_history values ('2013/03/25','PID4','Back pain,
														 Heart disease');
insert into Medical_history values ('2013/04/10','PID4','High cholesterol,
														 High Blood pressure');														 
														 
												 

create table Prescribtion(

prescribtion_id varchar(10),
prescribed_date varchar(10),
doctor_id varchar(10),
patient_id varchar(10),
prescribed_info varchar(1000),

constraint prescribtion_PK primary key(prescribtion_id),
constraint prescribtion_FK1 foreign key(doctor_id) references Doctor(doctor_id),
constraint prescribtion_FK2 foreign key(patient_id) references Patient(patient_id)
);

insert into Prescribtion values('1','2013/12/10','DOCL2','PID1','Penicillin
																 Amoxicillin
																 Sulfonamides');
insert into Prescribtion values('2','2013/10/10','DOCL3','PID2','Penicillin
																 Amoxicillin
																 Piriton');
insert into Prescribtion values('3','2013/2/10','DOCL1','PID3','ibuprofen,
																 Amoxicillin
																 Penadol');
insert into Prescribtion values('4','2013/6/10','DOCL4','PID4','ibuprofen,
																 Mofin
																 Penadol');
insert into Prescribtion values('5','2013/3/25','DOCL2','PID5','ibuprofen,
																 Penadol
																 Amoxicillin');																 
																	 


create table Drugs(

drug_id varchar(10),
cost varchar(10),
drug_name varchar(50),
available_stock varchar(50),
reorder_level varchar(50),

constraint drugs_PK primary key(drug_id)
);

insert into Drugs values("DRUG1","10", "Panadol", "1000", "100"  );
insert into Drugs values("DRUG2","60", "Metformin", "2000", "100"  );
insert into Drugs values("DRUG3","120", "Clopidogrel", "1900", "100"  );
insert into Drugs values("DRUG5","34", "Atenalol", "1100", "100"  );




create table Blood_report(

Blood_report_id varchar(10),
patient_id varchar(10),
lab_assistant_id varchar(10),
report_date varchar(20),
name varchar(50),
sex varchar(10),
age varchar(10),

wbc varchar(10),
rbc varchar(10),
hgb varchar(10),
htc varchar(10),
mcv varchar(10),
mch varchar(10),
mchc varchar(10),
rdw_cv varchar(10),
rdw_sd varchar(10),
plt varchar(10),
mpv varchar(10),
pwd varchar(10),
ptc varchar(10),

constraint blood_PK primary key(Blood_report_id),
constraint report_FK1 foreign key(patient_id) references Patient(patient_id),
constraint report_FK2 foreign key(lab_assistant_id) references Lab_assistant(lab_assistant_id)
);

insert into Blood_report values('FBR1', 'PID1','MLTL1','2013/05/06','Amarasiri Peris','Male','35','6.0','5.1','15.2','48.2','93.2','22.3','35.2','12.6','40.3','11.8','16.5','0.159','300.2');
insert into Blood_report values('FBR2', 'PID2','MLTL2','2013/04/08','Kamal Peris','Male','30','6.0','5.1','17.0','45.5','78.1','35.4','34.0','15.5','35.0','10.8','15.0','0.255','350.0');
insert into Blood_report values('FBR3', 'PID3','MLTL4','2013/03/06','Ann Sarala','Female','25','8.0','5.5','16.5','45.0','90.0','30.0','40.0','16.0','33.0','10.5','16.5','0.0258','200.0');
insert into Blood_report values('FBR4', 'PID4','MLTL3','2013/05/20','Achala de Silva','Female','20','9.0','6.5','12.3','48.0','89.3','31.2','45.0','14.3','35.1','10.5','16.5','0.0258','200.0');
insert into Blood_report values('FBR5', 'PID5','MLTL1','2013/02/21','Manoj Perera','Male','29','9.6','5.5','10.3','46.3','93.2','30.2','45.9','14.8','35.4','12.5','13.5','0.0458','295.6');


create table Urine_report(

urine_report_id varchar(10),
patient_id varchar(10),
lab_assistant_id varchar(10),
report_date varchar(20),
name varchar(50),
sex varchar(10),
age varchar(10),

color_level varchar(10),
albumin varchar(10),
sugar varchar(10),
bile_salet varchar(10),
pus_salt varchar(10),
casts varchar(10),
crystals varchar(10),
occult_blood varchar(10),

constraint urine_PK primary key(urine_report_id),
constraint urine_FK1 foreign key(patient_id) references Patient(patient_id),
constraint urine_FK2 foreign key(lab_assistant_id) references Lab_assistant(lab_assistant_id)
);

insert into Urine_report values('FUR1','PID2','MLTL2','2013/01/15','Kamal Peris','Male','30','Level 2','Not tested','Absent','Present','Present','Absent','Not tested','Present');
insert into Urine_report values('FUR2','PID3','MLTL1','2013/03/07','Ann Sarala','Female','25','Level 2','Absent','Absent','Present','Not tested','Absent','Absent','Present');
insert into Urine_report values('FUR3','PID5','MLTL3','2013/02/25','Manoj Perera','Male','29','Level 4','Absent','Present','Not tested','Present','Not tested','Absent','Present');
insert into Urine_report values('FUR4','PID4','MLTL4','2013/05/01','Achala de Silva','Female','20','Level3','Not tested','Absent','Not tested','Present','Absent','Not tested','Present');



create table income(

log_no varchar(10),
bill_id varchar(10),
Blood_report_id varchar(10),
Urine_report_id varchar(10),
taotal_income varchar(10),
log_date varchar(10),

constraint income_PK primary key(log_no),
constraint income_FK1 foreign key(bill_id) references Bill(bill_id),
constraint income_FK2 foreign key(Blood_report_id) references Blood_report(Blood_report_id),
constraint income_FK3 foreign key(Urine_report_id) references Urine_report(urine_report_id)
);


create table Appointments(
	
appointment_id varchar(10),
doctor_id varchar(10),
name varchar(50),
NIC varchar (10),
date varchar(10),
time varchar(10),
receptionist_id varchar(10),
phone varchar(10),

constraint appointment_PK primary key(appointment_id),
constraint appointment_FK1 foreign key (doctor_id) references Doctor(doctor_id),
constraint appointment_FK2 foreign key (receptionist_id) references Receptionist(receptionist_id)
);

insert into Appointments values('APP1','DOCL2','Chandra Perera','890555698v','2013/05/13','4:00','RECL2','0775489220');
insert into Appointments values('APP2','DOCL3','Kalum Sandaruwan','920556588v','2013/05/22','6:00','RECL3','0711549220');
insert into Appointments values('APP3','DOCL2','Chandra Perera','890555698v','2013/06/02','5:00','RECL2','0775423545');
insert into Appointments values('APP4','DOCL5','Chandra Perera','890555698v','2013/06/12','4:00','RECL1','0785412320');
insert into Appointments values('APP5','DOCL1','Chandra Perera','890555698v','2013/06/17','5:00','RECL1','0715489278');
insert into Appointments values('APP6','DOCL6','Amal Perera','890555698v','2013/05/13','4:00','RECL2','0715489220');
insert into Appointments values('APP7','DOCL6','Chandra Ranasinghe','786655698v','2013/05/13','4:00','RECL2','0775412320');
insert into Appointments values('APP8','DOCL6','Upali de Silva','651755698v','2013/05/13','4:00','RECL2','0723489220');
insert into Appointments values('APP9','DOCL6','Lasith Malinga','890555698v','2013/05/13','4:00','RECL2','0772289220');
insert into Appointments values('APP10','DOCL7','Mahesh Diaz','701255698v','2013/05/13','4:00','RECL2','0775559269');
insert into Appointments values('APP11','DOCL6','Aruni Weerasinghe','904055698v','2013/05/13','4:00','RECL2','0775489522');