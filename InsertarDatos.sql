FaINSERT INTO Puesto VALUES (1,'Administrador');
INSERT INTO Puesto VALUES (2,'Contador');
INSERT INTO Puesto VALUES (3,'Vendedor');

INSERT INTO Trabajador VALUES (1,'Melanie Alejandra', 'Arzola','Reyes',09/01/2020,8117375298, 'melaniearz','mel0618', 1);
INSERT INTO Trabajador VALUES (2,'Edgar Aldair', 'Rangel','García',09/01/2020,8192658705, 'edgarran','alda0385', 2);
INSERT INTO Trabajador VALUES (3,'Jorge Alberto', 'Flores','Sanchez',09/01/2020,8126853950, 'jorgeflo','jorge2063', 3);

INSERT INTO Cliente VALUES(1,'Arturo','Morado','Moreno',8183821147, 'AVE SANTO DOMINGO 1051,VALLE DE SANTO DOMINGO 1ER SECTOR,MONTERREY,NL,C.P.66438');
INSERT INTO Cliente VALUES(2,'Azael','Nevares','Ibarra',8183722340,'AGUSTIN MELGAR 2328,REFORMA,MONTERREY,NL,C.P.64550');
INSERT INTO Cliente VALUES(3,'Bryan','Camarillo','Gonzalez',8183821147, 'CALLE PICO DE LA MALINCHE 600, JARDIN DE LAS PUENTES, MONTERREY,NL,C.P.66460');
INSERT INTO Cliente VALUES(4,'Ricardo','García','Rodriguez',818350226,'CALLE MORENITA MIA 331,SAN BARTOLO,MONTERREY,NL,C.P.66413');
INSERT INTO Cliente VALUES(5,'Victor','Moreno','Valdez',8183727615,'CALLE MIGUEL NIETO 2121, INDUSTRIAL, MONTERREY, NL, C.P.64299');

INSERT INTO Proveedor VALUES(1,'Acura Interlomas','Vía Magna No. 47, Colonia Centro Urbano San Fernando la Herradura,Huixquilucan, 52786 México, Edo. de México', 5250621115,'acura_mexico@gmail.com','Francisco Gomez');
INSERT INTO Proveedor VALUES(2,'Rivero Linda Vista','Ave Miguel Aleman 5400 Col Torres de Lindavista CP 67138 Monterrey, Nuevo León', 8112571257,'chevrolet_lindavista@gmail.com','Pedro Sigala');
INSERT INTO Proveedor VALUES(3,'Honda Tec - Tecnologico','Av. Eugenio Garza Sada No. 2415 Col. Tecnológico Monterrey, N.L', 5281286000,'honda_tecnologico@gmail.com','Frida Treviño');
INSERT INTO Proveedor VALUES(4,'JIDOSHA San Nicolas de los Garza - LA FE','Av. Miguel Alemán #1858, Col. Villas San Cristóbal San Nicolás de los Garza, NL', 8119330000,'jidosha_snlafe@gmail.com','Elisa Ortiz');
INSERT INTO Proveedor VALUES(5,'Toyota Monterrey','AV. LÁZARO CÁRDENAS 2272 OTE. COL. VALLE ORIENTE, GARZA GARCÍA, NL. CP 66269', 8181336600,'toyota_monterrey@gmail.com','Samuel Quiroz');

INSERT INTO Compra VALUES(1,25/02/2020,2);
INSERT INTO Compra VALUES(2,27/10/2020,2);
INSERT INTO Compra VALUES(3,14/09/2020,2);
INSERT INTO Compra VALUES(4,16/09/2020,2);
INSERT INTO Compra VALUES(5,02/11/2020,2);

INSERT INTO Venta VALUES(1,20/06/2020,2,3);
INSERT INTO Venta VALUES(2,03/09/2020,3,3);
INSERT INTO Venta VALUES(3,25/10/2020,5,3);
INSERT INTO Venta VALUES(4,28/07/2020,4,3);
INSERT INTO Venta VALUES(5,25/02/2020,1,3);

INSERT INTO Producto VALUES(1,'Balata Brembo P85020N',795.11,129,3);
INSERT INTO Producto VALUES(2,'Amortiguador Monroe 400296',955.58,52,1);
INSERT INTO Producto VALUES(3,'Disco Freno Brembo 08.7165.10',403.79,390,4);
INSERT INTO Producto VALUES(4,'Disco Freno Brembo 09.4765.10',490.80,377,2);
INSERT INTO Producto VALUES(5,'Calavera Trasera Derecha',946.17,50,5);
INSERT INTO Producto VALUES(6,'Faro Seat Toledo 2013-2017',1963.55,50,5);
INSERT INTO Producto VALUES(7,'Meguiars Hot Shine G18715 Abrillantador Llantas 473ml',252.84,200,2);
INSERT INTO Producto VALUES(8,'Salpicadera',686.81,78,1);
INSERT INTO Producto VALUES(9,'Defensa Delantera',749.65,35,2);
INSERT INTO Producto VALUES(10,'Valvula De Control De Aire En Marcha Minima (Iac)',383.63,25,4);
INSERT INTO Producto VALUES(11,'Sensor De Temperatura Ambiente Att',876.19,120,3);
INSERT INTO Producto VALUES(12,'Distribuidor',4584.81,80,3);

INSERT INTO Factura VALUES(1,1,12,3);
INSERT INTO Factura VALUES(2,1,6,1);
INSERT INTO Factura VALUES(3,2,5,3);
INSERT INTO Factura VALUES(4,3,9,10);
INSERT INTO Factura VALUES(5,4,10,8);
INSERT INTO Factura VALUES(6,5,7,9);

INSERT INTO Tarjeta_Compra VALUES(1,1,9,15);
INSERT INTO Tarjeta_Compra VALUES(2,1,8,25);
INSERT INTO Tarjeta_Compra VALUES(3,3,11,5);
INSERT INTO Tarjeta_Compra VALUES(4,5,3,30);
INSERT INTO Tarjeta_Compra VALUES(5,4,2,58);