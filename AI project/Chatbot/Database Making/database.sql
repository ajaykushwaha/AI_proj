DROP DATABASE IF EXISTS foodorderingsystem;
CREATE DATABASE foodorderingsystem;
use foodorderingsystem;


CREATE TABLE orders(
   Username       VARCHAR(255) NOT NULL PRIMARY KEY
  ,Address        VARCHAR(255) NOT NULL
  ,Dishes         VARCHAR(255) NOT NULL
  ,Total_Quantity INTEGER  NOT NULL
  ,Total_Price    INTEGER  NOT NULL
);


CREATE TABLE menu(
   F_c_code VARCHAR(255) NOT NULL
  ,Name     VARCHAR(255) NOT NULL
  ,Price    VARCHAR(255) NOT NULL
);


CREATE TABLE category(
   FoodCategory VARCHAR(11) NOT NULL PRIMARY KEY
);

INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('Ajay_Kushwaha','Evershine Bldg, Virar(E)','VEG. NOODLES, CHINESE SOUP',2,100);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('pkiran897','Charkop Village, Kandivali(W)','PASTRY',1,60);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('sachinhakke786','Kurar Village, Appapada, Near Pushpa Park','CHICKEN LOLLIPOP, SHAHI BIRIYANI',2,170);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('gokulkombath007','Room No 10, Chakala, Vile Parle (E), Mumbai - 400 099','VEG. RICE, CHINESE SOUP',2,90);
INSERT INTO orders(Username,Address,Dishes,Total_Quantity,Total_Price) VALUES ('rishinan98','Room No 4, Silvershine Bldg, Ghatkopar(E)','VEG. NOODLES',1,60);



INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Tandoori Paneer Tikka','220/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Malai Paneer Tikka','220/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Soya Tandoori Tikka','175/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Tandoori Aloo','179/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Punjabi Soya Chap','179/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Hare-Bhare Kabab','162/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Dahi ke Kabab','179/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('starters','Platter','325/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Sandvich','Plain Sandwich','175/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Sandvich','Grilled Sandwich','175/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Sandvich','Club Sandwich','175/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Salads','Russian Salad / Maccroni','119/');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Pizza','Plain Cheese Pizza','190/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Pizza','Capsicum, Onion Pizza','210/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Pizza','Tomato, Onion Pizza','210/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Pizza','Capsicum, Onion, Mashroom Pizza','250/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Pizza','Jain Spl. Pizza','250/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Pizza','Tandoori Pizza','250/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Pizza','Super Veggie Pizza(Double Cheese)','265/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Subziyan','Shahi Paneer','210/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Subziyan','Kadhai Paneer','210/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Subziyan','Paneer Butter Masala','210/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Subziyan','Mushroom Masala','215/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Subziyan','Malai Kofta','210/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dals','Dal Makhani','192/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dals','Yellow Dal','141/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dals','Rajma','141/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dals','Chole','141/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Tandoori Roti','30/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Roomali Roti','17/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Butter Roti','36/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Plain Naan','43/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Butter Naan','58/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Garlic Naan Butter','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Tawa Parantha','53/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Laccha Parantha','53/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Pudina Parantha','53/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Stuffed Kulcha (Aloo)','65/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Stuffed Kulcha (Paneer)','65/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Stuffed Kulcha (Onion)','65/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Breads','Papad','15/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Dosa (Butter)','125/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Onion Dosa (Butter)','136/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Paper Dosa','130/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Mysore Dosa','123/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Rawa Dosa','119/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Onion Rawa Dosa','136/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Dosa (Butter)','145/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Onion Dosa (Butter)','156/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Paper Dosa','150/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Myscore Dosa','143/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Rawa Dosa','156/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Dosas','Onion Rawa Dosa','171/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('mainCourse','Veg Chopsouey','195/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('mainCourse','Chilly Paneer Gravy','205/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('mainCourse','Manchurian Gravy','175/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('mainCourse','Sweet & Sour Veg.','175/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('mainCourse','Mix. Veg. in Hot Garlic Sauce','185/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('mainCourse','Shreded Potatoes in Hot Garlic Sauce','153/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Noodles','Veg Hakka Noodles','145/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Noodles','Chilli Garlic Noodles','145/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Noodles','Pan Fried Noodles','225/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Noodles','Gravy Noodles','225/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Vanilla/Strawberry','51/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Tutti Fruti','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Pineapple','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Chocolate','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Butter Scotch','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Kaju Kishmish','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Vanilla Chocochips','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Mango','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Anjeer Honey','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Chocolate Almond Fudge','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Kesar Pista','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Icecream','Black Currant','60/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Rice','Veg. Fried Rice','165/-');
INSERT INTO menu(F_c_code,Name,Price) VALUES ('Rice','Chilly Garlic Rice','165/-');


INSERT INTO category(FoodCategory) VALUES ('Starters');
INSERT INTO category(FoodCategory) VALUES ('Sandvich');
INSERT INTO category(FoodCategory) VALUES ('Salads');
INSERT INTO category(FoodCategory) VALUES ('Pizza');
INSERT INTO category(FoodCategory) VALUES ('Subziyan');
INSERT INTO category(FoodCategory) VALUES ('Dals');
INSERT INTO category(FoodCategory) VALUES ('Breads');
INSERT INTO category(FoodCategory) VALUES ('Dosas');
INSERT INTO category(FoodCategory) VALUES ('mainCourse');
INSERT INTO category(FoodCategory) VALUES ('Noodles');
INSERT INTO category(FoodCategory) VALUES ('Icecream');
INSERT INTO category(FoodCategory) VALUES ('Rice');
