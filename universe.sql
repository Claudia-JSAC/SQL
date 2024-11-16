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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text,
    is_visible boolean,
    year_discovered integer,
    distance numeric(10,2),
    number_stars integer,
    description text
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
    name character varying(30) NOT NULL,
    diameter integer,
    is_habitable boolean,
    distance_from_planet numeric(10,2),
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
    name character varying(30) NOT NULL,
    diameter integer,
    is_habitable boolean,
    distance_from_sun numeric(10,2),
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
-- Name: space_mision; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mision (
    space_mision_id integer NOT NULL,
    name character varying(30) NOT NULL,
    crew_size integer,
    is_active boolean,
    mission_duration_days integer
);


ALTER TABLE public.space_mision OWNER TO freecodecamp;

--
-- Name: space_mision_mision_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mision_mision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mision_mision_id_seq OWNER TO freecodecamp;

--
-- Name: space_mision_mision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mision_mision_id_seq OWNED BY public.space_mision.space_mision_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_planet numeric(10,2),
    is_from_constellation integer,
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
-- Name: space_mision space_mision_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mision ALTER COLUMN space_mision_id SET DEFAULT nextval('public.space_mision_mision_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', true, 1610, 0.00, 10000000, 'La galaxia en la que se encuentra el sistema solar. Es una galaxia espiral barrada.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', true, 961, 99.99, 1000000, 'La galaxia más cercana a la Vía Láctea, también espiral y con una posible colisión en el futuro.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', true, 1900, 99.99, 40000, 'Una galaxia espiral relativamente pequeña que es parte del Grupo Local.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', true, 1845, 99.99, 300, 'Conocida por su forma espiral, está situada a unos 23 millones de años luz de la Tierra.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', true, 1781, 99.99, 80000, 'Una galaxia espiral conocida por su forma de sombrero debido a su gran bulbo central.');
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 'Elliptical', true, 1871, 99.99, 1500000, 'Una galaxia elíptica con forma de cigarro ubicada a unos 12 millones de años luz. La forma más elongada de su tipo.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', 3643, false, 421.80, 7);
INSERT INTO public.moon VALUES (2, 'Europa', 3121, false, 670.90, 7);
INSERT INTO public.moon VALUES (3, 'Ganymede', 5268, false, 1070.00, 7);
INSERT INTO public.moon VALUES (4, 'Callisto', 4821, false, 1881.30, 7);
INSERT INTO public.moon VALUES (5, 'Titan', 5150, false, 1225.00, 8);
INSERT INTO public.moon VALUES (6, 'Rhea', 1528, false, 527.00, 8);
INSERT INTO public.moon VALUES (7, 'Enceladus', 504, false, 238.00, 8);
INSERT INTO public.moon VALUES (8, 'Mimas', 396, false, 185.00, 8);
INSERT INTO public.moon VALUES (9, 'Triton', 2706, false, 355.00, 9);
INSERT INTO public.moon VALUES (10, 'Proteus', 418, false, 117.00, 9);
INSERT INTO public.moon VALUES (11, 'Nereid', 340, false, 589.00, 9);
INSERT INTO public.moon VALUES (12, 'Miranda', 471, false, 129.00, 10);
INSERT INTO public.moon VALUES (13, 'Ariel', 1158, false, 191.00, 10);
INSERT INTO public.moon VALUES (14, 'Umbriel', 1170, false, 266.00, 10);
INSERT INTO public.moon VALUES (15, 'Titania', 1577, false, 435.00, 10);
INSERT INTO public.moon VALUES (16, 'Oberon', 1522, false, 587.00, 10);
INSERT INTO public.moon VALUES (17, 'Phoebe', 213, false, 750.00, 11);
INSERT INTO public.moon VALUES (18, 'Hyperion', 270, false, 350.00, 11);
INSERT INTO public.moon VALUES (19, 'Iapetus', 1469, false, 368.00, 12);
INSERT INTO public.moon VALUES (20, 'Pandora', 192, false, 250.00, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'Mercury', 4879, false, 57.91, 6);
INSERT INTO public.planet VALUES (8, 'Venus', 12104, false, 108.20, 7);
INSERT INTO public.planet VALUES (9, 'Earth', 12742, true, 149.60, 8);
INSERT INTO public.planet VALUES (10, 'Mars', 6779, false, 227.90, 9);
INSERT INTO public.planet VALUES (11, 'Jupiter', 139820, false, 778.30, 10);
INSERT INTO public.planet VALUES (12, 'Saturn', 116460, false, 1427.00, 11);
INSERT INTO public.planet VALUES (13, 'Uranus', 50724, false, 2871.00, 6);
INSERT INTO public.planet VALUES (14, 'Neptune', 49244, false, 4495.00, 7);
INSERT INTO public.planet VALUES (15, 'Pluto', 2376, false, 5906.40, 8);
INSERT INTO public.planet VALUES (16, 'Proxima Centauri b', 15000, true, 0.02, 9);
INSERT INTO public.planet VALUES (17, 'Kepler-442b', 12000, true, 1.13, 10);
INSERT INTO public.planet VALUES (18, 'TRAPPIST-1e', 12000, true, 0.06, 11);


--
-- Data for Name: space_mision; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mision VALUES (1, 'Apollo 11', 3, false, 8);
INSERT INTO public.space_mision VALUES (2, 'Apollo 13', 3, false, 6);
INSERT INTO public.space_mision VALUES (3, 'Mars Rover 2020', 0, true, 365);
INSERT INTO public.space_mision VALUES (4, 'Voyager 1', 0, true, 15000);
INSERT INTO public.space_mision VALUES (5, 'New Horizons', 0, true, 2633);
INSERT INTO public.space_mision VALUES (6, 'International Space Station', 6, true, 23000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'Alpha Centauri', 4500, 4.37, 1, 1);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 800, 640.00, 1, 2);
INSERT INTO public.star VALUES (8, 'Sirius', 230, 8.60, 1, 1);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 4500, 4.24, 0, 1);
INSERT INTO public.star VALUES (10, 'Rigel', 100, 860.00, 1, 2);
INSERT INTO public.star VALUES (11, 'Alpha Betelgeuse', 100, 642.50, 1, 2);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: space_mision_mision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mision_mision_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


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
-- Name: space_mision space_mision_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mision
    ADD CONSTRAINT space_mision_name_key UNIQUE (name);


--
-- Name: space_mision space_mision_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mision
    ADD CONSTRAINT space_mision_pkey PRIMARY KEY (space_mision_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: space_mision unique_mission_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mision
    ADD CONSTRAINT unique_mission_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

