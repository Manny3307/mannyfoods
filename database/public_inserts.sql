--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (7, 'sites', 'site');
INSERT INTO public.django_content_type VALUES (8, 'indian', 'authgroup');
INSERT INTO public.django_content_type VALUES (9, 'indian', 'authgrouppermissions');
INSERT INTO public.django_content_type VALUES (10, 'indian', 'authpermission');
INSERT INTO public.django_content_type VALUES (11, 'indian', 'authuser');
INSERT INTO public.django_content_type VALUES (12, 'indian', 'authusergroups');
INSERT INTO public.django_content_type VALUES (13, 'indian', 'authuseruserpermissions');
INSERT INTO public.django_content_type VALUES (14, 'indian', 'djangoadminlog');
INSERT INTO public.django_content_type VALUES (15, 'indian', 'djangocontenttype');
INSERT INTO public.django_content_type VALUES (16, 'indian', 'djangomigrations');
INSERT INTO public.django_content_type VALUES (17, 'indian', 'djangosession');
INSERT INTO public.django_content_type VALUES (18, 'indian', 'djangosite');
INSERT INTO public.django_content_type VALUES (19, 'indian', 'tblrecipe');
INSERT INTO public.django_content_type VALUES (20, 'indian', 'tblrecipeingredients');
INSERT INTO public.django_content_type VALUES (21, 'indian', 'tblcuisine');
INSERT INTO public.django_content_type VALUES (22, 'indian', 'tblcustomerreview');
INSERT INTO public.django_content_type VALUES (23, 'indian', 'tbldishclassification');
INSERT INTO public.django_content_type VALUES (24, 'indian', 'tblmenu');
INSERT INTO public.django_content_type VALUES (25, 'indian', 'tblquantitymetrics');
INSERT INTO public.django_content_type VALUES (26, 'indian', 'tbluser');
INSERT INTO public.django_content_type VALUES (27, 'indian', 'tblusercontactinfo');
INSERT INTO public.django_content_type VALUES (28, 'indian', 'tblusercontacttype');
INSERT INTO public.django_content_type VALUES (29, 'indian', 'tbluserorder');
INSERT INTO public.django_content_type VALUES (30, 'indian', 'tbluserorderitems');
INSERT INTO public.django_content_type VALUES (31, 'indian', 'breakfastmenuitem');
INSERT INTO public.django_content_type VALUES (32, 'indian', 'configuration');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission VALUES (25, 'Can add site', 7, 'add_site');
INSERT INTO public.auth_permission VALUES (26, 'Can change site', 7, 'change_site');
INSERT INTO public.auth_permission VALUES (27, 'Can delete site', 7, 'delete_site');
INSERT INTO public.auth_permission VALUES (28, 'Can view site', 7, 'view_site');
INSERT INTO public.auth_permission VALUES (29, 'Can add auth group', 8, 'add_authgroup');
INSERT INTO public.auth_permission VALUES (30, 'Can change auth group', 8, 'change_authgroup');
INSERT INTO public.auth_permission VALUES (31, 'Can delete auth group', 8, 'delete_authgroup');
INSERT INTO public.auth_permission VALUES (32, 'Can view auth group', 8, 'view_authgroup');
INSERT INTO public.auth_permission VALUES (33, 'Can add auth group permissions', 9, 'add_authgrouppermissions');
INSERT INTO public.auth_permission VALUES (34, 'Can change auth group permissions', 9, 'change_authgrouppermissions');
INSERT INTO public.auth_permission VALUES (35, 'Can delete auth group permissions', 9, 'delete_authgrouppermissions');
INSERT INTO public.auth_permission VALUES (36, 'Can view auth group permissions', 9, 'view_authgrouppermissions');
INSERT INTO public.auth_permission VALUES (37, 'Can add auth permission', 10, 'add_authpermission');
INSERT INTO public.auth_permission VALUES (38, 'Can change auth permission', 10, 'change_authpermission');
INSERT INTO public.auth_permission VALUES (39, 'Can delete auth permission', 10, 'delete_authpermission');
INSERT INTO public.auth_permission VALUES (40, 'Can view auth permission', 10, 'view_authpermission');
INSERT INTO public.auth_permission VALUES (41, 'Can add auth user', 11, 'add_authuser');
INSERT INTO public.auth_permission VALUES (42, 'Can change auth user', 11, 'change_authuser');
INSERT INTO public.auth_permission VALUES (43, 'Can delete auth user', 11, 'delete_authuser');
INSERT INTO public.auth_permission VALUES (44, 'Can view auth user', 11, 'view_authuser');
INSERT INTO public.auth_permission VALUES (45, 'Can add auth user groups', 12, 'add_authusergroups');
INSERT INTO public.auth_permission VALUES (46, 'Can change auth user groups', 12, 'change_authusergroups');
INSERT INTO public.auth_permission VALUES (47, 'Can delete auth user groups', 12, 'delete_authusergroups');
INSERT INTO public.auth_permission VALUES (48, 'Can view auth user groups', 12, 'view_authusergroups');
INSERT INTO public.auth_permission VALUES (49, 'Can add auth user user permissions', 13, 'add_authuseruserpermissions');
INSERT INTO public.auth_permission VALUES (50, 'Can change auth user user permissions', 13, 'change_authuseruserpermissions');
INSERT INTO public.auth_permission VALUES (51, 'Can delete auth user user permissions', 13, 'delete_authuseruserpermissions');
INSERT INTO public.auth_permission VALUES (52, 'Can view auth user user permissions', 13, 'view_authuseruserpermissions');
INSERT INTO public.auth_permission VALUES (53, 'Can add django admin log', 14, 'add_djangoadminlog');
INSERT INTO public.auth_permission VALUES (54, 'Can change django admin log', 14, 'change_djangoadminlog');
INSERT INTO public.auth_permission VALUES (55, 'Can delete django admin log', 14, 'delete_djangoadminlog');
INSERT INTO public.auth_permission VALUES (56, 'Can view django admin log', 14, 'view_djangoadminlog');
INSERT INTO public.auth_permission VALUES (57, 'Can add django content type', 15, 'add_djangocontenttype');
INSERT INTO public.auth_permission VALUES (58, 'Can change django content type', 15, 'change_djangocontenttype');
INSERT INTO public.auth_permission VALUES (59, 'Can delete django content type', 15, 'delete_djangocontenttype');
INSERT INTO public.auth_permission VALUES (60, 'Can view django content type', 15, 'view_djangocontenttype');
INSERT INTO public.auth_permission VALUES (61, 'Can add django migrations', 16, 'add_djangomigrations');
INSERT INTO public.auth_permission VALUES (62, 'Can change django migrations', 16, 'change_djangomigrations');
INSERT INTO public.auth_permission VALUES (63, 'Can delete django migrations', 16, 'delete_djangomigrations');
INSERT INTO public.auth_permission VALUES (64, 'Can view django migrations', 16, 'view_djangomigrations');
INSERT INTO public.auth_permission VALUES (65, 'Can add django session', 17, 'add_djangosession');
INSERT INTO public.auth_permission VALUES (66, 'Can change django session', 17, 'change_djangosession');
INSERT INTO public.auth_permission VALUES (67, 'Can delete django session', 17, 'delete_djangosession');
INSERT INTO public.auth_permission VALUES (68, 'Can view django session', 17, 'view_djangosession');
INSERT INTO public.auth_permission VALUES (69, 'Can add django site', 18, 'add_djangosite');
INSERT INTO public.auth_permission VALUES (70, 'Can change django site', 18, 'change_djangosite');
INSERT INTO public.auth_permission VALUES (71, 'Can delete django site', 18, 'delete_djangosite');
INSERT INTO public.auth_permission VALUES (72, 'Can view django site', 18, 'view_djangosite');
INSERT INTO public.auth_permission VALUES (73, 'Can add tbl recipe', 19, 'add_tblrecipe');
INSERT INTO public.auth_permission VALUES (74, 'Can change tbl recipe', 19, 'change_tblrecipe');
INSERT INTO public.auth_permission VALUES (75, 'Can delete tbl recipe', 19, 'delete_tblrecipe');
INSERT INTO public.auth_permission VALUES (76, 'Can view tbl recipe', 19, 'view_tblrecipe');
INSERT INTO public.auth_permission VALUES (77, 'Can add tbl recipe ingredients', 20, 'add_tblrecipeingredients');
INSERT INTO public.auth_permission VALUES (78, 'Can change tbl recipe ingredients', 20, 'change_tblrecipeingredients');
INSERT INTO public.auth_permission VALUES (79, 'Can delete tbl recipe ingredients', 20, 'delete_tblrecipeingredients');
INSERT INTO public.auth_permission VALUES (80, 'Can view tbl recipe ingredients', 20, 'view_tblrecipeingredients');
INSERT INTO public.auth_permission VALUES (81, 'Can add tbl cuisine', 21, 'add_tblcuisine');
INSERT INTO public.auth_permission VALUES (82, 'Can change tbl cuisine', 21, 'change_tblcuisine');
INSERT INTO public.auth_permission VALUES (83, 'Can delete tbl cuisine', 21, 'delete_tblcuisine');
INSERT INTO public.auth_permission VALUES (84, 'Can view tbl cuisine', 21, 'view_tblcuisine');
INSERT INTO public.auth_permission VALUES (85, 'Can add tbl customer review', 22, 'add_tblcustomerreview');
INSERT INTO public.auth_permission VALUES (86, 'Can change tbl customer review', 22, 'change_tblcustomerreview');
INSERT INTO public.auth_permission VALUES (87, 'Can delete tbl customer review', 22, 'delete_tblcustomerreview');
INSERT INTO public.auth_permission VALUES (88, 'Can view tbl customer review', 22, 'view_tblcustomerreview');
INSERT INTO public.auth_permission VALUES (89, 'Can add tbl dish classification', 23, 'add_tbldishclassification');
INSERT INTO public.auth_permission VALUES (90, 'Can change tbl dish classification', 23, 'change_tbldishclassification');
INSERT INTO public.auth_permission VALUES (91, 'Can delete tbl dish classification', 23, 'delete_tbldishclassification');
INSERT INTO public.auth_permission VALUES (92, 'Can view tbl dish classification', 23, 'view_tbldishclassification');
INSERT INTO public.auth_permission VALUES (93, 'Can add tbl menu', 24, 'add_tblmenu');
INSERT INTO public.auth_permission VALUES (94, 'Can change tbl menu', 24, 'change_tblmenu');
INSERT INTO public.auth_permission VALUES (95, 'Can delete tbl menu', 24, 'delete_tblmenu');
INSERT INTO public.auth_permission VALUES (96, 'Can view tbl menu', 24, 'view_tblmenu');
INSERT INTO public.auth_permission VALUES (97, 'Can add tbl quantity metrics', 25, 'add_tblquantitymetrics');
INSERT INTO public.auth_permission VALUES (98, 'Can change tbl quantity metrics', 25, 'change_tblquantitymetrics');
INSERT INTO public.auth_permission VALUES (99, 'Can delete tbl quantity metrics', 25, 'delete_tblquantitymetrics');
INSERT INTO public.auth_permission VALUES (100, 'Can view tbl quantity metrics', 25, 'view_tblquantitymetrics');
INSERT INTO public.auth_permission VALUES (101, 'Can add tbl user', 26, 'add_tbluser');
INSERT INTO public.auth_permission VALUES (102, 'Can change tbl user', 26, 'change_tbluser');
INSERT INTO public.auth_permission VALUES (103, 'Can delete tbl user', 26, 'delete_tbluser');
INSERT INTO public.auth_permission VALUES (104, 'Can view tbl user', 26, 'view_tbluser');
INSERT INTO public.auth_permission VALUES (105, 'Can add tbl user contact info', 27, 'add_tblusercontactinfo');
INSERT INTO public.auth_permission VALUES (106, 'Can change tbl user contact info', 27, 'change_tblusercontactinfo');
INSERT INTO public.auth_permission VALUES (107, 'Can delete tbl user contact info', 27, 'delete_tblusercontactinfo');
INSERT INTO public.auth_permission VALUES (108, 'Can view tbl user contact info', 27, 'view_tblusercontactinfo');
INSERT INTO public.auth_permission VALUES (109, 'Can add tbl user contact type', 28, 'add_tblusercontacttype');
INSERT INTO public.auth_permission VALUES (110, 'Can change tbl user contact type', 28, 'change_tblusercontacttype');
INSERT INTO public.auth_permission VALUES (111, 'Can delete tbl user contact type', 28, 'delete_tblusercontacttype');
INSERT INTO public.auth_permission VALUES (112, 'Can view tbl user contact type', 28, 'view_tblusercontacttype');
INSERT INTO public.auth_permission VALUES (113, 'Can add tbl user order', 29, 'add_tbluserorder');
INSERT INTO public.auth_permission VALUES (114, 'Can change tbl user order', 29, 'change_tbluserorder');
INSERT INTO public.auth_permission VALUES (115, 'Can delete tbl user order', 29, 'delete_tbluserorder');
INSERT INTO public.auth_permission VALUES (116, 'Can view tbl user order', 29, 'view_tbluserorder');
INSERT INTO public.auth_permission VALUES (117, 'Can add tbl user order items', 30, 'add_tbluserorderitems');
INSERT INTO public.auth_permission VALUES (118, 'Can change tbl user order items', 30, 'change_tbluserorderitems');
INSERT INTO public.auth_permission VALUES (119, 'Can delete tbl user order items', 30, 'delete_tbluserorderitems');
INSERT INTO public.auth_permission VALUES (120, 'Can view tbl user order items', 30, 'view_tbluserorderitems');
INSERT INTO public.auth_permission VALUES (121, 'Can add Breakfast Menu Item', 31, 'add_breakfastmenuitem');
INSERT INTO public.auth_permission VALUES (122, 'Can change Breakfast Menu Item', 31, 'change_breakfastmenuitem');
INSERT INTO public.auth_permission VALUES (123, 'Can delete Breakfast Menu Item', 31, 'delete_breakfastmenuitem');
INSERT INTO public.auth_permission VALUES (124, 'Can view Breakfast Menu Item', 31, 'view_breakfastmenuitem');
INSERT INTO public.auth_permission VALUES (125, 'Can add configuration', 32, 'add_configuration');
INSERT INTO public.auth_permission VALUES (126, 'Can change configuration', 32, 'change_configuration');
INSERT INTO public.auth_permission VALUES (127, 'Can delete configuration', 32, 'delete_configuration');
INSERT INTO public.auth_permission VALUES (128, 'Can view configuration', 32, 'view_configuration');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2024-06-14 00:17:25.116722+10');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2024-06-14 00:17:26.414095+10');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2024-06-14 00:17:26.684853+10');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-14 00:17:26.706507+10');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-14 00:17:26.726609+10');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-14 00:17:26.757141+10');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-14 00:17:26.779148+10');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-14 00:17:26.807345+10');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-14 00:17:26.826634+10');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-14 00:17:26.850935+10');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-14 00:17:26.862031+10');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-14 00:17:26.881245+10');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-14 00:17:26.947275+10');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-14 00:17:26.98613+10');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-14 00:17:27.007868+10');
INSERT INTO public.django_migrations VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-14 00:17:27.026341+10');
INSERT INTO public.django_migrations VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-14 00:17:27.048538+10');
INSERT INTO public.django_migrations VALUES (18, 'sessions', '0001_initial', '2024-06-14 00:17:27.310147+10');
INSERT INTO public.django_migrations VALUES (19, 'sites', '0001_initial', '2024-06-14 00:17:27.375581+10');
INSERT INTO public.django_migrations VALUES (20, 'sites', '0002_alter_domain_unique', '2024-06-14 00:17:27.636687+10');
INSERT INTO public.django_migrations VALUES (21, 'indian', '0001_initial', '2024-06-23 23:05:28.526284+10');
INSERT INTO public.django_migrations VALUES (22, 'indian', '0002_tblcuisine_tblcustomerreview_tbldishclassification_and_more', '2024-10-31 23:13:59.85262+11');
INSERT INTO public.django_migrations VALUES (23, 'indian', '0003_remove_breakfastmenuitem_id_and_more', '2024-10-31 23:24:19.167066+11');
INSERT INTO public.django_migrations VALUES (24, 'indian', '0004_configuration', '2025-05-04 21:53:07.059384+10');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.django_session VALUES ('xbg6aav7j8ugewptr4ihws2fbfojvpmj', 'eyJuYW1lIjoiTWFubnkifQ:1sKFYv:PMPs7q4nA2leuGEkWJBBF5OOA7R-kCcbhtzp-M28K6w', '2024-07-04 21:02:41.7198+10');
INSERT INTO public.django_session VALUES ('l5peohtsv0ly7cx6lrfn3dscow4u4biy', 'eyJuYW1lIjoiTWFubnkifQ:1sMOSX:b_gQGQbtfFDABlulXlHPooj4D0GDNg6l1C_A-Q1k7h8', '2024-07-10 18:56:57.594244+10');
INSERT INTO public.django_session VALUES ('ziz3z9ybwow8qp85vy8btn90loaxan5c', 'eyJuYW1lIjoiTWFubnkifQ:1sMSLy:3OJyxrQl9o2nYOVU60l4-iaKS15_ZdS-THCldEmHtHo', '2024-07-10 23:06:26.036851+10');
INSERT INTO public.django_session VALUES ('rczt35vvo0t9bilgjvbambkeg5x4p5ui', 'eyJ1c2VyX2lkIjoxLCJ1c2VyX25hbWUiOiJtYW5tZWV0YXJvcmFAZ21haWwuY29tIn0:1slpbg:YsjOe3ZxOC75iGE7tJVcE6O3Xl4QUkce6umWQuNCCI4', '2024-09-18 22:59:32.052302+10');
INSERT INTO public.django_session VALUES ('7c16b06qnzu9x7rygnx8lrlh3wlq1iag', 'eyJuYW1lIjoiTWFubnkifQ:1uUhyT:d5vUPX5WXsumQiCHYMUEKLod12_ISqL2k7voqx5kaM0', '2025-07-10 18:28:49.140542+10');


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.django_site VALUES (1, 'example.com', 'example.com');


--
-- Data for Name: indian_breakfastmenuitem; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: indian_configuration; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.indian_configuration VALUES (5, 'Offer', 'Introductory specials - limited time only!');
INSERT INTO public.indian_configuration VALUES (4, 'Discount', '0');
INSERT INTO public.indian_configuration VALUES (6, 'Counter', '1927');


--
-- Data for Name: tbl_app_conf; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_app_conf OVERRIDING SYSTEM VALUE VALUES (1, 'Publishable_Key', 'pk_live_51QHlFDF0FujQCiYcEPMVpXN7JxnSqeog26LQzQZV1M6vWzVRlLeZHF49JxGwzvPjU7BbUyuX33L0xLCbImUW2Im000y03Rhfo9');
INSERT INTO public.tbl_app_conf OVERRIDING SYSTEM VALUE VALUES (2, 'Secret_Key', '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');
INSERT INTO public.tbl_app_conf OVERRIDING SYSTEM VALUE VALUES (3, 'Domain_Name', 'https://www.mannyfoods.com.au');


--
-- Data for Name: tbl_conf; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_conf OVERRIDING SYSTEM VALUE VALUES (2, 'Offer', 'Enjoy --discount--% OFF on all menu items for the first week');
INSERT INTO public.tbl_conf OVERRIDING SYSTEM VALUE VALUES (1, 'Discount', '35');


--
-- Data for Name: tbl_cuisine; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_cuisine OVERRIDING SYSTEM VALUE VALUES (1, 'Indian');
INSERT INTO public.tbl_cuisine OVERRIDING SYSTEM VALUE VALUES (2, 'Italian');
INSERT INTO public.tbl_cuisine OVERRIDING SYSTEM VALUE VALUES (3, 'Inter-Continental');
INSERT INTO public.tbl_cuisine OVERRIDING SYSTEM VALUE VALUES (4, 'Arabic');
INSERT INTO public.tbl_cuisine OVERRIDING SYSTEM VALUE VALUES (5, 'Chinese');
INSERT INTO public.tbl_cuisine OVERRIDING SYSTEM VALUE VALUES (7, 'Fusion');


--
-- Data for Name: tbl_user; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (12, 'nitin@somemail.com', '1db816181a1394720f04ca53c58f18e0543c22d744f9ccda2055a716d1f00097', 'Nitin', 'Kumar', 'M', 'client', 'Liberty Servo Barwon Heads Road');
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (1, 'manmeetarora@gmail.com', '06db99a23f69d8ddd8212272bd26a7ea2c02b37a146bbfb2fe3b19b4e534c389', 'Manmeet', 'Arora', 'M', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (3, 'Arthur@somemail.com', '52b67b60260da3937510ad545c7f46f8d9915bd27e1082e76947fb309f913bd3', 'Arthur', 'Prada', 'M', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (4, 'Levi@somemail.com', '8b49a459569b664937d931dab01b9497d8bd5c7d7d414f6602a5c8aceb700165', 'Levi', 'Lewis', 'M', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (8, 'Harjeet@somemail.com', 'a5fc952b3f555882369c27639a31b3c475ff60a1b9e94f4090c6e90cfa11fc5d', 'Harjeet', 'Bindra', 'M', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (9, 'Santosh@somemail.com', '0b2199265a95cbe8fc79ee170de786a849cbced106f92e3697c0162a636a5cc0', 'Santosh', 'Kumar', 'M', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (2, 'Jessica@somemail.com', 'fb338e53da57ec89c638f24e8f87697a70d0c0d8e4cc3a56f754211d2c6f0444', 'Jessica', 'Erwin', 'F', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (5, 'Radhika@somemail.com', 'a60f123d23073b8efb33f9c1132d3dfc0d74f3b355b080d782bd1edd72981fc3', 'Radhika', 'Seth', 'F', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (6, 'Courtney@somemail.com', '76db6b6c629a5be9d57a0834681a8369c8164e93de21d4ffaad38c1abeb576a8', 'Courtney', 'Cassar', 'F', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (7, 'Emily@somemail.com', '048a2730d09826f3ea1008af47bd8f1209c0eeb3a3a2ef7d2531bd053ea1eebc', 'Emily', 'Adams', 'F', 'customer', NULL);
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (10, 'amitaggarwal@somemail.com', '105a112c81ce60e646c007e98655b7caa27d9e6f36a7ba9584e406dd400e15ff', 'Amit', 'Aggarwal', 'M', 'client', 'AMPOL Torquay');
INSERT INTO public.tbl_user OVERRIDING SYSTEM VALUE VALUES (11, 'varinder@somemail.com', '01180b386d784fb382cd25632ad85214191ff1964d4d3499d90da96b138453df', 'Varinder', 'Singh', 'M', 'client', 'Grovedale New Agency');


--
-- Data for Name: tbl_customer_review; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (1, 2, 'The butter chicken was incredibly flavorful and creamy, with just the right amount of spice. The chicken was tender and juicy, making each bite a delight.');
INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (2, 6, 'I love how butter chicken balances richness with aromatic spices. Its a dish that feels indulgent without being overly heavy.');
INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (3, 3, 'Every time I order butter chicken, I am reminded of why its a classic. The sauce is perfectly creamy and the chicken is always cooked to perfection.');
INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (4, 5, 'The chicken curry was bursting with flavor, and the aroma of the spices was mouthwatering. The sauce was rich and creamy, making it perfect for soaking up with rice.');
INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (5, 8, 'I love how chicken curry offers a different taste profile in every culture. Manny Foods just cooks it to the perfection!');
INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (6, 9, 'Chicken curry at Manny Foods is just wow!. Homemade chicken curry with a perfect blend of spices is my go-to comfort food for me.');
INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (7, 7, 'Onion Fritters and Bread Pakora are my favourite from Manny Foods. Everyone in the fam loves to have a bite of this. strongly recommend');
INSERT INTO public.tbl_customer_review OVERRIDING SYSTEM VALUE VALUES (9, 2, 'I love the richness of Dal Makhani. The lentils are perfectly cooked, and the spices are well-balanced.');


--
-- Data for Name: tbl_dish_classification; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (3, 'Appetizer', NULL, 'N');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (5, 'Breads', NULL, 'N');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (2, 'Starters', 'filter-starters', 'N');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (1, 'Main Course', 'filter-mcourse', 'N');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (4, 'Sides', 'filter-sides', 'N');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (6, 'Desserts', 'filter-desserts', 'N');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (7, 'Beverages', 'filter-beverages', 'N');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (8, 'Breakfast', 'filter-brekky', 'Y');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (9, 'Lunch', 'filter-lunch', 'Y');
INSERT INTO public.tbl_dish_classification OVERRIDING SYSTEM VALUE VALUES (10, 'Combo', 'filter-lunch', 'Y');


--
-- Data for Name: tbl_menu; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (5, 'Matar Paneer', 15.00, 1, 1, 'Cottage cheese cooked with green peas in a traditional masala gravy.', 'assets/img/menu/Matar-Paneer.jpg', 'Matar-Paneer', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (1, 'Butter Chicken', 16.00, 1, 1, 'Succulent chicken marinated in yoghurt cooked in a rich creamy sauce - a fantastic mixture of tangy, spicy and sweet', 'assets/img/menu/Butter-Chicken.jpg', 'Butter-Chicken', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (2, 'Chicken Curry', 15.00, 1, 1, 'Marinated chicken drumsticks stewed in a tomato and onion based sauce seasoned with aromatic spices.', 'assets/img/menu/Chicken_Curry.jpg', 'Chicken_Curry', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (3, 'Dal Makhani', 14.00, 1, 1, 'Slow cooked black lentils along kidney beans with a rich and creamy texture topped with a cube of butter.', 'assets/img/menu/Dal-Makhani.jpg', 'Dal-Makhani', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (4, 'Chickpea Masala', 14.00, 1, 1, 'Chickpeas cooked in warming spices in lightly caramelized onion and tangy tomato sauce.', 'assets/img/menu/chana-masala.jpg', 'chana-masala', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (6, 'Shahi Paneer', 16.00, 1, 1, 'Rich and creamy curry made with cottage cheese and a base of nuts, onions, yogurt and spices.', 'assets/img/menu/shahi-paneer.jpg', 'shahi-paneer', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (7, 'Mix Veg', 14.00, 1, 1, 'Seasonal vegetables like cauliflower, beans, carrots, and potatoes cooked in aromatic spices to a delightful, dry finish.', 'assets/img/menu/Mixed-Veg.jpg', 'Mixed-Veg', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (8, 'Onion Fritters', 7.00, 1, 2, 'Crispy onion fritters made with thinly sliced onions, coated in a seasoned chickpea flour batter, and deep-fried until golden brown.', 'assets/img/menu/Onion_fritters.jpg', 'Onion_fritters', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (9, 'Bread Pakora', 5.00, 1, 2, 'Golden-fried slices of bread filled with a spiced potato stuffing, dipped in a chickpea flour batter, and deep-fried to crispy perfection.', 'assets/img/menu/Bread_Pakora.jpg', 'Bread_Pakora', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (10, 'Tawa Roti', 1.00, 1, 4, 'Soft and fluffy whole wheat flatbread cooked on a hot griddle until perfectly browned.', 'assets/img/menu/Tawa_Roti.jpg', 'Tawa_Roti', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (13, 'Gulab Jamun', 6.00, 1, 6, 'Delicious, deep-fried milk dumplings soaked in a sweet syrup.', 'assets/img/menu/Gulab_jamun.jpg', 'Gulab_jamun', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (11, 'Jeera Rice', 4.00, 1, 4, 'Fragrant basmati rice lightly sautéed with cumin seeds and aromatic spices, creating a simple yet flavorful side dish that pairs beautifully with any curry or main course.', 'assets/img/menu/Jeera_Rice.jpg', 'Jeera_Rice', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (14, 'Halwa', 6.00, 1, 6, 'A rich and decadent dessert made from semolina, ghee, and sugar, infused with fragrant cardamom and garnished with nuts.', 'assets/img/menu/Halwa.jpg', 'Halwa', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (12, 'Boondi Raita', 3.00, 1, 4, 'A refreshing yogurt-based side dish mixed with fried boondi and a sprinkle of spices.', 'assets/img/menu/Raita.jpg', 'Raita', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (18, 'Chicken Pizza(Large 13 inch)', 15.00, 2, 4, 'Savor the perfect blend of tender chicken, zesty tomato sauce, and melted mozzarella, all on a crispy, hand-tossed crust. A delicious fusion of classic flavors, topped with homemade seasoning for an extra burst of taste.', 'assets/img/menu/Chicken_pizza.png', 'Chicken_pizza', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (19, 'Beef Pizza(Large 13 inch)', 15.00, 2, 4, 'Indulge in our hearty Beef Pizza, loaded with juicy beef, rich tomato sauce, and a generous layer of gooey mozzarella. Finished with homemade seasoning and a crispy crust, this pizza is a meat lover’s dream.', 'assets/img/menu/Beef_pizza.png', 'Beef_pizza', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (20, 'Omelette(Chicken and Cheese)', 12.00, 2, 8, 'Fluffy eggs filled with savory marinated chicken cubes and melted cheddar cheese for a rich, satisfying flavor. 
This protein-packed dish is perfect for breakfast or brunch, combining comfort and taste in every bite!', 'assets/img/menu/Omlette_Chicken_cheese.jpeg', 'Omlette_Chicken_cheese', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (22, 'Loaded Chicken Sandwich', 10.00, 2, 8, 'Nestled inside a warm, buttered hot dog bun, you will find tender marinated chicken, a creamy cheese slice, and perfectly sliced boiled egg. Topped with melty mozzarella, crisp capsicum, fresh onion slices, and briny olives, this sandwich delivers a delicious, wholesome bite every time.', 'assets/img/menu/Loaded_Chicken_Sandwich.png', 'Loaded_Chicken_Sandwich', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (23, 'Hash Brown', 3.00, 2, 8, 'Golden and crunchy on the outside, soft and fluffy on the inside, this perfect side dish is great on its own or paired with your favorite breakfast. A satisfying bite every time!', 'assets/img/menu/Hash_Brown.png', 'Hash_Brown', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (24, 'Bacon Egg Roll', 7.00, 2, 8, 'A perfectly cooked egg paired with crispy bacon, all tucked inside a soft roll. Simple yet delicious, this breakfast favorite is ideal for a quick, satisfying start to your day!', 'assets/img/menu/Bacon_Egg_Roll.png', 'Bacon_Egg_Roll', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (15, 'Coke/Pepsi Can', 3.00, 1, 9, '', 'assets/img/menu/Pepsi_can.jpg', 'Pepsi_can', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (35, 'Garlic Lambwich', 16.00, 7, 9, 'Succulent lamb, capsicum, onion and mexican salad drizzled with creamy garlic sauce', 'assets/img/menu/garlic_lambwich.jpg', 'GarlicLambwich', 'Y', NULL, 6);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (21, 'Deluxe Chicken Sandwich', 12.00, 2, 8, 'Enjoy tender marinated chicken layered between two slices of fresh bread, topped with a melted cheese slice, mozzarella, crisp capsicum, and olives. All brought together with our special homemade seasoning for a burst of flavor in every bite. Perfect for a quick, hearty meal!', 'assets/img/menu/Deluxe_Chicken_Sandwich.png', 'Deluxe_Chicken_Sandwich', 'N', NULL, 5);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (34, 'Manny''s Chicken Fusion', 14.00, 7, 9, 'Marinated chicken,mexican salad mix, onion, capsicum, finished with our signature homemade seasoning', 'assets/img/menu/Mannys_chick_zone.jpg', 'MannysChickenZone', 'Y', NULL, 5);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (38, 'Hot Chips', 6.00, 7, 9, 'Golden, crispy, and perfectly seasoned chips', 'assets/img/menu/hot_chips.png', 'HotChips', 'Y', NULL, 11);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (16, 'Loaded Calzone', 12.00, 2, 8, 'A golden, folded pizza pocket filled with tender chicken, vibrant capsicum, caramelized onions, olives and rich mozzarella cheese, all topped with a sprinkle of homemade seasoning', 'assets/img/menu/Loaded_Calzone.png', 'Loaded_Calzone', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (17, 'Calzone', 10.00, 2, 8, 'A golden, folded pizza pocket filled with tender chicken/cottage cheese, vibrant capsicum, caramelized onions, olives all topped with a sprinkle of homemade seasoning', 'assets/img/menu/Calzone.png', 'Calzone', 'N', NULL, NULL);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (25, 'Rise n Spice Roll', 12.00, 7, 8, 'Juicy marinated chicken, smoky bacon, tangy peri-peri sauce, fresh onion, and melted cheese in a soft, fluffy roll—a bold, mouthwatering combo you cant resist!', 'assets/img/menu/rise_n_spice_roll.jpg', 'RiseNSpiceRoll', 'Y', NULL, 1);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (26, 'Sunrise Special', 10.00, 7, 8, 'Start your day right with our freshly baked soft roll, filled with crispy bacon and a golden sunrise egg.', 'assets/img/menu/sunrise_special.png', 'SunriseSpecial', 'Y', NULL, 2);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (32, 'Chicken Calzone', 12.00, 7, 9, 'Oven baked calzone with chicken, caramelized onions, capsicum, olives and cheese, with our homemade seasoning', 'assets/img/menu/Loaded_Calzone.png', 'ChickenFeastLoadedCalzone', 'Y', NULL, 7);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (37, 'Grill & Thrill Aioli Wrap', 12.00, 7, 9, 'Your choice of chicken or lamb wrapped up with fresh onion, capsicum, mexican salad and smooth aioli sauce, toasted until golden', 'assets/img/menu/grill_thrill_aioli_wrap.jpg', 'GrillThrillAioliWrap', 'Y', NULL, 10);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (33, 'Paneer Perfection Folded Pizza', 12.00, 7, 9, 'Indulge in this golden, folded pizza pocket brimming with creamy paneer, crisp capsicum, sweet caramelized onions, tangy olives, and melted mozzarella—finished off with a sprinkle of our signature homemade seasoning. ', 'assets/img/menu/Loaded_Calzone.png', 'PaneerPerfectionFoldedPizza', 'N', NULL, 12);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (27, 'Morning Melts', 6.00, 7, 8, 'Crispy, golden toasty inspired by the classic quesadilla having', 'assets/img/menu/morning_melts.jpg', 'MorningMelts_Cheese_tomato', 'Y', '<table>
  <tr>
	<td>-</td>
	<td>Cheese and tomato &nbsp;</td>
	<td>$6</td>
  </tr>
  <tr>
	<td>- &nbsp;</td>
	<td>Ham, cheese and tomato &nbsp;</td>
	<td>$8</td>
  </tr>
  <tr>
	<td>- &nbsp;</td>
	<td>Chicken, cheese and avocado &nbsp;</td>
	<td>$10</td>
  </tr>
  <tr>
	<td>- &nbsp;</td>
	<td>Egg, bacon and cheese &nbsp;</td>
	<td>$10</td>
  </tr>
</table>', 3);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (36, 'Creamy Garlic Chicken Feast', 16.00, 7, 9, 'Juicy chicken combined with capsicum, onion and melted cheese finished with creamy garlic sauce', 'assets/img/menu/creamy_garlic_chicken_feast.jpeg', 'CreamyGarlicChickenFeast', 'Y', NULL, 9);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (40, 'Extra Toppings', 3.00, 7, 8, 'Cheddar Cheese/ Hashbrown', 'assets/img/menu/Hash_Brown.png', 'Hash_Brown', 'Y', NULL, 6);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (31, 'Banana Bread Delight', 5.00, 7, 8, 'A deliciously moist and comforting slice of banana bread, baked with ripe bananas for natural sweetness.', 'assets/img/menu/banana_bread.jpg', 'BananaBread', 'Y', NULL, 5);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (41, 'Brekky Combo', 20.00, 7, 10, '1 Choice from Breakfast menu ,Banana Bread, Regular size drink', 'assets/img/menu/brekky-combo.jpg', 'Brekky_Combo', 'Y', NULL, 1);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (42, 'Lunch Combo', 20.00, 7, 10, '1 Choice from Lunch menu ,Large Hot Chips and Cold Drink', 'assets/img/menu/lunch-combo.png', 'Lunch_Combo', 'Y', NULL, 2);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (39, 'Peri Peri Taco', 8.00, 7, 9, 'Soft Tacos filled with tender marinated chicken, fresh salad and a touch of peri peri sauce.', 'assets/img/menu/peri-peri-taco.jpg', 'PeriPeriTaco', 'N', NULL, 8);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (43, 'Chilli Stack Sunrise Roll', 8.00, 7, 8, 'Fluffy eggs infused with ginger, garlic & chilli oil, tossed with caramelised onion and capsicum, wrapped in crispy roti bread with a creamy garlic aioli & a kick of peri-peri. A bold, street-style flavour explosion!', 'assets/img/menu/Chiili_stack_sunrise_roll.jpg', 'ChilliStackSunriseRoll', 'Y', NULL, 4);
INSERT INTO public.tbl_menu OVERRIDING SYSTEM VALUE VALUES (44, 'Manny''s Golden Slices', 10.00, 7, 9, 'A fusion delight — roti bread meets pizza! Mozzarella, pizza sauce, mayo, marinated chicken, onions, capsicum & olives, oven-baked till the cheese melts into golden bliss.', 'assets/img/menu/Manny_Golden_Slice.jpg', 'MannyGoldenSlices', 'Y', NULL, 8);


--
-- Data for Name: tbl_quantity_metrics; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_quantity_metrics OVERRIDING SYSTEM VALUE VALUES (1, 'grams');
INSERT INTO public.tbl_quantity_metrics OVERRIDING SYSTEM VALUE VALUES (2, 'sticks');
INSERT INTO public.tbl_quantity_metrics OVERRIDING SYSTEM VALUE VALUES (3, 'pods');
INSERT INTO public.tbl_quantity_metrics OVERRIDING SYSTEM VALUE VALUES (4, 'leafs');
INSERT INTO public.tbl_quantity_metrics OVERRIDING SYSTEM VALUE VALUES (5, 'ml');
INSERT INTO public.tbl_quantity_metrics OVERRIDING SYSTEM VALUE VALUES (6, 'litre');


--
-- Data for Name: tbl_recipe; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_recipe OVERRIDING SYSTEM VALUE VALUES (1, 'Jeera Rice', 1, 'Manny', 'Manny', '2024-06-17 22:45:26.640476', '2024-06-17 22:45:26.640476', 'Plain Basmati Rice cooked with cumin seeds, black cardamon and cinnamon sticks');
INSERT INTO public.tbl_recipe OVERRIDING SYSTEM VALUE VALUES (3, 'Pulao', 1, 'Manny', 'Manny', '2024-06-17 22:45:26.640476', '2024-06-17 22:45:26.640476', 'Flavoured rice with turmeric and vegies');


--
-- Data for Name: tbl_recipe_ingredients; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_recipe_ingredients OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Cumin Seed', 5, 1);
INSERT INTO public.tbl_recipe_ingredients OVERRIDING SYSTEM VALUE VALUES (2, 1, 'Cinamon Stick', 1, 2);
INSERT INTO public.tbl_recipe_ingredients OVERRIDING SYSTEM VALUE VALUES (3, 1, 'Black Cardamon', 2, 3);
INSERT INTO public.tbl_recipe_ingredients OVERRIDING SYSTEM VALUE VALUES (4, 1, 'Bay Leaves', 2, 4);
INSERT INTO public.tbl_recipe_ingredients OVERRIDING SYSTEM VALUE VALUES (5, 1, 'Salt', 7, 1);
INSERT INTO public.tbl_recipe_ingredients OVERRIDING SYSTEM VALUE VALUES (7, 1, 'Water', 200, 5);
INSERT INTO public.tbl_recipe_ingredients OVERRIDING SYSTEM VALUE VALUES (6, 1, 'Basmati Rice', 100, 1);


--
-- Data for Name: tbl_sub_menu; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (1, 27, 'Cheese and tomato', 6.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (2, 27, 'Ham, cheese and tomato', 8.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (3, 27, 'Chicken, cheese and avocado', 10.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (4, 27, 'Egg, bacon and cheese', 10.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (10, 33, 'With Chips and Sauce', 15.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (5, 38, 'Small Chips', 6.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (6, 38, 'Large Chips', 9.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (7, 34, 'With Chips and Sauce', 18.00, 'N');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (8, 35, 'With Chips and Sauce', 20.00, 'N');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (9, 32, 'With Chips and Sauce', 16.00, 'N');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (12, 37, 'With Chips and Sauce', 16.00, 'N');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (11, 36, 'With Chips and Sauce', 20.00, 'N');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (14, 39, '1 Taco', 8.00, 'Y');
INSERT INTO public.tbl_sub_menu OVERRIDING SYSTEM VALUE VALUES (13, 39, '2 Taco''s', 14.00, 'Y');


--
-- Data for Name: tbl_user_contact_type; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (1, 'email');
INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (2, 'mobile');
INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (3, 'home phone');
INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (4, 'office phone');
INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (5, 'other phone');
INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (6, 'home address');
INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (7, 'office address');
INSERT INTO public.tbl_user_contact_type OVERRIDING SYSTEM VALUE VALUES (8, 'other address');


--
-- Data for Name: tbl_user_contact_info; Type: TABLE DATA; Schema: public; Owner: foods
--

INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (1, 1, 1, 'manmeetarora@gmail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (2, 1, 2, '0416438047', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (3, 1, 6, '10 Teags Way, Armstrong Creek VIC 3217', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (4, 1, 8, '5 Simpson Circuit, Armstrong Creek VIC 3217', false);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (5, 1, 1, 'manmeetarora@yahoo.com', false);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (6, 2, 1, 'Jessica@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (7, 2, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (8, 2, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (9, 3, 1, 'Arthur@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (10, 3, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (11, 3, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (12, 4, 1, 'Levi@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (13, 4, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (14, 4, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (15, 5, 1, 'Radhika@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (16, 5, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (17, 5, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (18, 6, 1, 'Courtney@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (19, 6, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (20, 6, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (21, 7, 1, 'Emily@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (22, 7, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (23, 7, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (24, 8, 1, 'Harjeet@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (25, 8, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (26, 8, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (27, 9, 1, 'Santosh@somemail.com', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (28, 9, 2, '0000000000', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (29, 9, 6, 'Some Address', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (30, 10, 2, '0433498858', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (31, 10, 6, '48 McCubbin Drive, Mt Duneed, VIC 3217', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (32, 10, 7, 'AMPOL Torquay', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (33, 11, 2, '0451986132', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (34, 11, 7, 'Grovedale News Agency', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (35, 12, 2, '0433991435', true);
INSERT INTO public.tbl_user_contact_info OVERRIDING SYSTEM VALUE VALUES (36, 12, 7, 'Liberty Service Station, Barwon Heads Road', true);


--
-- Data for Name: tbl_user_order; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: tbl_user_order_items; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Data for Name: tbl_website_hit; Type: TABLE DATA; Schema: public; Owner: foods
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 128, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 32, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: indian_configuration_conf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.indian_configuration_conf_id_seq', 6, true);


--
-- Name: tbl_app_conf_app_conf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_app_conf_app_conf_id_seq', 3, true);


--
-- Name: tbl_conf_conf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_conf_conf_id_seq', 2, true);


--
-- Name: tbl_cuisine_cuisine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_cuisine_cuisine_id_seq', 7, true);


--
-- Name: tbl_customer_review_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_customer_review_review_id_seq', 14, true);


--
-- Name: tbl_dish_classification_dish_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_dish_classification_dish_class_id_seq', 10, true);


--
-- Name: tbl_menu_menu_dish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_menu_menu_dish_id_seq', 44, true);


--
-- Name: tbl_quantity_metrics_metric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_quantity_metrics_metric_id_seq', 6, true);


--
-- Name: tbl_recipe_ingredients_ingre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_recipe_ingredients_ingre_id_seq', 7, true);


--
-- Name: tbl_recipe_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_recipe_recipe_id_seq', 3, true);


--
-- Name: tbl_sub_menu_menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_sub_menu_menu_items_id_seq', 14, true);


--
-- Name: tbl_user_contact_info_user_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_user_contact_info_user_contact_id_seq', 36, true);


--
-- Name: tbl_user_contact_type_user_contact_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_user_contact_type_user_contact_type_id_seq', 8, true);


--
-- Name: tbl_user_order_items_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_user_order_items_order_items_id_seq', 1, false);


--
-- Name: tbl_user_order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_user_order_order_id_seq', 1, false);


--
-- Name: tbl_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_user_user_id_seq', 12, true);


--
-- Name: tbl_website_hit_hit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: foods
--

SELECT pg_catalog.setval('public.tbl_website_hit_hit_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

