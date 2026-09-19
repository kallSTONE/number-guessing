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
    user_id integer,
    number_of_guesses integer NOT NULL,
    secret_number integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 193, 192);
INSERT INTO public.games VALUES (2, 1, 494, 493);
INSERT INTO public.games VALUES (3, 2, 400, 399);
INSERT INTO public.games VALUES (4, 2, 841, 840);
INSERT INTO public.games VALUES (5, 1, 747, 744);
INSERT INTO public.games VALUES (6, 1, 177, 176);
INSERT INTO public.games VALUES (7, 1, 69, 68);
INSERT INTO public.games VALUES (8, 3, 163, 162);
INSERT INTO public.games VALUES (9, 3, 51, 50);
INSERT INTO public.games VALUES (10, 4, 457, 456);
INSERT INTO public.games VALUES (11, 4, 108, 107);
INSERT INTO public.games VALUES (12, 3, 283, 280);
INSERT INTO public.games VALUES (13, 3, 233, 232);
INSERT INTO public.games VALUES (14, 3, 70, 69);
INSERT INTO public.games VALUES (15, 5, 908, 907);
INSERT INTO public.games VALUES (16, 5, 574, 573);
INSERT INTO public.games VALUES (17, 6, 395, 394);
INSERT INTO public.games VALUES (18, 6, 831, 830);
INSERT INTO public.games VALUES (19, 5, 66, 63);
INSERT INTO public.games VALUES (20, 5, 890, 889);
INSERT INTO public.games VALUES (21, 5, 790, 789);
INSERT INTO public.games VALUES (48, 38, 16, 615);
INSERT INTO public.games VALUES (49, 39, 596, 595);
INSERT INTO public.games VALUES (50, 39, 988, 987);
INSERT INTO public.games VALUES (51, 40, 74, 73);
INSERT INTO public.games VALUES (52, 40, 33, 32);
INSERT INTO public.games VALUES (53, 39, 739, 736);
INSERT INTO public.games VALUES (54, 39, 360, 359);
INSERT INTO public.games VALUES (55, 39, 461, 460);
INSERT INTO public.games VALUES (56, 41, 734, 733);
INSERT INTO public.games VALUES (57, 41, 488, 487);
INSERT INTO public.games VALUES (58, 42, 815, 814);
INSERT INTO public.games VALUES (59, 42, 982, 981);
INSERT INTO public.games VALUES (60, 41, 80, 77);
INSERT INTO public.games VALUES (61, 41, 356, 355);
INSERT INTO public.games VALUES (62, 41, 218, 217);
INSERT INTO public.games VALUES (63, 43, 406, 405);
INSERT INTO public.games VALUES (64, 43, 686, 685);
INSERT INTO public.games VALUES (65, 44, 897, 896);
INSERT INTO public.games VALUES (66, 44, 444, 443);
INSERT INTO public.games VALUES (67, 43, 9, 6);
INSERT INTO public.games VALUES (68, 43, 72, 71);
INSERT INTO public.games VALUES (69, 43, 818, 817);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1789819591890');
INSERT INTO public.users VALUES (2, 'user_1789819591889');
INSERT INTO public.users VALUES (3, 'user_1789819775109');
INSERT INTO public.users VALUES (4, 'user_1789819775108');
INSERT INTO public.users VALUES (5, 'user_1789819819161');
INSERT INTO public.users VALUES (6, 'user_1789819819160');
INSERT INTO public.users VALUES (38, 'freecodecamp');
INSERT INTO public.users VALUES (39, 'user_1789820725724');
INSERT INTO public.users VALUES (40, 'user_1789820725723');
INSERT INTO public.users VALUES (41, 'user_1789820804958');
INSERT INTO public.users VALUES (42, 'user_1789820804957');
INSERT INTO public.users VALUES (43, 'user_1789820842938');
INSERT INTO public.users VALUES (44, 'user_1789820842937');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 69, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 44, true);


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

