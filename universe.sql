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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(55) NOT NULL,
    bob integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(55) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    galaxy_types character varying(55),
    distance_from_earth integer NOT NULL
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
-- Name: mars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mars (
    mars_id integer NOT NULL,
    name character varying(55) NOT NULL,
    bob integer
);


ALTER TABLE public.mars OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mars_mars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mars_mars_id_seq OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mars_mars_id_seq OWNED BY public.mars.mars_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(55) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    type character varying(55),
    distance_from_earth integer NOT NULL,
    planet_id integer
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
    name character varying(55) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(55),
    distance_from_earth integer NOT NULL,
    star_id integer
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
    name character varying(55) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    star_types character varying(55),
    distance_from_earth integer NOT NULL,
    galaxy_id integer
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: mars mars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars ALTER COLUMN mars_id SET DEFAULT nextval('public.mars_mars_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Btbr', NULL);
INSERT INTO public.earth VALUES (2, 'Btber', NULL);
INSERT INTO public.earth VALUES (3, 'Btbeer', NULL);
INSERT INTO public.earth VALUES (4, 'Btbefr', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'Description 1', true, true, 23000000, 'Type 1', 120);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 2', 'Description 1', true, false, 23000000, 'Type 1', 120);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 3', 'Description 1', true, false, 23000000, 'Type 1', 120);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 4', 'Description 1', true, false, 23000000, 'Type 1', 120);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 5', 'Description 1', true, false, 23000000, 'Type 1', 120);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 6', 'Description 1', true, false, 23000000, 'Type 1', 120);


--
-- Data for Name: mars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mars VALUES (1, 'Bob', NULL);
INSERT INTO public.mars VALUES (2, 'Btb', NULL);
INSERT INTO public.mars VALUES (3, 'Btbr', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (26, 'qw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (27, 'wqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (28, 'wwqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (29, 'wewqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (30, 'wtrewqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (31, 'wtrrewqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (32, 'wtrrtewqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (33, 'wtrrtwqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (34, 'trrtwqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (35, 'trrrttwqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (36, 'trrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (37, 'trfrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (38, 'trgfrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (39, 'trgfrtlwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (40, 'trgfrthlwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (41, 'trgfrtphlwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (42, 'ktrgfrtphlwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (43, 'trggfrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (44, 'trggpfrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (45, 'trggpfjrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);
INSERT INTO public.moon VALUES (46, 'torggpfjrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (15, 'rte', 'des', true, true, 239484, 'tyoe', 4948, 1);
INSERT INTO public.planet VALUES (16, 'torggpfjrtwttrqw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (17, 'torggpfjrwttrqw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (18, 'torggpfjrwttqw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (19, 'torggpfjrttqw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (20, 'torggpfjrtqw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (21, 'torggpfjtqw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (22, 'trggpfjtqw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (23, 'trggpfjtw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (24, 'trggpfjw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (25, 'trgpfjw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (26, 'tgpfjw', 'we', true, false, 239048, 'moon', 2343, 1);
INSERT INTO public.planet VALUES (27, 'tsrgpfjw', 'we', true, false, 239048, 'moon', 2343, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Galaxy 1', 'Description 1', true, false, 23000000, 'Type 1', 120, 1);
INSERT INTO public.star VALUES (2, 'Galaxy 2', 'Description 1', true, false, 23000000, 'Type 1', 120, 1);
INSERT INTO public.star VALUES (3, 'Galaxy 3', 'Description 1', true, false, 23000000, 'Type 1', 120, 1);
INSERT INTO public.star VALUES (4, 'Galaxy 4', 'Description 1', true, false, 23000000, 'Type 1', 120, 1);
INSERT INTO public.star VALUES (5, 'Galaxy 5', 'Description 1', true, false, 23000000, 'Type 1', 120, 1);
INSERT INTO public.star VALUES (6, 'namw', 'desc 1', true, true, 29333000, 'type 1', 123, 1);
INSERT INTO public.star VALUES (8, 'ndamw', 'desc 1', true, true, 29333000, 'type 1', 123, 1);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: mars_mars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mars_mars_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 46, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 27, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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
-- Name: mars mars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_name_key UNIQUE (name);


--
-- Name: mars mars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_pkey PRIMARY KEY (mars_id);


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

