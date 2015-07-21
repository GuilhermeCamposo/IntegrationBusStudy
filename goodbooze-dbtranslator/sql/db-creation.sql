-- PostgreSQL 9.2

CREATE TABLE entry (
  entry_id SERIAL,
  insert_date TIMESTAMP NOT NULL,
  process_date TIMESTAMP NOT NULL,
  PRIMARY KEY(entry_id)
);

CREATE TABLE store (
   id SERIAL,
   name varchar(255) DEFAULT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE store_order (
  id SERIAL,
  insert_date TIMESTAMP NOT NULL,
  status varchar(255) ,
  update_date TIMESTAMP DEFAULT NULL,
  store_id INTEGER DEFAULT NULL,
  CONSTRAINT pk_store_order PRIMARY KEY (id) ,
  CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES store (id)
);

CREATE TABLE supplier (
   id SERIAL,
   name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product (
  internal_id SERIAL,
  product_supplier_id INTEGER NOT NULL,
  name varchar(255) NOT NULL,
  supplier_id INTEGER NOT NULL,
  PRIMARY KEY (internal_id),
  CONSTRAINT un_product_supplier_id UNIQUE (product_supplier_id),
  CONSTRAINT fk_supplier FOREIGN KEY (supplier_id) REFERENCES supplier (id)
) ;

CREATE TABLE supplier_order (
  id SERIAL,
  insert_date TIMESTAMP DEFAULT NULL,
  order_number INTEGER DEFAULT NULL,
  status varchar(255) DEFAULT NULL,
  update_date TIMESTAMP DEFAULT NULL,
  supplier_id INTEGER DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_supplier FOREIGN KEY (supplier_id) REFERENCES supplier (id)
); 

CREATE TABLE item_store_order (
  item_store_order_id SERIAL,
  quantity INTEGER NOT NULL,
  product_internal_id INTEGER  NOT NULL,
  store_order_id INTEGER  NOT NULL,
  PRIMARY KEY (item_store_order_id),
  CONSTRAINT fk_product_internal FOREIGN KEY (product_internal_id) REFERENCES product (internal_id),
  CONSTRAINT fk_store_order_id FOREIGN KEY (store_order_id) REFERENCES store_order (id)
);

CREATE TABLE item_supplier_order (
   id SERIAL,
   quantity  INTEGER DEFAULT NULL,
   product_supplier_id INTEGER DEFAULT NULL,
   supplier_order_id INTEGER DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_product_supplier_id FOREIGN KEY (product_supplier_id) REFERENCES product (product_supplier_id),
  CONSTRAINT fk_supplier_order_id FOREIGN KEY (supplier_order_id) REFERENCES supplier_order (id)
);

CREATE TABLE supplier_order_store_order (
  supplier_order_id INTEGER NOT NULL,
  store_order_list_id INTEGER NOT NULL,
  CONSTRAINT fk_store_order FOREIGN KEY (store_order_list_id) REFERENCES store_order (id),
  CONSTRAINT fk_supplier_order FOREIGN KEY (supplier_order_id) REFERENCES supplier_order (id)
);
