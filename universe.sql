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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50),
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (2, 'junin', 'very cold', NULL, NULL, false, true);
INSERT INTO public.asteroid VALUES (3, 'aleji', 'very hot', NULL, NULL, false, true);
INSERT INTO public.asteroid VALUES (4, 'lotica', 'hot', NULL, NULL, false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'lotica', 'hot', false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'lotica', 'very hot', false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'lotica', 'very cold', false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'lotica', 'cold', false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'lotica', 'cold', false, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'lotica', 'cold', true, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'lotica', 'cold', true, true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'jupiter', 'very hot', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'jupiter', 'very hot', false, true, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'jupiter', 'very hot', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'jupiter', 'hot', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'jupiter', 'cold', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'jupiter', 'very cold', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'earth', 'very cold', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'earth', 'very cold', true, false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'earth', 'very cold', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'earth', 'cold', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'mars', 'cold', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'mars', 'cold', true, false, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'mars', 'cold', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'mars', 'hot', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'mars', 'very hot', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'nepton', 'very hot', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'nepton', 'very hot', true, false, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'nepton', 'very hot', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'nepton', 'hot', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'nepton', 'cold', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'zohal', 'cold', true, true, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'zohal', 'cold', true, false, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'zohal', 'cold', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'zohal', 'hot', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'zohal', 'very hot', false, false, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'zohal', 'very hot', false, true, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'zohal', 'very hot', true, true, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'lpintk', 'hot', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'lpintk', 'hot', false, true, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'lpintk', 'hot', false, false, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'lpintk', 'very hot', false, false, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'lpintk', 'very cold', false, false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'mars', 'very cold', false, false, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'mars', 'cold', false, false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'earth', 'cold', false, false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'earth', 'cold', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'earth', 'hot', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'earth', 'very hot', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'jupiter', 'very hot', true, true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lotica', 'cold', true, true, NULL, NULL);
INSERT INTO public.star VALUES (2, 'lotica', 'cold', true, false, NULL, NULL);
INSERT INTO public.star VALUES (3, 'lotica', 'cold', false, true, NULL, NULL);
INSERT INTO public.star VALUES (4, 'lpintk', 'cold', false, true, NULL, NULL);
INSERT INTO public.star VALUES (5, 'lpintk', 'cold', true, true, NULL, NULL);
INSERT INTO public.star VALUES (6, 'lpintk', 'hot', true, true, NULL, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_age_in_millions_of_years_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_millions_of_years_fkey FOREIGN KEY (age_in_millions_of_years) REFERENCES public.planet(age_in_millions_of_years);


--
-- Name: planet planet_age_in_millions_of_years_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_millions_of_years_fkey FOREIGN KEY (age_in_millions_of_years) REFERENCES public.star(age_in_millions_of_years);


--
-- Name: star star_age_in_millions_of_years_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_of_years_fkey FOREIGN KEY (age_in_millions_of_years) REFERENCES public.galaxy(age_in_millions_of_years);


--
-- PostgreSQL database dump complete
--

