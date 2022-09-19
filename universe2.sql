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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    lights_years_away integer,
    shape character varying(50),
    size numeric(4,2)
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
-- Name: galaxy_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_moon (
    galaxy_moon_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.galaxy_moon OWNER TO freecodecamp;

--
-- Name: galaxy_moon_galaxy_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_moon_galaxy_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_moon_galaxy_moon_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_moon_galaxy_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_moon_galaxy_moon_id_seq OWNED BY public.galaxy_moon.galaxy_moon_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surface integer,
    data text,
    is_habited boolean NOT NULL,
    radius numeric(4,2),
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
    radius integer,
    description text,
    has_satellites boolean NOT NULL,
    has_life boolean,
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
    age integer,
    description text,
    lumen integer,
    is_alive boolean NOT NULL,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_moon galaxy_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon ALTER COLUMN galaxy_moon_id SET DEFAULT nextval('public.galaxy_moon_galaxy_moon_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 663, 'Spiral', 12.50);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 15, 1983, 'Spiral', 24.65);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 190, 2003, 'Cigar', 25.98);
INSERT INTO public.galaxy VALUES (4, 'Eye Of Sauron', 666, 8923, 'Eye', 12.90);
INSERT INTO public.galaxy VALUES (5, 'Black Hole', 696, 3473, 'Spherical', 97.87);
INSERT INTO public.galaxy VALUES (6, 'Canis', 98, 1265, 'Spherical', 58.98);


--
-- Data for Name: galaxy_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_moon VALUES (1, 1, 1, 'J');
INSERT INTO public.galaxy_moon VALUES (2, 2, 2, 'O');
INSERT INTO public.galaxy_moon VALUES (3, 3, 3, 'E');
INSERT INTO public.galaxy_moon VALUES (4, 4, 4, 'L');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 5673, 'Nuestra', false, 45.20, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 7859, 'sda', false, 34.50, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 7829, 'safa', false, 12.23, 4);
INSERT INTO public.moon VALUES (4, 'Io', 356, 'asgs', false, 1.67, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 421, 'pafsd', false, 12.30, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 345, 'afawf', false, 98.50, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 278, 'EFGASGHA', false, 12.52, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 678, 'TERAS', false, 25.12, 6);
INSERT INTO public.moon VALUES (9, 'Hiperion', 876, 'QWTfa', false, 8.59, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 178, 'XVKA', false, 1.65, 6);
INSERT INTO public.moon VALUES (11, 'Tita', 1023, 'POGAG', false, 9.65, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1134, 'UGgaas', false, 19.67, 6);
INSERT INTO public.moon VALUES (13, 'Rea', 134, 'Kvavls', false, 29.12, 6);
INSERT INTO public.moon VALUES (14, 'Titan', 135, 'asjfja', false, 45.67, 6);
INSERT INTO public.moon VALUES (15, 'Umbriel', 498, 'Jnscm', false, 8.65, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 1486, 'SJgjc', false, 2.53, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 1985, 'Jansx', false, 65.23, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 585, 'Kasas', false, 9.23, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 658, 'PLlsf', false, 69.33, 8);
INSERT INTO public.moon VALUES (20, 'Ariel', 654, 'Pñasf', false, 8.54, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 425, 'We live here', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 123, 'BBQ by the sun', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 145, 'Also BBQ by the sun', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 374, 'The red planet', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 9352, 'Biggest planet', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 2376, 'Brown', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 1345, 'Blue', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 1456, 'Cold', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 367, 'Cold and Dark', true, false, 1);
INSERT INTO public.planet VALUES (10, 'Super Earth', 997, 'Our next home', true, false, 3);
INSERT INTO public.planet VALUES (11, 'Gas Giant', 9997, 'Deadly gas', false, false, 5);
INSERT INTO public.planet VALUES (12, 'Rocky Giant', 6587, 'Rocky was born here', true, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4569, 'Best star', 37, true, 1);
INSERT INTO public.star VALUES (2, 'HD 7853', 566, 'Doublle Star', 56, true, 2);
INSERT INTO public.star VALUES (3, 'Betelguese', 636, 'Cool name', 86, true, 1);
INSERT INTO public.star VALUES (4, 'Antares', 993, 'The biggest', 16, true, 1);
INSERT INTO public.star VALUES (5, 'Milky us', 612, 'Will kill us', 1, false, 5);
INSERT INTO public.star VALUES (6, 'Vega', 1423, 'Its lyra', 536, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_moon_galaxy_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_moon_galaxy_moon_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy_moon galaxy_moon_galaxy_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_galaxy_moon_id_key UNIQUE (galaxy_moon_id);


--
-- Name: galaxy_moon galaxy_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_pkey PRIMARY KEY (galaxy_moon_id);


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
-- Name: galaxy_moon galaxy_moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_moon galaxy_moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

