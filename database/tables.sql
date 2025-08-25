CREATE TABLE tbl_recipe(
	recipe_id				INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	recipe_name				VARCHAR(200) NOT NULL,
	cuisine_id				INT NOT NULL,
	recipe_desciption		VARCHAR(2000) NOT NULL,
	recipe_created_by		VARCHAR(50) NOT NULL,
	recipe_updated_by		VARCHAR(50) NOT NULL,
	recipe_created_date		TIMESTAMP,
	recipe_updated_date		TIMESTAMP,
	CONSTRAINT fk_cuisine
      FOREIGN KEY(cuisine_id) 
        REFERENCES tbl_cuisine(cuisine_id)
)

CREATE TABLE tbl_recipe_ingredients(
	ingre_id				INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	recipe_id				INT 	NOT NULL,
	ingre_name				VARCHAR(200) NOT NULL,
	ingre_quantity			INT		NOT NULL,
	metric_id				INT		NOT NULL,
	CONSTRAINT fk_recipe
      FOREIGN KEY(recipe_id) 
        REFERENCES tbl_recipe(recipe_id),
	
	CONSTRAINT fk_quantity_metrics
      FOREIGN KEY(metric_id) 
        REFERENCES tbl_quantity_metrics(metric_id)
)

CREATE TABLE tbl_cuisine(
	cuisine_id				INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	cuisine_name			VARCHAR(200) NOT NULL,
)

CREATE TABLE tbl_quantity_metrics(
	metric_id				INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	metric_name				VARCHAR(20) NOT NULL,
)


CREATE TABLE tbl_user(
	user_id				INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	user_name			VARCHAR(200) NOT NULL,
	user_password		VARCHAR(500) NOT NULL,
	user_first_name		VARCHAR(200) NOT NULL,
	user_last_name		VARCHAR(200) NOT NULL,
	user_gender			VARCHAR(10)
)

CREATE TABLE tbl_user_contact_info(
	user_contact_id				INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	user_id						INT NOT NULL,
	user_contact_type_id		INT NOT NULL,
	user_contact_value		    VARCHAR(500) NOT NULL,
	user_contact_default		BOOLEAN,
	CONSTRAINT fk_user_id
      FOREIGN KEY(user_id) 
        REFERENCES tbl_user(user_id),
	
	CONSTRAINT fk_user_contact_type
      FOREIGN KEY(user_contact_type_id) 
        REFERENCES tbl_user_contact_type(user_contact_type_id)
)

CREATE TABLE tbl_user_contact_type(
	user_contact_type_id 			INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	user_contact_type_value			VARCHAR(100) NOT NULL
)

CREATE TABLE tbl_menu(
	menu_dish_id 			INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	menu_dish_name			VARCHAR(100) NOT NULL,
	menu_dish_cost			INT			 NOT NULL,
	menu_cuisine_id			INT			 NOT NULL,
	menu_dish_class_id		INT			 NOT NULL,
	menu_dish_description	VARCHAR(500),
	menu_dish_pic_path		VARCHAR(500),
	CONSTRAINT fk_menu_cuisine_id
      FOREIGN KEY(menu_cuisine_id) 
        REFERENCES tbl_cuisine(cuisine_id),
	CONSTRAINT fk_menu_classification_id
      FOREIGN KEY(menu_dish_class_id) 
        REFERENCES tbl_dish_classification(dish_class_id)
)


CREATE TABLE tbl_dish_classification(
	dish_class_id 			INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	dish_class_name			VARCHAR(100) NOT NULL,
	dish_css_class 			VARCHAR(50)
)

CREATE TABLE tbl_customer_review(
	review_id 			INT 			GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	user_id				INT				NOT NULL,
	review_text			VARCHAR(500) 	NOT NULL,
	CONSTRAINT fk_user_review_id
      FOREIGN KEY(user_id) 
        REFERENCES tbl_user(user_id)
)

CREATE TABLE tbl_user_order(
	order_id 			INT 			GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	user_id				INT				NOT NULL,
	order_date			TIMESTAMP	 	NOT NULL,
	order_total			FLOAT,
	CONSTRAINT fk_user_order_id
      FOREIGN KEY(user_id) 
        REFERENCES tbl_user(user_id)
)

CREATE TABLE tbl_user_order_items(
	order_items_id 			INT 			GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	order_id				INT				NOT NULL,
	order_item_id			INT			 	NOT NULL,
	order_item_quantity		INT			 	NOT NULL,
	order_item_price		FLOAT			NOT NULL,
	CONSTRAINT fk_order_item_id
      FOREIGN KEY(order_id) 
        REFERENCES tbl_user_order(order_id),

	CONSTRAINT fk_order_menu_id
      FOREIGN KEY(order_item_id) 
        REFERENCES tbl_menu(menu_dish_id)
)

CREATE TABLE tbl_sub_menu(
	menu_items_id 			INT 			GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	menu_dish_id			INT				NOT NULL,
	menu_dish_name			VARCHAR(500) 	NOT NULL,
	order_item_price		FLOAT			NOT NULL,
	CONSTRAINT fk_menu_item_id
      FOREIGN KEY(menu_dish_id) 
        REFERENCES tbl_menu(menu_dish_id),
)

CREATE TABLE tbl_conf(
	conf_id		 			INT 			GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	conf_description		VARCHAR(500) 	NOT NULL,
	conf_value				VARCHAR(50) 	NOT NULL	
)

CREATE TABLE tbl_website_hit(
	hit_id		 			INT 			GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	ip_addr					VARCHAR(15) 	NOT NULL,
	device_type				VARCHAR(20),
	browser					VARCHAR(20),
	osname					VARCHAR(20),
	country					VARCHAR(20),
	city					VARCHAR(20),
	isp						VARCHAR(100),
	visitor_date			TIMESTAMP	 	
)

CREATE OR REPLACE FUNCTION get_menu_items_func()
RETURNS TABLE (
    menu_dish_id             INT,
    menu_dish_name           CHARACTER VARYING(100),
    menu_dish_cost           double precision,
    discounted_price         NUMERIC(10,2),
	cuisine_name             CHARACTER VARYING(200),
    dish_class_name          CHARACTER VARYING(100),
    dish_css_class           CHARACTER VARYING(50),
    menu_dish_description    CHARACTER VARYING(500),
    menu_dish_pic_path       CHARACTER VARYING(500),
    menu_extras              CHARACTER VARYING(5000)
)
LANGUAGE plpgsql
AS $$

DECLARE 
    discount NUMERIC;  -- allow decimals like 0.10 for 10%
BEGIN
    SELECT CAST(conf_value AS NUMERIC)
    INTO discount
    FROM tbl_conf
    WHERE conf_description = 'Discount';

    -- If no discount is found, default to 0
    IF discount IS NULL THEN
        discount := 0;
    END IF;

    RETURN QUERY
    SELECT
        m.menu_dish_id,
        m.menu_dish_name,
        m.menu_dish_cost,
        CASE 
		    WHEN discount = 0 THEN 0
		    ELSE ROUND(CAST(m.menu_dish_cost * (1 - discount / 100) AS NUMERIC), 2)
		END AS discounted_price,
		c.cuisine_name,
        dc.dish_class_name,
        dc.dish_css_class,
        m.menu_dish_description,
        m.menu_dish_pic_path,
        m.menu_extras
    FROM
        tbl_menu m
        INNER JOIN tbl_cuisine c ON c.cuisine_id = m.menu_cuisine_id
        INNER JOIN tbl_dish_classification dc ON dc.dish_class_id = m.menu_dish_class_id;

END;
$$;

RETURNS TABLE (
    menu_dish_id	INT,
	menu_dish_name CHARACTER VARYING(100),
    menu_dish_cost FLOAT,
    cuisine_name CHARACTER VARYING(200),
    dish_class_name CHARACTER VARYING(100),
    dish_css_class CHARACTER VARYING(50),
    menu_dish_description CHARACTER VARYING(500),
    menu_dish_pic_path CHARACTER VARYING(500),
	menu_extras	CHARACTER VARYING(5000)
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
		m.menu_dish_id,
        m.menu_dish_name,
        m.menu_dish_cost,
        c.cuisine_name,
        dc.dish_class_name,
        dc.dish_css_class,
        m.menu_dish_description,
        m.menu_dish_pic_path,
		m.menu_extras
    FROM
        tbl_menu m
        INNER JOIN tbl_cuisine c ON c.cuisine_id = m.menu_cuisine_id
        INNER JOIN tbl_dish_classification dc ON dc.dish_class_id = m.menu_dish_class_id;
END;

RETURN(SELECT get_menu_items_func());
$$;

CREATE OR REPLACE FUNCTION get_customer_reviews()
RETURNS TABLE (
    review_id			INT,
    user_id		 		INT,
    user_first_name 	CHARACTER VARYING(200),
    user_gender			CHARACTER VARYING(10),
	review_text			CHARACTER VARYING(500)
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
		cr.review_id,
		u.user_id,
		u.user_first_name,
		u.user_gender,
		cr.review_text
	FROM tbl_customer_review cr
		 INNER JOIN tbl_user u ON cr.user_id = u.user_id;
END;
$$;



SELECT 
	r.recipe_name,
	i.ingre_name,
	i.ingre_quantity,
	i.ingre_quantity_metric
FROM tbl_recipe r
	INNER JOIN tbl_recipe_ingredients i ON r.recipe_id = i.recipe_id
WHERE
	r.recipe_id  = 1
