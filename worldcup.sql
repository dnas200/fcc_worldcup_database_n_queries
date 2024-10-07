--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1423, 2018, 'Final', 4099, 4100, 4, 2);
INSERT INTO public.games VALUES (1424, 2018, 'Third Place', 4101, 4102, 2, 0);
INSERT INTO public.games VALUES (1425, 2018, 'Semi-Final', 4100, 4102, 2, 1);
INSERT INTO public.games VALUES (1426, 2018, 'Semi-Final', 4099, 4101, 1, 0);
INSERT INTO public.games VALUES (1427, 2018, 'Quarter-Final', 4100, 4108, 3, 2);
INSERT INTO public.games VALUES (1428, 2018, 'Quarter-Final', 4102, 4110, 2, 0);
INSERT INTO public.games VALUES (1429, 2018, 'Quarter-Final', 4101, 4112, 2, 1);
INSERT INTO public.games VALUES (1430, 2018, 'Quarter-Final', 4099, 4114, 2, 0);
INSERT INTO public.games VALUES (1431, 2018, 'Eighth-Final', 4102, 4116, 2, 1);
INSERT INTO public.games VALUES (1432, 2018, 'Eighth-Final', 4110, 4118, 1, 0);
INSERT INTO public.games VALUES (1433, 2018, 'Eighth-Final', 4101, 4120, 3, 2);
INSERT INTO public.games VALUES (1434, 2018, 'Eighth-Final', 4112, 4122, 2, 0);
INSERT INTO public.games VALUES (1435, 2018, 'Eighth-Final', 4100, 4124, 2, 1);
INSERT INTO public.games VALUES (1436, 2018, 'Eighth-Final', 4108, 4126, 2, 1);
INSERT INTO public.games VALUES (1437, 2018, 'Eighth-Final', 4114, 4128, 2, 1);
INSERT INTO public.games VALUES (1438, 2018, 'Eighth-Final', 4099, 4130, 4, 3);
INSERT INTO public.games VALUES (1439, 2014, 'Final', 4131, 4130, 1, 0);
INSERT INTO public.games VALUES (1440, 2014, 'Third Place', 4133, 4112, 3, 0);
INSERT INTO public.games VALUES (1441, 2014, 'Semi-Final', 4130, 4133, 1, 0);
INSERT INTO public.games VALUES (1442, 2014, 'Semi-Final', 4131, 4112, 7, 1);
INSERT INTO public.games VALUES (1443, 2014, 'Quarter-Final', 4133, 4140, 1, 0);
INSERT INTO public.games VALUES (1444, 2014, 'Quarter-Final', 4130, 4101, 1, 0);
INSERT INTO public.games VALUES (1445, 2014, 'Quarter-Final', 4112, 4116, 2, 1);
INSERT INTO public.games VALUES (1446, 2014, 'Quarter-Final', 4131, 4099, 1, 0);
INSERT INTO public.games VALUES (1447, 2014, 'Eighth-Final', 4112, 4148, 2, 1);
INSERT INTO public.games VALUES (1448, 2014, 'Eighth-Final', 4116, 4114, 2, 0);
INSERT INTO public.games VALUES (1449, 2014, 'Eighth-Final', 4099, 4152, 2, 0);
INSERT INTO public.games VALUES (1450, 2014, 'Eighth-Final', 4131, 4154, 2, 1);
INSERT INTO public.games VALUES (1451, 2014, 'Eighth-Final', 4133, 4122, 2, 1);
INSERT INTO public.games VALUES (1452, 2014, 'Eighth-Final', 4140, 4158, 2, 1);
INSERT INTO public.games VALUES (1453, 2014, 'Eighth-Final', 4130, 4118, 1, 0);
INSERT INTO public.games VALUES (1454, 2014, 'Eighth-Final', 4101, 4162, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (4099, 'France');
INSERT INTO public.teams VALUES (4100, 'Croatia');
INSERT INTO public.teams VALUES (4101, 'Belgium');
INSERT INTO public.teams VALUES (4102, 'England');
INSERT INTO public.teams VALUES (4108, 'Russia');
INSERT INTO public.teams VALUES (4110, 'Sweden');
INSERT INTO public.teams VALUES (4112, 'Brazil');
INSERT INTO public.teams VALUES (4114, 'Uruguay');
INSERT INTO public.teams VALUES (4116, 'Colombia');
INSERT INTO public.teams VALUES (4118, 'Switzerland');
INSERT INTO public.teams VALUES (4120, 'Japan');
INSERT INTO public.teams VALUES (4122, 'Mexico');
INSERT INTO public.teams VALUES (4124, 'Denmark');
INSERT INTO public.teams VALUES (4126, 'Spain');
INSERT INTO public.teams VALUES (4128, 'Portugal');
INSERT INTO public.teams VALUES (4130, 'Argentina');
INSERT INTO public.teams VALUES (4131, 'Germany');
INSERT INTO public.teams VALUES (4133, 'Netherlands');
INSERT INTO public.teams VALUES (4140, 'Costa Rica');
INSERT INTO public.teams VALUES (4148, 'Chile');
INSERT INTO public.teams VALUES (4152, 'Nigeria');
INSERT INTO public.teams VALUES (4154, 'Algeria');
INSERT INTO public.teams VALUES (4158, 'Greece');
INSERT INTO public.teams VALUES (4162, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1454, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 4162, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

