use ecommerce;

-- clientes
select * from clients;

-- clientes que moram no centro
select concat(Fname,' ',Minit,' ',Lname) as NameClient, Address
	from clients
    where Address like '%centro%';

-- TOTAL DE CLIENTES
select count(*) as total_clientes from clients;

-- valor total dos pedidos
select sum(valueOrder) as Valor_total_pedidos from orders;

-- quantidade por local de compra
select orderDescription, count(*) as qtd
	from orders
    group by orderDescription;

-- Cliente que fez a compra de maior valor
select concat(Fname,' ',Minit,' ',Lname) as name_client, valueOrder as RS
	from (orders join clients on idOrderClient=idClient) 
	having valueOrder = (select max(valueOrder) from orders);
 
 -- quantidadade de pedidos fornecidos pelos fornecedores
select SocialName, sum(quantity)as Qtd_pedidos, count(*) as N_pedidos
	from (productSupplier join supplier on idPsSupplier=idSupplier)
	group by SocialName;
    
-- Local de armazemento ordenado do maior para o menor
select storageLocation, count(*)
	from productStorage
    group by storageLocation
    order by count(*) desc;
    
-- clientes que compraram via aplicativo
select concat(Fname,' ',Minit,' ',Lname) as nameCliente from orders, clients
	where idOrderClient=idClient and orderDescription='compra via aplicativo';
   
-- junção de tabelas produto, vendedor e produto vendedor
 select * 
	from  (seller join  productSeller on idSeller=idPseller) 
    join product  on idPproduct=idProduct;

-- vendedor com maior numero de vendadas                        
 select SocialName, prodQuantity 
	from  (seller join  productSeller on idSeller=idPseller) 
    join product  on idPproduct=idProduct
    having prodQuantity = (select max(prodQuantity) from productSeller);
    
-- meios de pagamentos
select paymentTipe from orders;