
CREATE TABLE Puesto (
    Clave  TINYINT PRIMARY KEY,
    Nombre CHAR(50) NOT NULL
);
CREATE TABLE Trabajador (
    Clave_Trabajador TINYINT PRIMARY KEY,
    Nombre           CHAR(50) NOT NULL,
    ApellidoPaterno  CHAR(50) NOT NULL,
    ApellidoMaterno  CHAR(50) NOT NULL,
    Fecha_Ingreso    DATE,
    Telefono         VARCHAR(10),
    Usuario          VARCHAR(15) NOT NULL,
    Contraseña       VARCHAR(15) NOT NULL,
    Puesto           INTEGER REFERENCES Puesto (Clave) 
);
CREATE TABLE Cliente (
    Clave_Cliente    SMALLINT PRIMARY KEY,
    Nombre           CHAR(50) NOT NULL,
    Apellido_Paterno CHAR(50) NOT NULL,
    Apellido_Materno CHAR(50) NOT NULL,
    Telefono         VARCHAR(10),
    Dirección        VARCHAR(350)
);
CREATE TABLE Proveedor (
    Clave_Proveedor SMALLINT PRIMARY KEY,
    Nombre          CHAR(100) NOT NULL,
    Dirección       VARCHAR(350) NOT NULL,
    Teléfono       	VARCHAR(10),
    Correo          VARCHAR(50),
    Representante   CHAR(50)
);
CREATE TABLE Compra (
    Clave_Compra     MEDIUMINT PRIMARY KEY,
    Fecha_Compra     DATE NOT NULL,
    Clave_Trabajador TINYINT REFERENCES Trabajador (Clave_Trabajador) 
);
CREATE TABLE Venta (
    Clave_Venta      MEDIUMINT PRIMARY KEY,
    Fecha            DATE NOT NULL,
    Clave_Cliente    SMALLINT REFERENCES Cliente (Clave_Cliente),
    Clave_Trabajador TINYINT REFERENCES Trabajador (Clave_Trabajador) 
);
CREATE TABLE Producto (
    Clave_Producto  MEDIUMINT PRIMARY KEY,
    Nombre          VARCHAR(250) NOT NULL,
    Precio			FLOAT NOT NULL,
    Inventario      MEDIUMINT NOT NULL,
    Clave_Proveedor SMALLINT REFERENCES Proveedor (Clave_Proveedor) 
);
CREATE TABLE Factura (
    Clave_Factura  MEDIUMINT PRIMARY KEY,
    Clave_Venta    MEDIUMINT REFERENCES Venta (Clave_Venta),
    Clave_Producto MEDIUMINT REFERENCES Producto (Clave_Producto),
    Cantidad       TINYINT NOT NULL
);
CREATE TABLE Tarjeta_Compra (
    Clave_Tarjeta  MEDIUMINT PRIMARY KEY,
    Clave_Compra   MEDIUMINT REFERENCES Compra (Clave_Compra),
    Clave_Producto MEDIUMINT REFERENCES Producto (Clave_Producto),
    Cantidad       SMALLINT NOT NULL
);
