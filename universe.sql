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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    is_young boolean,
    is_big boolean
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    is_young boolean,
    is_big boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    is_young boolean,
    is_big boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    is_young boolean,
    is_big boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    is_young boolean,
    is_big boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 1, 'comet1', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.comet VALUES (2, 2, 'comet2', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.comet VALUES (3, 3, 'comet3', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.comet VALUES (4, 4, 'comet4', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.comet VALUES (5, 5, 'comet5', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.comet VALUES (6, 6, 'comet6', 500, 750, 1500.75, 'solid', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 500, 750, 1500.75, 'solid', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon1', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (2, 1, 'moon2', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (3, 2, 'moon3', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (4, 2, 'moon4', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (5, 3, 'moon5', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (6, 3, 'moon6', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (7, 4, 'moon7', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (8, 4, 'moon8', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (9, 5, 'moon9', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (10, 5, 'moon10', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (11, 6, 'moon11', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (12, 6, 'moon12', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (13, 7, 'moon13', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (14, 7, 'moon14', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (15, 8, 'moon15', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (16, 8, 'moon16', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (17, 9, 'moon17', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (18, 10, 'moon18', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (19, 11, 'moon19', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (20, 12, 'moon20', 500, 750, 1500.75, 'solid', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'planet1', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (2, 1, 'planet2', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (3, 2, 'planet3', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (4, 2, 'planet4', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (5, 3, 'planet5', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (6, 3, 'planet6', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (7, 4, 'planet7', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (8, 4, 'planet8', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (9, 5, 'planet9', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (10, 5, 'planet10', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (11, 6, 'planet11', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (12, 6, 'planet12', 500, 750, 1500.75, 'solid', true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'star1', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.star VALUES (2, 2, 'star2', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.star VALUES (3, 3, 'star3', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.star VALUES (4, 4, 'star4', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.star VALUES (5, 5, 'star5', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.star VALUES (6, 6, 'star6', 500, 750, 1500.75, 'solid', true, true);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

