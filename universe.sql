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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_sun numeric(5,2),
    date_discovered date
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    mass numeric(5,2),
    radius integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    description text NOT NULL,
    has_life boolean,
    orbit_distance integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    type character varying(5),
    distance_from_sun numeric(4,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Aret-Roland', 47.00, '1957-04-08');
INSERT INTO public.comet VALUES (2, 'Bielas comet', 6.75, '1772-07-05');
INSERT INTO public.comet VALUES (3, 'Chiron', 50.45, '1977-01-06');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14, 133.00, 20);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 7, 53.00, 15);
INSERT INTO public.galaxy VALUES (3, 'Circinus', 12, 443.00, 23);
INSERT INTO public.galaxy VALUES (4, 'Needle', 13, 50.00, 60);
INSERT INTO public.galaxy VALUES (5, 'Sculptor Galaxy', 2, 33.00, 10);
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', 16, 145.00, 50);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 'Natural satellite of Earth', true, 234000);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'Discovered in 1877', false, 290000);
INSERT INTO public.moon VALUES (3, 'Europa', 6, 'Discovered 1610', false, 657000);
INSERT INTO public.moon VALUES (4, 'Elara', 6, '1905', false, 564333);
INSERT INTO public.moon VALUES (5, 'Titan', 7, '1655', false, 345222);
INSERT INTO public.moon VALUES (6, 'Rhea', 7, '1672', false, 294550);
INSERT INTO public.moon VALUES (7, 'Phoebe', 7, '1899', false, 342000);
INSERT INTO public.moon VALUES (8, 'Oberon', 8, '1787', false, 239000);
INSERT INTO public.moon VALUES (9, 'Brianca', 8, '1986', false, 456000);
INSERT INTO public.moon VALUES (10, 'Juliet', 8, '1986', false, 342000);
INSERT INTO public.moon VALUES (11, 'Sao', 9, '2002', false, 239880);
INSERT INTO public.moon VALUES (12, 'Hippocamp', 9, '2013', false, 398000);
INSERT INTO public.moon VALUES (13, 'Charon', 10, '1978', false, 239000);
INSERT INTO public.moon VALUES (14, 'Nix', 10, '2005', false, 248900);
INSERT INTO public.moon VALUES (15, 'Ilmare', 11, '2009', false, 653000);
INSERT INTO public.moon VALUES (16, 'Cupid', 9, '2003', false, 329800);
INSERT INTO public.moon VALUES (17, 'Hati', 7, '2004', false, 639000);
INSERT INTO public.moon VALUES (18, 'Dia', 7, '2000', false, 342900);
INSERT INTO public.moon VALUES (19, 'Eirene', 8, '2000', false, 239000);
INSERT INTO public.moon VALUES (20, 'Deimos', 4, '1877', false, 670900);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, true, 'Closest planet to sun');
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 'Hottest planet of the solar system');
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 'Biggest terrestial planet');
INSERT INTO public.planet VALUES (4, 'Mars', 2, false, 'Redplanet and Brother of earth');
INSERT INTO public.planet VALUES (5, 'Phaeton', 4, false, 'Asteroid belt');
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, false, 'Largest planet');
INSERT INTO public.planet VALUES (7, 'Saturn', 1, false, 'Giant ring around it');
INSERT INTO public.planet VALUES (8, 'Uranus', 4, false, 'It has 11 rings around it');
INSERT INTO public.planet VALUES (9, 'Neptune', 6, false, 'Farthest planet from sun');
INSERT INTO public.planet VALUES (10, 'Pluto', 3, false, 'Smallest planet');
INSERT INTO public.planet VALUES (11, 'Theia', 1, false, 'Hypothetical planet which created the moon');
INSERT INTO public.planet VALUES (12, 'Planet_Nine', 1, false, 'Hypothetical planet beyond Neptune');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 'ga', 0.0);
INSERT INTO public.star VALUES (2, 'Antlia', 4, 'A', 50.5);
INSERT INTO public.star VALUES (3, 'Aries', 2, 'G', 600.4);
INSERT INTO public.star VALUES (4, 'Caelum', 3, 'F', 78.1);
INSERT INTO public.star VALUES (5, 'Eridanus', 6, 'S', 342.9);
INSERT INTO public.star VALUES (6, 'Hercules', 4, 'U', 655.0);


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

