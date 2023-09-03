-- inserção de dados e queries
use ecommerce;

-- idClient, Fname, Minit, Lname, CPF, Address, Bdate
insert into Clients (Fname, Minit, Lname, CPF, Address, Bdate) 
	   values('Maria','M','Silva', 12346789, 'rua silva de prata 29, Carangola - Cidade das flores','1965-01-09'),
		     ('Matheus','O','Pimentel', 987654321,'rua alemeda 289, Centro - Cidade das flores','1955-12-08'),
			 ('Ricardo','F','Silva', 45678913,'avenida alemeda vinha 1009, Centro - Cidade das flores','1968-01-19'),
			 ('Julia','S','França', 789123456,'rua lareijras 861, Centro - Cidade das flores','1941-06-20'),
			 ('Roberta','G','Assis', 98745631,'avenidade koller 19, Centro - Cidade das flores','1962-09-15'),
			 ('Isabela','M','Cruz', 654789123,'rua alemeda das flores 28, Centro - Cidade das flores','1972-07-31');

-- idProduct, Pname, classification_kids, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size, valueProduct
insert into product (Pname, classification_kids, category, avaliacao, size, valueProduct) values
							  ('Fone de ouvido',false,'Eletrônico',2,'4',30),
                              ('Barbie Elsa',true,'Brinquedos',2,'3',20),
                              ('Body Carters',true,'Vestimenta',5,'5',15),
                              ('Microfone Vedo - Youtuber',False,'Eletrônico',4,'4',40),
                              ('Sofá retrátil',False,'Móveis',1,'3x57x80',4),
                              ('Farinha de arroz',False,'Alimentos',1,'2',30),
                              ('Fire Stick Amazon',False,'Eletrônico',5,'3',10);

-- idOrder, orderStatus, orderDescription, idOrderClient, sendValue, valueOrder, paymentTipe

delete from orders where idOrderClient in  (1,2,3,4);
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, valueOrder, paymentTipe) values 
							 (1, default,'compra via aplicativo',null,100,default),
                             (2,default,'compra via aplicativo',50,200,'Cartão de Credito'),
                             (3,'Confirmado',null,null,50,'Boleto'),
                             (4,default,'compra via web site',150,450,'PIX');

-- idPOproduct, idPOorder, poQuantity, poStatus
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (1,1,2,default),
                         (2,2,3,default),
                         (3,3,1,default);

-- storageLocation,quantity
insert into productStorage (storageLocation,quantity) values 
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);

-- idLproduct, idLstorage, location
insert into storageLocation (idLproduct, idLstorage, location) values
						 (1,2,'RJ'),
                         (2,6,'GO');

-- idSupplier, SocialName, CNPJ, contact
insert into supplier (SocialName, CNPJ, contact) values 
							('Almeida e filhos', 123456789123456,'21985474'),
                            ('Eletrônicos Silva',854519649143457,'21985484'),
                            ('Eletrônicos Valma', 934567893934695,'21975474');
                            
-- idPsSupplier, idPsProduct, quantity
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						 (1,1,500),
                         (1,2,400),
                         (2,4,633),
                         (3,3,5),
                         (2,5,10);
                         
-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values 
						('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
					    ('Botique Durgas',null,null,123456783,'Rio de Janeiro', 219567895),
						('Kids World',null,456789123654485,null,'São Paulo', 1198657484);

-- idPseller, idPproduct, prodQuantity
insert into productSeller (idPseller, idPproduct, prodQuantity) values 
						 (1,6,80),
                         (2,7,10);
 