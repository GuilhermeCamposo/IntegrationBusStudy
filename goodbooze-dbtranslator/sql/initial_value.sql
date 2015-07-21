INSERT INTO store (id, name) VALUES ('1', 'Loja do Max');
INSERT INTO store (id, name) VALUES ('2', 'Loja da Gisele');
INSERT INTO store (id, name) VALUES ('3', 'Loja do Ivan');
INSERT INTO store (id, name) VALUES ('4', 'Loja do Luiz');


INSERT INTO supplier (id, name) VALUES ('1', 'Revendedora LoLBeer');
INSERT INTO supplier (id, name) VALUES ('2', 'Revendedora WoWBeer');
INSERT INTO supplier (id, name) VALUES ('3', 'Revendedora RagnaBeer');



INSERT INTO product (internal_id, product_supplier_id, "name", supplier_id) VALUES ('1',10,'Heineken', '1');
INSERT INTO product (internal_id, product_supplier_id, "name", supplier_id) VALUES ('2',20,'Stella', '1');
INSERT INTO product (internal_id, product_supplier_id, "name", supplier_id) VALUES ('3',30 ,'DadoBeer', '2');
INSERT INTO product (internal_id, product_supplier_id, "name", supplier_id) VALUES ('4', 40 ,'Bhrama', '2');
INSERT INTO product (internal_id, product_supplier_id, "name", supplier_id) VALUES ('5',50 ,'Petra', '3');
INSERT INTO product (internal_id, product_supplier_id, "name", supplier_id) VALUES ('6', 60, 'Kaiser', '3');