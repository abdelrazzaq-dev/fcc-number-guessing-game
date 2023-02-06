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
    guesses integer NOT NULL,
    user_id integer NOT NULL
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
    username character varying(22)
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

INSERT INTO public.games VALUES (1, 10, 14);
INSERT INTO public.games VALUES (2, 623, 15);
INSERT INTO public.games VALUES (3, 764, 15);
INSERT INTO public.games VALUES (4, 395, 16);
INSERT INTO public.games VALUES (5, 752, 16);
INSERT INTO public.games VALUES (6, 73, 15);
INSERT INTO public.games VALUES (7, 819, 15);
INSERT INTO public.games VALUES (8, 393, 15);
INSERT INTO public.games VALUES (9, 599, 17);
INSERT INTO public.games VALUES (10, 692, 17);
INSERT INTO public.games VALUES (11, 669, 18);
INSERT INTO public.games VALUES (12, 572, 18);
INSERT INTO public.games VALUES (13, 420, 17);
INSERT INTO public.games VALUES (14, 794, 17);
INSERT INTO public.games VALUES (15, 772, 17);
INSERT INTO public.games VALUES (16, 91, 19);
INSERT INTO public.games VALUES (17, 652, 19);
INSERT INTO public.games VALUES (18, 90, 20);
INSERT INTO public.games VALUES (19, 619, 20);
INSERT INTO public.games VALUES (20, 712, 19);
INSERT INTO public.games VALUES (21, 561, 19);
INSERT INTO public.games VALUES (22, 820, 19);
INSERT INTO public.games VALUES (23, 4, 21);
INSERT INTO public.games VALUES (24, 36, 21);
INSERT INTO public.games VALUES (25, 668, 22);
INSERT INTO public.games VALUES (26, 794, 22);
INSERT INTO public.games VALUES (27, 861, 21);
INSERT INTO public.games VALUES (28, 802, 21);
INSERT INTO public.games VALUES (29, 632, 21);
INSERT INTO public.games VALUES (30, 511, 23);
INSERT INTO public.games VALUES (31, 927, 23);
INSERT INTO public.games VALUES (32, 378, 24);
INSERT INTO public.games VALUES (33, 172, 24);
INSERT INTO public.games VALUES (34, 195, 23);
INSERT INTO public.games VALUES (35, 596, 23);
INSERT INTO public.games VALUES (36, 111, 23);
INSERT INTO public.games VALUES (37, 11, 26);
INSERT INTO public.games VALUES (38, 604, 27);
INSERT INTO public.games VALUES (39, 427, 27);
INSERT INTO public.games VALUES (40, 33, 28);
INSERT INTO public.games VALUES (41, 973, 28);
INSERT INTO public.games VALUES (42, 880, 27);
INSERT INTO public.games VALUES (43, 377, 27);
INSERT INTO public.games VALUES (44, 391, 27);
INSERT INTO public.games VALUES (45, 418, 29);
INSERT INTO public.games VALUES (46, 763, 29);
INSERT INTO public.games VALUES (47, 320, 30);
INSERT INTO public.games VALUES (48, 991, 30);
INSERT INTO public.games VALUES (49, 128, 29);
INSERT INTO public.games VALUES (50, 524, 29);
INSERT INTO public.games VALUES (51, 227, 29);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Ab');
INSERT INTO public.users VALUES (2, 'Jo');
INSERT INTO public.users VALUES (3, 'user_1675539213014');
INSERT INTO public.users VALUES (4, 'user_1675539213013');
INSERT INTO public.users VALUES (5, 'user_1675539955304');
INSERT INTO public.users VALUES (6, 'user_1675539955303');
INSERT INTO public.users VALUES (7, 'AB');
INSERT INTO public.users VALUES (8, 'hi');
INSERT INTO public.users VALUES (9, 'ab');
INSERT INTO public.users VALUES (10, 'Jhone');
INSERT INTO public.users VALUES (11, 'Jony');
INSERT INTO public.users VALUES (12, 'a');
INSERT INTO public.users VALUES (13, '1');
INSERT INTO public.users VALUES (14, '3');
INSERT INTO public.users VALUES (15, 'user_1675541292235');
INSERT INTO public.users VALUES (16, 'user_1675541292234');
INSERT INTO public.users VALUES (17, 'user_1675720155038');
INSERT INTO public.users VALUES (18, 'user_1675720155037');
INSERT INTO public.users VALUES (19, 'user_1675720247131');
INSERT INTO public.users VALUES (20, 'user_1675720247130');
INSERT INTO public.users VALUES (21, 'user_1675720574841');
INSERT INTO public.users VALUES (22, 'user_1675720574840');
INSERT INTO public.users VALUES (23, 'user_1675720599678');
INSERT INTO public.users VALUES (24, 'user_1675720599677');
INSERT INTO public.users VALUES (25, 'A');
INSERT INTO public.users VALUES (26, 'Q');
INSERT INTO public.users VALUES (27, 'user_1675720903896');
INSERT INTO public.users VALUES (28, 'user_1675720903895');
INSERT INTO public.users VALUES (29, 'user_1675720965510');
INSERT INTO public.users VALUES (30, 'user_1675720965509');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

