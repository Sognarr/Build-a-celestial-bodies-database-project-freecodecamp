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
    shape character varying(30),
    size numeric(7,2)
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
    galaxy_id integer NOT NULL,
    moon_id integer NOT NULL,
    galaxy_moon_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.galaxy_moon OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surface integer NOT NULL,
    data text NOT NULL,
    is_habited boolean,
    radius numeric(5,3),
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
    description text NOT NULL,
    has_satellites boolean,
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
    description text NOT NULL,
    lumen integer,
    is_alive boolean,
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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 663, 'Spiral', 127.89);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 15, 1983, 'Spiral', 3527.89);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 190, 2003, 'Cigar', 9757.64);
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron', 666, 8053, 'Eye', 7449.34);
INSERT INTO public.galaxy VALUES (5, 'Black Hole', 696, 3753, 'Spherical', 9797.98);
INSERT INTO public.galaxy VALUES (6, 'Canis', 98, 1256, 'Spherical', 578.86);


--
-- Data for Name: galaxy_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_moon VALUES (1, 1, 1, 'Joel');
INSERT INTO public.galaxy_moon VALUES (2, 2, 2, 'Agus');
INSERT INTO public.galaxy_moon VALUES (3, 3, 3, 'Marcos');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 5673, 'Nuestra ', false, 54.240, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 7895, 'agasga ', false, 14.240, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 7395, 'agasd ', false, 12.240, 4);
INSERT INTO public.moon VALUES (4, 'Io', 356, 'g4gd', false, 1.670, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 421, 'padfa', false, 1.230, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 345, 'Edfg', false, 98.500, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 278, 'Egdsdfg', false, 12.500, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 678, 'Ehjdfg', false, 2.500, 6);
INSERT INTO public.moon VALUES (9, 'Hiperion', 678, 'Ehjdklfg', false, 8.500, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 178, 'Xklfg', false, 1.650, 6);
INSERT INTO public.moon VALUES (11, 'Tita', 1023, 'Xklñlfg', false, 9.650, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1134, 'Xklñlppfg', false, 9.530, 6);
INSERT INTO public.moon VALUES (13, 'Rea', 134, 'gXklñlppfg', false, 29.530, 6);
INSERT INTO public.moon VALUES (14, 'Titan', 135, 'gXklñlppjfg', false, 45.530, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', 654, 'gXklqwfg', false, 5.530, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 485, 'gXklhdqwfg', false, 8.530, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 1485, 'gXklhdqwfg', false, 2.530, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 1685, 'gXklhdqwfug', false, 6.330, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', 585, 'Gdqwfug', false, 9.230, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 585, 'Gdqwfug', false, 69.230, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 425, 'We live here', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 123, 'BBQ by the Sun', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 123, 'Also BBQ by the Sun', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 373, 'The red planet', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 92373, 'Biggest planet', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 2373, 'Brown', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 1354, 'Blue', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 1354, 'Cold', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 367, 'Cold and lonely', true, false, 1);
INSERT INTO public.planet VALUES (10, 'Super Earth', 977, 'Maybe we could live here', true, false, 3);
INSERT INTO public.planet VALUES (11, 'Gas Giant', 9977, 'Deadly gas', false, false, 5);
INSERT INTO public.planet VALUES (12, 'Rocky Giant', 6587, 'Rocky was born here', true, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4569, 'Best star in universe', 456, true, 1);
INSERT INTO public.star VALUES (2, 'HD 7853', 5668, 'Double star', 56, true, 2);
INSERT INTO public.star VALUES (3, 'Betelguese', 638, 'Cool name', 86, true, 1);
INSERT INTO public.star VALUES (4, 'Antares', 933, 'The biggest', 16, true, 1);
INSERT INTO public.star VALUES (5, 'Milky us', 612, 'Will kill us', 1, false, 5);
INSERT INTO public.star VALUES (6, 'Vega', 1423, 'Its lyra', 536, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: galaxy_moon galaxy_moon_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy_moon galaxy_moon_galaxy_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_galaxy_moon_id_key UNIQUE (galaxy_moon_id);


--
-- Name: galaxy_moon galaxy_moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_moon_id_key UNIQUE (moon_id);


--
-- Name: galaxy_moon galaxy_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_pkey PRIMARY KEY (galaxy_moon_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_radius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_radius_key UNIQUE (radius);


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
-- Name: star star_lumen_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_lumen_key UNIQUE (lumen);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

