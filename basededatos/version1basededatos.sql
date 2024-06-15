
CREATE DATABASE if not exists Productos1;

USE Productos1;


CREATE TABLE Prendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(20) NOT NULL,
    segmento VARCHAR(1) NOT NULL,
    coleccion boolean, 
    precio DECIMAL(10, 2) NOT NULL,
    talleColor int,
    imagenes int
);

CREATE TABLE talleColor (
id int auto_increment primary key,
talle VARCHAR(3) NOT NULL,
color VARCHAR(15) NOT NULL,
stock INT
);


CREATE TABLE OfertasSemanales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prenda_id INT,
    descuento DECIMAL(5, 2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    FOREIGN KEY (prenda_id) REFERENCES Prendas(id)
);


CREATE TABLE imagenes(

id int auto_increment primary key,
url BLOB NOT NULL

);
