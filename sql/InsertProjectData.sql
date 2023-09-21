USE db_PICASO_OdhranH;

INSERT INTO Project (ProjectID,ProjectName,ProjectValue) VALUES
	(1,'Wokday',100000.00,1),
	(2,'InnovateX',9999999.00,2),
	(3,'ByteFusion',10.00,3),
	(4,'InfinitiCode',9999999.99,4),
	(5,'VirtuTech',1.99,5),
	(6,'QuantumSync',878731.12,6),
	(7,'DataPulse',7471.70,7),
	(8,'Cipher Craft',64.00,8),
	(9,'NovaWave',111111.00,9),
	(10,'Syntho Sphere',10.00,10),
	(11,'NexaGenix Labs',38782.39,12),
	(12,'Spark Circuit',872879.00,12),
	(13,'Aurora Stream',999998.00,4),
	(14,'Nebula Sync',456.19,4),
	(15,'EvoWare',1001.00,5),
	(16,'CodeNebula',99.99,17),
	(17,'Quantum Vista',12.34,18),
	(18,'Infinity Bridge',45.67,19),
	(19,'Zenith Scape Software',89.90,19),
	(20,'Omni Core',9392.10,21);

INSERT INTO Technologies (TechID,TechType) VALUES
	(1,'Python'),
	(2,'JavaScript'),
	(3,'Java'),
	(4,'SQL'),
	(5,'AWS'),
	(6,'Azure'),
	(7,'Unity'),
	(8,'Godot');

INSERT INTO Project_Tech (ProjectID,TechID) VALUES
	(1,1),
	(3,1),
	(9,1),
	(10,1),
	(14,1),
	(15,1),
	(17,1),
	(1,2),
	(2,2),
	(4,2),
	(6,2),
	(10,2),
	(15,2),
	(17,2),
	(1,4),
	(2,4),
	(6,4),
	(9,4),
	(16,4),
	(18,4),
	(2,5),
	(7,5),
	(16,5),
	(20,5),
	(2,6),
	(9,6),
	(17,6),
	(13,7),
	(3,8),
	(15,8);
