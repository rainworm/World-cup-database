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
    round character varying NOT NULL,
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

INSERT INTO public.games VALUES (2, 2018, 'Final', 930, 931, 4, 2);
INSERT INTO public.games VALUES (3, 2018, 'Third Place', 932, 933, 2, 0);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 931, 933, 2, 1);
INSERT INTO public.games VALUES (5, 2018, 'Semi-Final', 930, 932, 1, 0);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 931, 939, 3, 2);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 933, 941, 2, 0);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 932, 943, 2, 1);
INSERT INTO public.games VALUES (9, 2018, 'Quarter-Final', 930, 945, 2, 0);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 933, 947, 2, 1);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 941, 949, 1, 0);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 932, 951, 3, 2);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 943, 953, 2, 0);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 931, 955, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 939, 957, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 945, 959, 2, 1);
INSERT INTO public.games VALUES (17, 2018, 'Eighth-Final', 930, 961, 4, 3);
INSERT INTO public.games VALUES (18, 2014, 'Final', 962, 961, 1, 0);
INSERT INTO public.games VALUES (19, 2014, 'Third Place', 964, 943, 3, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 961, 964, 1, 0);
INSERT INTO public.games VALUES (21, 2014, 'Semi-Final', 962, 943, 7, 1);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 964, 971, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 961, 932, 1, 0);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 943, 947, 2, 1);
INSERT INTO public.games VALUES (25, 2014, 'Quarter-Final', 962, 930, 1, 0);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 943, 979, 2, 1);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 947, 945, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 930, 983, 2, 0);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 962, 985, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 964, 953, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 971, 989, 2, 1);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 961, 949, 1, 0);
INSERT INTO public.games VALUES (33, 2014, 'Eighth-Final', 932, 993, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (930, 'France');
INSERT INTO public.teams VALUES (931, 'Croatia');
INSERT INTO public.teams VALUES (932, 'Belgium');
INSERT INTO public.teams VALUES (933, 'England');
INSERT INTO public.teams VALUES (939, 'Russia');
INSERT INTO public.teams VALUES (941, 'Sweden');
INSERT INTO public.teams VALUES (943, 'Brazil');
INSERT INTO public.teams VALUES (945, 'Uruguay');
INSERT INTO public.teams VALUES (947, 'Colombia');
INSERT INTO public.teams VALUES (949, 'Switzerland');
INSERT INTO public.teams VALUES (951, 'Japan');
INSERT INTO public.teams VALUES (953, 'Mexico');
INSERT INTO public.teams VALUES (955, 'Denmark');
INSERT INTO public.teams VALUES (957, 'Spain');
INSERT INTO public.teams VALUES (959, 'Portugal');
INSERT INTO public.teams VALUES (961, 'Argentina');
INSERT INTO public.teams VALUES (962, 'Germany');
INSERT INTO public.teams VALUES (964, 'Netherlands');
INSERT INTO public.teams VALUES (971, 'Costa Rica');
INSERT INTO public.teams VALUES (979, 'Chile');
INSERT INTO public.teams VALUES (983, 'Nigeria');
INSERT INTO public.teams VALUES (985, 'Algeria');
INSERT INTO public.teams VALUES (989, 'Greece');
INSERT INTO public.teams VALUES (993, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 33, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 993, true);


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
-- Name: games fk_games_teams_oponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_teams_oponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_teams_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_teams_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

