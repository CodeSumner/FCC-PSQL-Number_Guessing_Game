--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2, 19, 2);
INSERT INTO public.games VALUES (3, 19, 3);
INSERT INTO public.games VALUES (4, 21, 486);
INSERT INTO public.games VALUES (5, 21, 451);
INSERT INTO public.games VALUES (6, 22, 999);
INSERT INTO public.games VALUES (7, 22, 207);
INSERT INTO public.games VALUES (8, 21, 328);
INSERT INTO public.games VALUES (9, 21, 1);
INSERT INTO public.games VALUES (10, 21, 115);
INSERT INTO public.games VALUES (11, 23, 148);
INSERT INTO public.games VALUES (12, 23, 715);
INSERT INTO public.games VALUES (13, 24, 751);
INSERT INTO public.games VALUES (14, 24, 867);
INSERT INTO public.games VALUES (15, 23, 451);
INSERT INTO public.games VALUES (16, 23, 1);
INSERT INTO public.games VALUES (17, 23, 184);
INSERT INTO public.games VALUES (18, 26, 4);
INSERT INTO public.games VALUES (19, 19, 1);
INSERT INTO public.games VALUES (20, 19, 9);
INSERT INTO public.games VALUES (21, 27, 712);
INSERT INTO public.games VALUES (22, 27, 328);
INSERT INTO public.games VALUES (23, 28, 849);
INSERT INTO public.games VALUES (24, 28, 526);
INSERT INTO public.games VALUES (25, 27, 104);
INSERT INTO public.games VALUES (26, 27, 1);
INSERT INTO public.games VALUES (27, 27, 665);
INSERT INTO public.games VALUES (28, 19, 1);
INSERT INTO public.games VALUES (29, 19, 12);
INSERT INTO public.games VALUES (30, 29, 706);
INSERT INTO public.games VALUES (31, 29, 542);
INSERT INTO public.games VALUES (32, 30, 713);
INSERT INTO public.games VALUES (33, 30, 260);
INSERT INTO public.games VALUES (34, 29, 599);
INSERT INTO public.games VALUES (35, 29, 858);
INSERT INTO public.games VALUES (36, 29, 338);
INSERT INTO public.games VALUES (37, 31, 361);
INSERT INTO public.games VALUES (38, 31, 555);
INSERT INTO public.games VALUES (39, 32, 195);
INSERT INTO public.games VALUES (40, 32, 377);
INSERT INTO public.games VALUES (41, 31, 873);
INSERT INTO public.games VALUES (42, 31, 743);
INSERT INTO public.games VALUES (43, 31, 543);
INSERT INTO public.games VALUES (44, 33, 786);
INSERT INTO public.games VALUES (45, 33, 55);
INSERT INTO public.games VALUES (46, 34, 911);
INSERT INTO public.games VALUES (47, 34, 10);
INSERT INTO public.games VALUES (48, 33, 1);
INSERT INTO public.games VALUES (49, 33, 897);
INSERT INTO public.games VALUES (50, 33, 788);
INSERT INTO public.games VALUES (51, 35, 120);
INSERT INTO public.games VALUES (52, 35, 643);
INSERT INTO public.games VALUES (53, 36, 388);
INSERT INTO public.games VALUES (54, 36, 119);
INSERT INTO public.games VALUES (55, 35, 119);
INSERT INTO public.games VALUES (56, 35, 697);
INSERT INTO public.games VALUES (57, 35, 612);
INSERT INTO public.games VALUES (58, 37, 76);
INSERT INTO public.games VALUES (59, 37, 683);
INSERT INTO public.games VALUES (60, 38, 661);
INSERT INTO public.games VALUES (61, 38, 692);
INSERT INTO public.games VALUES (62, 37, 336);
INSERT INTO public.games VALUES (63, 37, 122);
INSERT INTO public.games VALUES (64, 37, 255);
INSERT INTO public.games VALUES (65, 39, 228);
INSERT INTO public.games VALUES (66, 39, 721);
INSERT INTO public.games VALUES (67, 40, 217);
INSERT INTO public.games VALUES (68, 40, 325);
INSERT INTO public.games VALUES (69, 39, 901);
INSERT INTO public.games VALUES (70, 39, 810);
INSERT INTO public.games VALUES (71, 39, 653);
INSERT INTO public.games VALUES (72, 41, 538);
INSERT INTO public.games VALUES (73, 41, 86);
INSERT INTO public.games VALUES (74, 42, 605);
INSERT INTO public.games VALUES (75, 42, 544);
INSERT INTO public.games VALUES (76, 41, 698);
INSERT INTO public.games VALUES (77, 41, 833);
INSERT INTO public.games VALUES (78, 41, 220);
INSERT INTO public.games VALUES (79, 43, 973);
INSERT INTO public.games VALUES (80, 43, 261);
INSERT INTO public.games VALUES (81, 44, 363);
INSERT INTO public.games VALUES (82, 44, 133);
INSERT INTO public.games VALUES (83, 43, 42);
INSERT INTO public.games VALUES (84, 43, 973);
INSERT INTO public.games VALUES (85, 43, 790);
INSERT INTO public.games VALUES (86, 45, 700);
INSERT INTO public.games VALUES (87, 45, 384);
INSERT INTO public.games VALUES (88, 46, 976);
INSERT INTO public.games VALUES (89, 46, 39);
INSERT INTO public.games VALUES (90, 45, 90);
INSERT INTO public.games VALUES (91, 45, 924);
INSERT INTO public.games VALUES (92, 45, 5);
INSERT INTO public.games VALUES (93, 47, 569);
INSERT INTO public.games VALUES (94, 47, 789);
INSERT INTO public.games VALUES (95, 48, 928);
INSERT INTO public.games VALUES (96, 48, 355);
INSERT INTO public.games VALUES (97, 47, 813);
INSERT INTO public.games VALUES (98, 47, 535);
INSERT INTO public.games VALUES (99, 47, 367);
INSERT INTO public.games VALUES (100, 59, 720);
INSERT INTO public.games VALUES (101, 59, 1001);
INSERT INTO public.games VALUES (102, 60, 266);
INSERT INTO public.games VALUES (103, 60, 777);
INSERT INTO public.games VALUES (104, 59, 43);
INSERT INTO public.games VALUES (105, 59, 648);
INSERT INTO public.games VALUES (106, 59, 283);
INSERT INTO public.games VALUES (107, 61, 484);
INSERT INTO public.games VALUES (108, 61, 101);
INSERT INTO public.games VALUES (109, 62, 909);
INSERT INTO public.games VALUES (110, 62, 138);
INSERT INTO public.games VALUES (111, 61, 956);
INSERT INTO public.games VALUES (112, 61, 969);
INSERT INTO public.games VALUES (113, 61, 180);
INSERT INTO public.games VALUES (114, 63, 577);
INSERT INTO public.games VALUES (115, 63, 565);
INSERT INTO public.games VALUES (116, 64, 859);
INSERT INTO public.games VALUES (117, 64, 172);
INSERT INTO public.games VALUES (118, 63, 32);
INSERT INTO public.games VALUES (119, 63, 177);
INSERT INTO public.games VALUES (120, 63, 572);
INSERT INTO public.games VALUES (121, 65, 998);
INSERT INTO public.games VALUES (122, 65, 361);
INSERT INTO public.games VALUES (123, 66, 703);
INSERT INTO public.games VALUES (124, 66, 640);
INSERT INTO public.games VALUES (125, 65, 725);
INSERT INTO public.games VALUES (126, 65, 527);
INSERT INTO public.games VALUES (127, 65, 965);
INSERT INTO public.games VALUES (128, 67, 215);
INSERT INTO public.games VALUES (129, 67, 130);
INSERT INTO public.games VALUES (130, 68, 438);
INSERT INTO public.games VALUES (131, 68, 697);
INSERT INTO public.games VALUES (132, 67, 996);
INSERT INTO public.games VALUES (133, 67, 215);
INSERT INTO public.games VALUES (134, 67, 965);
INSERT INTO public.games VALUES (135, 69, 644);
INSERT INTO public.games VALUES (136, 69, 382);
INSERT INTO public.games VALUES (137, 70, 331);
INSERT INTO public.games VALUES (138, 70, 40);
INSERT INTO public.games VALUES (139, 69, 893);
INSERT INTO public.games VALUES (140, 69, 873);
INSERT INTO public.games VALUES (141, 69, 213);
INSERT INTO public.games VALUES (142, 71, 414);
INSERT INTO public.games VALUES (143, 71, 52);
INSERT INTO public.games VALUES (144, 72, 10);
INSERT INTO public.games VALUES (145, 72, 793);
INSERT INTO public.games VALUES (146, 71, 822);
INSERT INTO public.games VALUES (147, 71, 586);
INSERT INTO public.games VALUES (148, 71, 879);
INSERT INTO public.games VALUES (149, 73, 933);
INSERT INTO public.games VALUES (150, 73, 807);
INSERT INTO public.games VALUES (151, 74, 416);
INSERT INTO public.games VALUES (152, 74, 494);
INSERT INTO public.games VALUES (153, 73, 478);
INSERT INTO public.games VALUES (154, 73, 92);
INSERT INTO public.games VALUES (155, 73, 107);
INSERT INTO public.games VALUES (156, 75, 582);
INSERT INTO public.games VALUES (157, 75, 40);
INSERT INTO public.games VALUES (158, 76, 984);
INSERT INTO public.games VALUES (159, 76, 838);
INSERT INTO public.games VALUES (160, 75, 986);
INSERT INTO public.games VALUES (161, 75, 612);
INSERT INTO public.games VALUES (162, 75, 472);
INSERT INTO public.games VALUES (163, 77, 563);
INSERT INTO public.games VALUES (164, 77, 204);
INSERT INTO public.games VALUES (165, 78, 500);
INSERT INTO public.games VALUES (166, 78, 587);
INSERT INTO public.games VALUES (167, 77, 103);
INSERT INTO public.games VALUES (168, 77, 713);
INSERT INTO public.games VALUES (169, 77, 322);
INSERT INTO public.games VALUES (170, 79, 446);
INSERT INTO public.games VALUES (171, 79, 174);
INSERT INTO public.games VALUES (172, 80, 957);
INSERT INTO public.games VALUES (173, 80, 368);
INSERT INTO public.games VALUES (174, 79, 850);
INSERT INTO public.games VALUES (175, 79, 379);
INSERT INTO public.games VALUES (176, 79, 524);
INSERT INTO public.games VALUES (177, 81, 829);
INSERT INTO public.games VALUES (178, 81, 106);
INSERT INTO public.games VALUES (179, 82, 770);
INSERT INTO public.games VALUES (180, 82, 300);
INSERT INTO public.games VALUES (181, 81, 169);
INSERT INTO public.games VALUES (182, 81, 764);
INSERT INTO public.games VALUES (183, 81, 47);
INSERT INTO public.games VALUES (184, 83, 202);
INSERT INTO public.games VALUES (185, 83, 908);
INSERT INTO public.games VALUES (186, 84, 249);
INSERT INTO public.games VALUES (187, 84, 172);
INSERT INTO public.games VALUES (188, 83, 753);
INSERT INTO public.games VALUES (189, 83, 178);
INSERT INTO public.games VALUES (190, 83, 141);
INSERT INTO public.games VALUES (191, 85, 105);
INSERT INTO public.games VALUES (192, 85, 21);
INSERT INTO public.games VALUES (193, 86, 685);
INSERT INTO public.games VALUES (194, 86, 499);
INSERT INTO public.games VALUES (195, 85, 362);
INSERT INTO public.games VALUES (196, 85, 262);
INSERT INTO public.games VALUES (197, 85, 546);
INSERT INTO public.games VALUES (198, 87, 198);
INSERT INTO public.games VALUES (199, 87, 166);
INSERT INTO public.games VALUES (200, 88, 800);
INSERT INTO public.games VALUES (201, 88, 201);
INSERT INTO public.games VALUES (202, 87, 926);
INSERT INTO public.games VALUES (203, 87, 123);
INSERT INTO public.games VALUES (204, 87, 488);
INSERT INTO public.games VALUES (205, 89, 375);
INSERT INTO public.games VALUES (206, 89, 976);
INSERT INTO public.games VALUES (207, 90, 683);
INSERT INTO public.games VALUES (208, 90, 422);
INSERT INTO public.games VALUES (209, 89, 721);
INSERT INTO public.games VALUES (210, 89, 500);
INSERT INTO public.games VALUES (211, 89, 54);
INSERT INTO public.games VALUES (212, 19, 9);
INSERT INTO public.games VALUES (213, 91, 17);
INSERT INTO public.games VALUES (214, 92, 899);
INSERT INTO public.games VALUES (215, 92, 187);
INSERT INTO public.games VALUES (216, 93, 251);
INSERT INTO public.games VALUES (217, 93, 503);
INSERT INTO public.games VALUES (218, 92, 381);
INSERT INTO public.games VALUES (219, 92, 501);
INSERT INTO public.games VALUES (220, 92, 36);
INSERT INTO public.games VALUES (221, 94, 381);
INSERT INTO public.games VALUES (222, 94, 87);
INSERT INTO public.games VALUES (223, 95, 234);
INSERT INTO public.games VALUES (224, 95, 666);
INSERT INTO public.games VALUES (225, 94, 440);
INSERT INTO public.games VALUES (226, 94, 960);
INSERT INTO public.games VALUES (227, 94, 996);
INSERT INTO public.games VALUES (228, 96, 536);
INSERT INTO public.games VALUES (229, 96, 517);
INSERT INTO public.games VALUES (230, 97, 664);
INSERT INTO public.games VALUES (231, 97, 952);
INSERT INTO public.games VALUES (232, 96, 728);
INSERT INTO public.games VALUES (233, 96, 633);
INSERT INTO public.games VALUES (234, 96, 191);
INSERT INTO public.games VALUES (235, 98, 731);
INSERT INTO public.games VALUES (236, 98, 849);
INSERT INTO public.games VALUES (237, 99, 630);
INSERT INTO public.games VALUES (238, 99, 256);
INSERT INTO public.games VALUES (239, 98, 989);
INSERT INTO public.games VALUES (240, 98, 255);
INSERT INTO public.games VALUES (241, 98, 702);
INSERT INTO public.games VALUES (242, 100, 438);
INSERT INTO public.games VALUES (243, 100, 284);
INSERT INTO public.games VALUES (244, 101, 701);
INSERT INTO public.games VALUES (245, 101, 191);
INSERT INTO public.games VALUES (246, 100, 135);
INSERT INTO public.games VALUES (247, 100, 404);
INSERT INTO public.games VALUES (248, 100, 436);
INSERT INTO public.games VALUES (249, 102, 460);
INSERT INTO public.games VALUES (250, 102, 625);
INSERT INTO public.games VALUES (251, 103, 211);
INSERT INTO public.games VALUES (252, 103, 168);
INSERT INTO public.games VALUES (253, 102, 933);
INSERT INTO public.games VALUES (254, 102, 936);
INSERT INTO public.games VALUES (255, 102, 496);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (19, 'jay');
INSERT INTO public.users VALUES (21, 'user_1695660456514');
INSERT INTO public.users VALUES (22, 'user_1695660456513');
INSERT INTO public.users VALUES (23, 'user_1695660588407');
INSERT INTO public.users VALUES (24, 'user_1695660588406');
INSERT INTO public.users VALUES (25, 'lucy');
INSERT INTO public.users VALUES (26, 'joy');
INSERT INTO public.users VALUES (27, 'user_1695662538516');
INSERT INTO public.users VALUES (28, 'user_1695662538515');
INSERT INTO public.users VALUES (29, 'user_1695663189177');
INSERT INTO public.users VALUES (30, 'user_1695663189176');
INSERT INTO public.users VALUES (31, 'user_1695664095627');
INSERT INTO public.users VALUES (32, 'user_1695664095626');
INSERT INTO public.users VALUES (33, 'user_1695666027368');
INSERT INTO public.users VALUES (34, 'user_1695666027367');
INSERT INTO public.users VALUES (35, 'user_1695666745386');
INSERT INTO public.users VALUES (36, 'user_1695666745385');
INSERT INTO public.users VALUES (37, 'user_1695666840652');
INSERT INTO public.users VALUES (38, 'user_1695666840651');
INSERT INTO public.users VALUES (39, 'user_1695699649825');
INSERT INTO public.users VALUES (40, 'user_1695699649824');
INSERT INTO public.users VALUES (41, 'user_1695699865955');
INSERT INTO public.users VALUES (42, 'user_1695699865954');
INSERT INTO public.users VALUES (43, 'user_1695699944392');
INSERT INTO public.users VALUES (44, 'user_1695699944391');
INSERT INTO public.users VALUES (45, 'user_1695700225204');
INSERT INTO public.users VALUES (46, 'user_1695700225203');
INSERT INTO public.users VALUES (47, 'user_1695700279192');
INSERT INTO public.users VALUES (48, 'user_1695700279191');
INSERT INTO public.users VALUES (49, 'user_1695701206749');
INSERT INTO public.users VALUES (50, 'user_1695701206748');
INSERT INTO public.users VALUES (51, 'user_1695701226255');
INSERT INTO public.users VALUES (52, 'user_1695701226254');
INSERT INTO public.users VALUES (53, 'user_1695701241080');
INSERT INTO public.users VALUES (54, 'user_1695701241079');
INSERT INTO public.users VALUES (55, 'user_1695701255765');
INSERT INTO public.users VALUES (56, 'user_1695701255764');
INSERT INTO public.users VALUES (57, 'user_1695701592267');
INSERT INTO public.users VALUES (58, 'user_1695701592266');
INSERT INTO public.users VALUES (59, 'user_1695701765590');
INSERT INTO public.users VALUES (60, 'user_1695701765589');
INSERT INTO public.users VALUES (61, 'user_1695701784484');
INSERT INTO public.users VALUES (62, 'user_1695701784483');
INSERT INTO public.users VALUES (63, 'user_1695701802782');
INSERT INTO public.users VALUES (64, 'user_1695701802781');
INSERT INTO public.users VALUES (65, 'user_1695701822455');
INSERT INTO public.users VALUES (66, 'user_1695701822454');
INSERT INTO public.users VALUES (67, 'user_1695701835039');
INSERT INTO public.users VALUES (68, 'user_1695701835038');
INSERT INTO public.users VALUES (69, 'user_1695701852067');
INSERT INTO public.users VALUES (70, 'user_1695701852066');
INSERT INTO public.users VALUES (71, 'user_1695701862493');
INSERT INTO public.users VALUES (72, 'user_1695701862492');
INSERT INTO public.users VALUES (73, 'user_1695701873352');
INSERT INTO public.users VALUES (74, 'user_1695701873351');
INSERT INTO public.users VALUES (75, 'user_1695702795025');
INSERT INTO public.users VALUES (76, 'user_1695702795024');
INSERT INTO public.users VALUES (77, 'user_1695702899605');
INSERT INTO public.users VALUES (78, 'user_1695702899604');
INSERT INTO public.users VALUES (79, 'user_1695702979367');
INSERT INTO public.users VALUES (80, 'user_1695702979366');
INSERT INTO public.users VALUES (81, 'user_1695703002703');
INSERT INTO public.users VALUES (82, 'user_1695703002702');
INSERT INTO public.users VALUES (83, 'user_1695704019382');
INSERT INTO public.users VALUES (84, 'user_1695704019381');
INSERT INTO public.users VALUES (85, 'user_1695704124944');
INSERT INTO public.users VALUES (86, 'user_1695704124943');
INSERT INTO public.users VALUES (87, 'user_1695704266832');
INSERT INTO public.users VALUES (88, 'user_1695704266831');
INSERT INTO public.users VALUES (89, 'user_1695704304187');
INSERT INTO public.users VALUES (90, 'user_1695704304186');
INSERT INTO public.users VALUES (91, 'ben');
INSERT INTO public.users VALUES (92, 'user_1695704529814');
INSERT INTO public.users VALUES (93, 'user_1695704529813');
INSERT INTO public.users VALUES (94, 'user_1695704544220');
INSERT INTO public.users VALUES (95, 'user_1695704544219');
INSERT INTO public.users VALUES (96, 'user_1695704563966');
INSERT INTO public.users VALUES (97, 'user_1695704563965');
INSERT INTO public.users VALUES (98, 'user_1695704586708');
INSERT INTO public.users VALUES (99, 'user_1695704586707');
INSERT INTO public.users VALUES (100, 'user_1695704625269');
INSERT INTO public.users VALUES (101, 'user_1695704625268');
INSERT INTO public.users VALUES (102, 'user_1695704751049');
INSERT INTO public.users VALUES (103, 'user_1695704751048');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 255, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 103, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

