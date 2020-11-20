CREATE TABLE orders(
   Username       VARCHAR(255) NOT NULL PRIMARY KEY
  ,Address        VARCHAR(255) NOT NULL
  ,Dishes         VARCHAR(255) NOT NULL
  ,Total_Quantity INTEGER  NOT NULL
  ,Total_Price    INTEGER  NOT NULL
);


INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('Ajay_Kushwaha','Evershine Bldg, Virar(E)','VEG. NOODLES, CHINESE SOUP',2,100);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('pkiran897','Charkop Village, Kandivali(W)','PASTRY',1,60);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('sachinhakke786','Kurar Village, Appapada, Near Pushpa Park','CHICKEN LOLLIPOP, SHAHI BIRIYANI',2,170);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('gokulkombath007','Room No 10, Chakala, Vile Parle (E), Mumbai - 400 099','VEG. RICE, CHINESE SOUP',2,90);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('rishinan98','Room No 4, Silvershine Bldg, Ghatkopar(E)','VEG. NOODLES',1,60);