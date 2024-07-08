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
	user_password		VARCHAR(500) NOT NULL
)

CREATE TABLE tbl_user_contact_info(
	user_contact_id				INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	user_id						INT NOT NULL,
	user_contact_type_id		INT NOT NULL,
	user_contact_value		    VARCHAR(500) NOT NULL,
	user_contact_default		BOOLEAN
	CONSTRAINT fk_user_id
      FOREIGN KEY(user_id) 
        REFERENCES tbl_user(user_id),
	
	CONSTRAINT fk_user_contact_type
      FOREIGN KEY(user_contact_type_id) 
        REFERENCES tbl_user_contact_type(user_contact_type_id)
)

CREATE TABLE tbl_user_contact_type(
	user_contact_type_id 			INT 	GENERATED ALWAYS AS IDENTITY PRIMARY KEY
	user_contact_type_value			VARCHAR(100) NOT NULL
)



SELECT 
	r.recipe_name,
	i.ingre_name,
	i.ingre_quantity,
	i.ingre_quantity_metric
FROM tbl_recipe r
	INNER JOIN tbl_recipe_ingredients i ON r.recipe_id = i.recipe_id
WHERE
	r.recipe_id  = 1
