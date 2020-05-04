-- create database GCPTRAINING;
use GCPTRAINING;
CREATE TABLE employee(
	Id int AUTO_INCREMENT UNIQUE,	
	EmployeeNumber varchar(256) NOT NULL UNIQUE,    
	UserId varchar(256) NULL,
	SupervisoremployeeNumber varchar(256) null,	
	DepartmentName varchar(256) NULL,	
	FirstName varchar(256) NULL,
	Lastname varchar(256) NULL,
	KnownAsName varchar(256) NULL,	
	Phone varchar(256) NULL,
	Email varchar(256) NULL,
	DateOfBirth datetime NULL,
	IsActive boolean NULL DEFAULT 1,
	TimeZone varchar(256) NOT NULL,
	CreatedDate datetime NULL DEFAULT NOW(),
    PRIMARY KEY(Id)
);

insert into employee values (null,'11111111','ROOOT001','','GCP TRAINING','ROOT','ROOT','',NULL,NULL,'2020-01-01',1,'UTC+8',NOW());
insert into employee values (null,'19250610','LAMOS016','11111111','GCP TRAINING','SHAWN','LAMOD','SHAWN LAMOD','09123456789','shawn.lamod@gmail.com','1996-08-30',1,'UTC+8',NOW());

INSERT INTO employee values (NULL,'23689665','MASKH048','10250657','Shoe Kicks','Herman','Mask','Herman Mask','907-691-5348','HermanRMask@teleworm.us','1969-04-22',1,'UTC+3',NULL);
INSERT INTO employee values (NULL,'84003907','RABIG020','10250657','Tech Hifi','Gary','Rabinowitz','Gary Rabinowitz','405-613-0920','GaryNRabinowitz@armyspy.com','1975-03-22',1,'UTC+9',NULL);
INSERT INTO employee values (NULL,'65476843','JACKM059','10250657','Little Folk Shops','Michael','Jackson','Michael Jackson','610-970-2659','MichaelRJackson@teleworm.us','1939-01-20',1,'UTC+9',NULL);
INSERT INTO employee values (NULL,'98925339','WAITR054','10250657','Kessel Food Market','Ralph','Wait','Ralph Wait','603-822-8154','RalphRWait@jourrapide.com','1978-06-24',1,'UTC+7',NULL);
INSERT INTO employee values (NULL,'55441301','BROWE020','10250657','Mr. Steak','Edward','Brown','Edward Brown','785-254-0020','EdwardNBrown@einrot.com','1939-04-05',1,'UTC+1',NULL);
INSERT INTO employee values (NULL,'92872427','BAILM030','10250657','Best Products','Maria','Bailey','Maria Bailey','832-866-7830','MariaWBailey@dayrep.com','1967-05-24',1,'UTC+1',NULL);
INSERT INTO employee values (NULL,'38308702','DENNG060','10250657','One-Up Realtors','Gregory','Dennis','Gregory Dennis','402-273-7960','GregoryBDennis@gustr.com','1956-08-01',1,'UTC+9',NULL);
INSERT INTO employee values (NULL,'13218315','CRAIA020','10250657','Checker Auto Parts','Alexander','Craig','Alexander Craig','706-556-2820','AlexanderCCraig@einrot.com','1977-10-15',1,'UTC+12',NULL);
INSERT INTO employee values (NULL,'62146700','ESTEK018','10250657','Highland Appliance','Kathy','Esteves','Kathy Esteves','915-231-7618','KathyJEsteves@gustr.com','1945-04-26',1,'UTC+12',NULL);
INSERT INTO employee values (NULL,'65328049','BUMGC049','10250657','Stratapro','Charles','Bumgarner','Charles Bumgarner','573-620-8649','CharlesBBumgarner@gustr.com','1984-01-31',0,'UTC+1',NULL);
INSERT INTO employee values (NULL,'80254369','LIUUV038','10250657','K''s Merchandise','Vivian','Liuu','Vivian Liuu','214-904-8338','VivianCLiu@armyspy.com','1991-10-13',1,'UTC+10',NULL);
INSERT INTO employee values (NULL,'86178608','MULCP010','10250657','Second Time Around','Pamela','Mulcahy','Pamela Mulcahy','870-873-9110','PamelaGMulcahy@dayrep.com','1941-08-13',0,'UTC+9',NULL);
INSERT INTO employee values (NULL,'98333329','REYND082','86178608','Vinyl Fever','Dawn','Reynolds','Dawn Reynolds','484-471-2882','DawnGReynolds@rhyta.com','1961-07-23',0,'UTC+7',NULL);
INSERT INTO employee values (NULL,'75385608','RIVEM024','86178608','Mission You','Mamie','Rivera','Mamie Rivera','252-362-4124','MamieCRivera@einrot.com','1945-02-15',0,'UTC+8',NULL);
INSERT INTO employee values (NULL,'90477396','HARTR058','86178608','Pro Property Maintenance','Robert','Hart','Robert Hart','229-254-2858','RobertGHart@einrot.com','1955-03-03',0,'UTC+2',NULL);
INSERT INTO employee values (NULL,'62127109','HOLLT091','86178608','The Polka Dot Bear Tavern','Terry','Holley','Terry Holley','740-259-4991','TerryMHolley@gustr.com','1954-09-25',0,'UTC+2',NULL);
INSERT INTO employee values (NULL,'10359223','KELLL065','86178608','Better Business Ideas and Services','Louise','Kelly','Louise Kelly','512-447-3165','LouiseBKelly@jourrapide.com','1975-07-30',1,'UTC+6',NULL);
INSERT INTO employee values (NULL,'93166130','MUROR062','86178608','Hit or Miss','Richard','Muro','Richard Muro','701-300-1162','RichardAMuro@armyspy.com','1942-06-22',1,'UTC+7',NULL);
INSERT INTO employee values (NULL,'75018370','RAMIF085','86178608','Body Fate','Florence','Ramirez','Florence Ramirez','314-679-7485','FlorenceERamirez@jourrapide.com','1971-01-08',0,'UTC+1',NULL);
INSERT INTO employee values (NULL,'44009021','ONEAD006','86178608','Auto Works','Dolly','Oneal','Dolly Oneal','773-316-7806','DollyJOneal@armyspy.com','1997-02-24',1,'UTC+8',NULL);
INSERT INTO employee values (NULL,'16910847','WILLP065','44009021','Leo''s Stereo','Paul','Willett','Paul Willett','480-290-4165','PaulDWillett@superrito.com','1990-02-03',1,'UTC+6',NULL);
INSERT INTO employee values (NULL,'70094114','VEGAT052','44009021','Price Club','Tim','Vega','Tim Vega','408-445-2952','TimLVega@rhyta.com','1990-02-01',1,'UTC+3',NULL);
INSERT INTO employee values (NULL,'68335434','BYRDR005','44009021','Sandy''s','Randy','Byrd','Randy Byrd','814-739-7805','RandyEByrd@gustr.com','1981-02-12',0,'UTC+11',NULL);
INSERT INTO employee values (NULL,'46081913','BRUCM015','44009021','Wilson''s Jewelers','Mike','Bruce','Mike Bruce','662-227-5615','MikeJBruce@dayrep.com','1956-07-19',1,'UTC+1',NULL);
INSERT INTO employee values (NULL,'70455939','JEANM090','44009021','Leath Furniture','Mary','Jean','Mary Jean','732-553-2790','MaryPJean@jourrapide.com','1943-08-17',1,'UTC+12',NULL);
INSERT INTO employee values (NULL,'44437801','SULLP017','44009021','Megatronic Plus','Pamela','Sullivan','Pamela Sullivan','708-727-5217','PamelaMSullivan@armyspy.com','1988-01-16',0,'UTC+10',NULL);
INSERT INTO employee values (NULL,'65640946','LANGD083','44009021','Laura Ashley','Daniel','Lang','Daniel Lang','303-987-5183','DanielCLang@fleckens.hu','1980-07-18',0,'UTC+5',NULL);
INSERT INTO employee values (NULL,'24130750','CRONM023','44009021','Avant Garde Appraisal Group','Michele','Cronin','Michele Cronin','952-881-4823','MicheleHCronin@dayrep.com','1944-07-01',1,'UTC+3',NULL);
INSERT INTO employee values (NULL,'82636892','MARTP090','44009021','Pleasures and Pasttimes','Patrick','Martin','Patrick Martin','216-314-8490','PatrickAMartin@armyspy.com','1954-07-09',0,'UTC+10',NULL);
INSERT INTO employee values (NULL,'75899631','HERRP095','44009021','Total Yard Maintenance','Patricia','Herrell','Patricia Herrell','781-583-7395','PatriciaSHerrell@gustr.com','1954-06-13',0,'UTC+12',NULL);
INSERT INTO employee values (NULL,'40874580','ROTHK081','80254369','Giant','Keith','Rothman','Keith Rothman','501-852-8481','KeithKRothman@teleworm.us','1945-07-08',1,'UTC+6',NULL);
INSERT INTO employee values (NULL,'22495006','GUZML098','80254369','Hollywood Video','Lisa','Guzman','Lisa Guzman','469-828-9698','LisaDGuzman@dayrep.com','1998-12-16',0,'UTC+2',NULL);
INSERT INTO employee values (NULL,'28545479','ARNOT028','80254369','Heilig-Meyers','Tatiana','Arnold','Tatiana Arnold','254-333-5728','TatianaKArnold@dayrep.com','1947-01-13',1,'UTC+6',NULL);
INSERT INTO employee values (NULL,'68453750','BENTL069','80254369','Krauses Sofa Factory','Larry','Bentley','Larry Bentley','508-423-1869','LarryABentley@teleworm.us','1995-01-06',0,'UTC+9',NULL);
INSERT INTO employee values (NULL,'97171568','WILLS076','80254369','Balanced Fortune','Sean','Wills','Sean Wills','828-281-9676','SeanAWills@superrito.com','1942-02-21',0,'UTC+3',NULL);
INSERT INTO employee values (NULL,'73327443','SANCK014','80254369','Envirotecture Design','Ken','Sanchez','Ken Sanchez','785-205-9814','KenKSanchez@armyspy.com','1982-11-12',1,'UTC+9',NULL);
INSERT INTO employee values (NULL,'19263661','DORMH098','80254369','Camelot Music','Hans','Dorman','Hans Dorman','845-773-8598','HansEDorman@cuvox.de','1968-01-11',0,'UTC+0',NULL);
INSERT INTO employee values (NULL,'56246003','MCGAL042','80254369','Pak and Save','Linda','McGarry','Linda McGarry','949-625-1842','LindaMMcGarry@jourrapide.com','1990-11-28',0,'UTC+0',NULL);
INSERT INTO employee values (NULL,'30333182','THOMY020','80254369','Wilson''s Jewelers','Yvonne','Thompson','Yvonne Thompson','978-722-7820','YvonneJThompson@fleckens.hu','1973-06-22',1,'UTC+1',NULL);
INSERT INTO employee values (NULL,'18488409','BRIGD065','80254369','Singer Lumber','Doyle','Briggs','Doyle Briggs','240-465-5165','DoyleSBriggs@gustr.com','1988-11-02',1,'UTC+0',NULL);
INSERT INTO employee values (NULL,'20539943','ANDED008','80254369','Wag''s','Debra','Andersen','Debra Andersen','513-763-7008','DebraJAndersen@rhyta.com','1940-08-06',0,'UTC+1',NULL);
INSERT INTO employee values (NULL,'84762520','SLOWP051','38308702','Strategy Consulting','Paula','Slowik','Paula Slowik','732-755-1351','PaulaCSlowik@einrot.com','1936-05-20',1,'UTC+5',NULL);
INSERT INTO employee values (NULL,'16730202','MEYEH060','38308702','Herman''s World of Sporting Goods','Hillary','Meyers','Hillary Meyers','614-782-6460','HillaryTMeyers@dayrep.com','1971-02-02',0,'UTC+5',NULL);
INSERT INTO employee values (NULL,'62577019','ABERV043','38308702','Security Sporting Goods','Vincent','Abernathy','Vincent Abernathy','605-584-0143','VincentBAbernathy@einrot.com','1956-09-30',0,'UTC+9',NULL);
INSERT INTO employee values (NULL,'89266499','GAVIT075','38308702','J. Riggings','Tony','Gavin','Tony Gavin','206-370-2875','TonyMGavin@gustr.com','1964-09-07',1,'UTC+11',NULL);
INSERT INTO employee values (NULL,'12554820','CRONM077','38308702','Naugles','Mary','Cronan','Mary Cronan','858-268-3777','MaryGCronan@fleckens.hu','1948-08-02',1,'UTC+10',NULL);
INSERT INTO employee values (NULL,'68656754','THORT084','38308702','Integra Investment Service','Tommy','Thornburg','Tommy Thornburg','608-378-8384','TommySThornburg@rhyta.com','1960-12-08',0,'UTC+9',NULL);
INSERT INTO employee values (NULL,'38350676','WILLD063','38308702','Liberty Wealth Planners','David','Williford','David Williford','412-719-8963','DavidRWilliford@rhyta.com','1946-01-05',0,'UTC+0',NULL);
INSERT INTO employee values (NULL,'54912711','COOPR033','38308702','Lechmere','Randy','Cooper','Randy Cooper','706-746-4633','RandyACooper@dayrep.com','1935-12-24',1,'UTC+10',NULL);
INSERT INTO employee values (NULL,'57554683','NOLAD074','38308702','Monk Home Improvements','Donald','Nolasco','Donald Nolasco','623-930-7874','DonaldMNolasco@gustr.com','1992-02-29',0,'UTC+11',NULL);