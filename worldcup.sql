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
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (471, 2018, 4, 2, 'Final', 1285, 1284);
INSERT INTO public.games VALUES (472, 2018, 2, 0, 'Third Place', 1287, 1286);
INSERT INTO public.games VALUES (473, 2018, 2, 1, 'Semi-Final', 1287, 1285);
INSERT INTO public.games VALUES (474, 2018, 1, 0, 'Semi-Final', 1286, 1284);
INSERT INTO public.games VALUES (475, 2018, 3, 2, 'Quarter-Final', 1288, 1285);
INSERT INTO public.games VALUES (476, 2018, 2, 0, 'Quarter-Final', 1289, 1287);
INSERT INTO public.games VALUES (477, 2018, 2, 1, 'Quarter-Final', 1290, 1286);
INSERT INTO public.games VALUES (478, 2018, 2, 0, 'Quarter-Final', 1291, 1284);
INSERT INTO public.games VALUES (479, 2018, 2, 1, 'Eighth-Final', 1292, 1287);
INSERT INTO public.games VALUES (480, 2018, 1, 0, 'Eighth-Final', 1293, 1289);
INSERT INTO public.games VALUES (481, 2018, 3, 2, 'Eighth-Final', 1294, 1286);
INSERT INTO public.games VALUES (482, 2018, 2, 0, 'Eighth-Final', 1295, 1290);
INSERT INTO public.games VALUES (483, 2018, 2, 1, 'Eighth-Final', 1296, 1285);
INSERT INTO public.games VALUES (484, 2018, 2, 1, 'Eighth-Final', 1297, 1288);
INSERT INTO public.games VALUES (485, 2018, 2, 1, 'Eighth-Final', 1298, 1291);
INSERT INTO public.games VALUES (486, 2018, 4, 3, 'Eighth-Final', 1299, 1284);
INSERT INTO public.games VALUES (487, 2014, 1, 0, 'Final', 1299, 1300);
INSERT INTO public.games VALUES (488, 2014, 3, 0, 'Third Place', 1290, 1301);
INSERT INTO public.games VALUES (489, 2014, 1, 0, 'Semi-Final', 1301, 1299);
INSERT INTO public.games VALUES (490, 2014, 7, 1, 'Semi-Final', 1290, 1300);
INSERT INTO public.games VALUES (491, 2014, 1, 0, 'Quarter-Final', 1302, 1301);
INSERT INTO public.games VALUES (492, 2014, 1, 0, 'Quarter-Final', 1286, 1299);
INSERT INTO public.games VALUES (493, 2014, 2, 1, 'Quarter-Final', 1292, 1290);
INSERT INTO public.games VALUES (494, 2014, 1, 0, 'Quarter-Final', 1284, 1300);
INSERT INTO public.games VALUES (495, 2014, 2, 1, 'Eighth-Final', 1303, 1290);
INSERT INTO public.games VALUES (496, 2014, 2, 0, 'Eighth-Final', 1291, 1292);
INSERT INTO public.games VALUES (497, 2014, 2, 0, 'Eighth-Final', 1304, 1284);
INSERT INTO public.games VALUES (498, 2014, 2, 1, 'Eighth-Final', 1305, 1300);
INSERT INTO public.games VALUES (499, 2014, 2, 1, 'Eighth-Final', 1295, 1301);
INSERT INTO public.games VALUES (500, 2014, 2, 1, 'Eighth-Final', 1306, 1302);
INSERT INTO public.games VALUES (501, 2014, 1, 0, 'Eighth-Final', 1293, 1299);
INSERT INTO public.games VALUES (502, 2014, 2, 1, 'Eighth-Final', 1307, 1286);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1284, 'France');
INSERT INTO public.teams VALUES (1285, 'Croatia');
INSERT INTO public.teams VALUES (1286, 'Belgium');
INSERT INTO public.teams VALUES (1287, 'England');
INSERT INTO public.teams VALUES (1288, 'Russia');
INSERT INTO public.teams VALUES (1289, 'Sweden');
INSERT INTO public.teams VALUES (1290, 'Brazil');
INSERT INTO public.teams VALUES (1291, 'Uruguay');
INSERT INTO public.teams VALUES (1292, 'Colombia');
INSERT INTO public.teams VALUES (1293, 'Switzerland');
INSERT INTO public.teams VALUES (1294, 'Japan');
INSERT INTO public.teams VALUES (1295, 'Mexico');
INSERT INTO public.teams VALUES (1296, 'Denmark');
INSERT INTO public.teams VALUES (1297, 'Spain');
INSERT INTO public.teams VALUES (1298, 'Portugal');
INSERT INTO public.teams VALUES (1299, 'Argentina');
INSERT INTO public.teams VALUES (1300, 'Germany');
INSERT INTO public.teams VALUES (1301, 'Netherlands');
INSERT INTO public.teams VALUES (1302, 'Costa Rica');
INSERT INTO public.teams VALUES (1303, 'Chile');
INSERT INTO public.teams VALUES (1304, 'Nigeria');
INSERT INTO public.teams VALUES (1305, 'Algeria');
INSERT INTO public.teams VALUES (1306, 'Greece');
INSERT INTO public.teams VALUES (1307, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 502, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1307, true);


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
-- Name: games opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

