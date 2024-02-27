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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    speed numeric NOT NULL,
    name character varying(50) NOT NULL
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    speed numeric NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    speed numeric NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
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
    name character varying(50) NOT NULL,
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    speed numeric NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    speed numeric NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
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

INSERT INTO public.asteroid VALUES (1, 0, 'Lorem Ipsum');
INSERT INTO public.asteroid VALUES (4, 0, 'Lorem Ipsum1');
INSERT INTO public.asteroid VALUES (5, 0, 'Lorem Ipsum2');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 10010, 2537000, 300, 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.', false, false);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 1200, 45000000, 1400, 'Appearance is similar to an insects antennae.', false, false);
INSERT INTO public.galaxy VALUES (3, 'Bear Paw', 10, 24000000, 393, 'It resembles the appearance of a bears claw.', false, false);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 13280, 17290000, 300, 'Also known as "Sleeping Beauty Galaxy."', false, false);
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', 13310, 11740000, 73, 'Named for Johann Elert Bode who discovered this galaxy in 1774.', false, false);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 94, 60000000, 50, 'Looks are similar to a butterfly.', false, false);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 13610, 26000, 600, 'The term Milky Way is a translation of the Latin via lactea, from the Greek γαλαξίας κύκλος (galaxías kýklos), meaning "milky circle".', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (3, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (4, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (5, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (6, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (7, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (8, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (9, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (10, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (11, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (12, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (13, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (14, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (15, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (16, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (17, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (18, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (19, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.moon VALUES (20, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (11, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);
INSERT INTO public.planet VALUES (12, 'Lorem Ipsum', 0, 0, 0, 'Lorem ipsum.', false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Rigil Kentaurus', 4800, 4, 22, 'Rigil Kentaurus is a main sequence star of the spectral type G2V. It is a Sun-like star that exhibits coronal variability due to star spots coupled with the effect of rotation.', false, true, 7);
INSERT INTO public.star VALUES (3, 'Toliman', 5300, 4, 22, 'Toliman has the stellar classification K1V, indicating a main sequence star appearing orange in colour.', false, true, 7);
INSERT INTO public.star VALUES (4, 'Sirius', 230, 9, 8, 'Sirius is the brightest star in the night sky.', false, true, 7);
INSERT INTO public.star VALUES (5, 'Ran', 600, 10, 15, 'Epsilon Eridani, proper name Ran, is a star in the southern constellation of Eridanus.', false, true, 7);
INSERT INTO public.star VALUES (6, 'Procyon', 1700, 11, 3, 'Procyon is the brightest star in the constellation of Canis Minor and usually the eighth-brightest star in the night sky, with an apparent visual magnitude of 0.34.', false, true, 7);
INSERT INTO public.star VALUES (7, 'Tau Ceti', 9000, 12, 17, 'The star appears stable, with little stellar variation, and is metal-deficient (low in elements other than hydrogen and helium) relative to the Sun.', false, true, 7);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

