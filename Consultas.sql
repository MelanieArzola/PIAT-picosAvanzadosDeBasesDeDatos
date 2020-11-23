SELECT * FROM Puesto;

SELECT * FROM Trabajador;

SELECT t.Clave_Trabajador, t.Nombre, t.ApellidoPaterno, t.ApellidoMaterno,p.Nombre
FROM Trabajador t INNER JOIN Puesto p
ON t.Puesto = p.Clave;

SELECT t.Clave_Trabajador, t.Nombre, t.ApellidoPaterno, t.ApellidoMaterno,p.Nombre
FROM Trabajador t INNER JOIN Puesto p
ON t.Puesto = p.Clave
ORDER BY t.ApellidoPaterno;

SELECT Nombre, Teléfono, Representante
FROM Proveedor
ORDER BY Nombre;

SELECT p.Clave_Producto, p.Nombre, p.Precio, p.Inventario, pro.Nombre as Proveedor
FROM Producto p INNER JOIN Proveedor pro
ON p.Clave_Proveedor = pro.Clave_Proveedor;

SELECT p.Nombre, p.Precio, p.Inventario, pro.Nombre as Proveedor
FROM Producto p INNER JOIN Proveedor pro
ON p.Clave_Proveedor = pro.Clave_Proveedor
ORDER BY p.Nombre;

CREATE INDEX nombre_proveedr ON Proveedor (Nombre);
SHOW INDEX FROM Proveedor;

CREATE INDEX info_producto ON Producto (Nombre,Precio);
SHOW INDEX FROM Producto;

CREATE INDEX info_cliente 
ON Cliente(Nombre, Apellido_Paterno,Apellido_Materno);
SHOW INDEX FROM Cliente;

DROP INDEX nombre_proveedor ON Proveedor;
SELECT Nombre, Teléfono, Representante
FROM Proveedor
WHERE Nombre = "Acura Interlomas";

CREATE INDEX nombre_proveedor ON Proveedor (Nombre);
SELECT Nombre, Teléfono, Representante
FROM Proveedor
WHERE Nombre = "Acura Interlomas";

DROP INDEX info_producto ON Producto;
SELECT Nombre, Precio,Inventario 
FROM Producto 
WHERE Nombre LIKE "D%" AND Precio <500;

CREATE INDEX info_producto ON Producto (Nombre,Precio);
SELECT Nombre, Precio,Inventario 
FROM Producto 
WHERE Nombre LIKE "D%" AND Precio <500;

DROP INDEX info_cliente ON Cliente;
SELECT * FROM Cliente
WHERE Nombre LIKE "A%";

CREATE INDEX info_cliente 
ON Cliente(Nombre, Apellido_Paterno,Apellido_Materno);
SELECT * FROM Cliente
WHERE Nombre LIKE "A%";

DELIMITER $$
CREATE PROCEDURE Select_Producto_Proveedor()
BEGIN
	SELECT p.Clave_Producto, p.Nombre, p.Precio, p.Inventario, 
    pro.Nombre as Proveedor
	FROM Producto p INNER JOIN Proveedor pro
	ON p.Clave_Proveedor = pro.Clave_Proveedor;
END$$
DELIMITER ;
CALL Select_Producto_Proveedor();

SELECT * FROM Trabajador;

START TRANSACTION;
	INSERT INTO Trabajador VALUES (4,"Hernán","Lopez","Martinez",
	20201122,8123659841, "hernanLopez","hernan58",2);
	INSERT INTO Trabajador VALUES (5,"Perla","Morales","Mendez",
	20201122,8182651490, "perlaMendez","perlaMM",3);
ROLLBACK;
COMMIT;

SELECT * FROM TRABAJADOR;