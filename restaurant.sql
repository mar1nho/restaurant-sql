## Tabela Client
CREATE TABLE client (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL,
   phone VARCHAR(20),
   vip BOOLEAN NOT NULL
);

## Tabela Mesa
CREATE TABLE resTables (
   id INT PRIMARY KEY AUTO_INCREMENT,
   number INT UNIQUE NOT NULL, 
   status BOOLEAN NOT NULL
);

## Tabela Cardápio
CREATE TABLE menu (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL UNIQUE,
   description VARCHAR(200),
   price DECIMAL(10,2) NOT NULL
);

## Tabela da Comanda do Client
CREATE TABLE clientBill (
   id INT PRIMARY KEY AUTO_INCREMENT,
   location VARCHAR(20) NOT NULL,
   status BOOLEAN NOT NULL,
   date DATE,
   table_id INT,
   client_id INT, 
   FOREIGN KEY(table_id) REFERENCES resTables(id),
   FOREIGN KEY(client_id) REFERENCES client(id)
);

## Tabela da Ordem de Pedido
CREATE TABLE orderItem (
   clientBill_id INT NOT NULL,
   menu_id INT NOT NULL,
   date DATE NOT NULL,
   FOREIGN KEY(clientBill_id) REFERENCES clientBill(id),
   FOREIGN KEY(menu_id) REFERENCES menu(id)
);


















