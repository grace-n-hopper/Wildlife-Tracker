--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: animals; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE animals (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE animals OWNER TO "Grace";

--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE animals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE animals_id_seq OWNER TO "Grace";

--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE animals_id_seq OWNED BY animals.id;


--
-- Name: conservation_statuses; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE conservation_statuses (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE conservation_statuses OWNER TO "Grace";

--
-- Name: conservation_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE conservation_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conservation_statuses_id_seq OWNER TO "Grace";

--
-- Name: conservation_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE conservation_statuses_id_seq OWNED BY conservation_statuses.id;


--
-- Name: endangered_animals; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE endangered_animals (
    id integer NOT NULL,
    name character varying,
    health character varying,
    age character varying
);


ALTER TABLE endangered_animals OWNER TO "Grace";

--
-- Name: endangered_animals_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE endangered_animals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE endangered_animals_id_seq OWNER TO "Grace";

--
-- Name: endangered_animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE endangered_animals_id_seq OWNED BY endangered_animals.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE locations (
    id integer NOT NULL,
    name character varying,
    area character varying
);


ALTER TABLE locations OWNER TO "Grace";

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE locations_id_seq OWNER TO "Grace";

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE locations_id_seq OWNED BY locations.id;


--
-- Name: rangers; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE rangers (
    id integer NOT NULL,
    name character varying,
    badge character varying
);


ALTER TABLE rangers OWNER TO "Grace";

--
-- Name: rangers_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE rangers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rangers_id_seq OWNER TO "Grace";

--
-- Name: rangers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE rangers_id_seq OWNED BY rangers.id;


--
-- Name: scientific_classes; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE scientific_classes (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE scientific_classes OWNER TO "Grace";

--
-- Name: scientific_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE scientific_classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE scientific_classes_id_seq OWNER TO "Grace";

--
-- Name: scientific_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE scientific_classes_id_seq OWNED BY scientific_classes.id;


--
-- Name: sightings; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE sightings (
    id integer NOT NULL,
    animal_id integer,
    location character varying,
    ranger_name character varying,
    date timestamp without time zone
);


ALTER TABLE sightings OWNER TO "Grace";

--
-- Name: sightings_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE sightings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sightings_id_seq OWNER TO "Grace";

--
-- Name: sightings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE sightings_id_seq OWNED BY sightings.id;


--
-- Name: stations; Type: TABLE; Schema: public; Owner: Grace
--

CREATE TABLE stations (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE stations OWNER TO "Grace";

--
-- Name: stations_id_seq; Type: SEQUENCE; Schema: public; Owner: Grace
--

CREATE SEQUENCE stations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stations_id_seq OWNER TO "Grace";

--
-- Name: stations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grace
--

ALTER SEQUENCE stations_id_seq OWNED BY stations.id;


--
-- Name: animals id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY animals ALTER COLUMN id SET DEFAULT nextval('animals_id_seq'::regclass);


--
-- Name: conservation_statuses id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY conservation_statuses ALTER COLUMN id SET DEFAULT nextval('conservation_statuses_id_seq'::regclass);


--
-- Name: endangered_animals id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY endangered_animals ALTER COLUMN id SET DEFAULT nextval('endangered_animals_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY locations ALTER COLUMN id SET DEFAULT nextval('locations_id_seq'::regclass);


--
-- Name: rangers id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY rangers ALTER COLUMN id SET DEFAULT nextval('rangers_id_seq'::regclass);


--
-- Name: scientific_classes id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY scientific_classes ALTER COLUMN id SET DEFAULT nextval('scientific_classes_id_seq'::regclass);


--
-- Name: sightings id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY sightings ALTER COLUMN id SET DEFAULT nextval('sightings_id_seq'::regclass);


--
-- Name: stations id; Type: DEFAULT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY stations ALTER COLUMN id SET DEFAULT nextval('stations_id_seq'::regclass);


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY animals (id, name) FROM stdin;
5	Deer
\.


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('animals_id_seq', 5, true);


--
-- Data for Name: conservation_statuses; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY conservation_statuses (id, name) FROM stdin;
\.


--
-- Name: conservation_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('conservation_statuses_id_seq', 1, false);


--
-- Data for Name: endangered_animals; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY endangered_animals (id, name, health, age) FROM stdin;
\.


--
-- Name: endangered_animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('endangered_animals_id_seq', 3, true);


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY locations (id, name, area) FROM stdin;
\.


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('locations_id_seq', 1, false);


--
-- Data for Name: rangers; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY rangers (id, name, badge) FROM stdin;
1	Ray	\N
\.


--
-- Name: rangers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('rangers_id_seq', 1, true);


--
-- Data for Name: scientific_classes; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY scientific_classes (id, name) FROM stdin;
\.


--
-- Name: scientific_classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('scientific_classes_id_seq', 1, false);


--
-- Data for Name: sightings; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY sightings (id, animal_id, location, ranger_name, date) FROM stdin;
\.


--
-- Name: sightings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('sightings_id_seq', 4, true);


--
-- Data for Name: stations; Type: TABLE DATA; Schema: public; Owner: Grace
--

COPY stations (id, name) FROM stdin;
\.


--
-- Name: stations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grace
--

SELECT pg_catalog.setval('stations_id_seq', 1, false);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: conservation_statuses conservation_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY conservation_statuses
    ADD CONSTRAINT conservation_statuses_pkey PRIMARY KEY (id);


--
-- Name: endangered_animals endangered_animals_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY endangered_animals
    ADD CONSTRAINT endangered_animals_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: rangers rangers_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY rangers
    ADD CONSTRAINT rangers_pkey PRIMARY KEY (id);


--
-- Name: scientific_classes scientific_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY scientific_classes
    ADD CONSTRAINT scientific_classes_pkey PRIMARY KEY (id);


--
-- Name: sightings sightings_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY sightings
    ADD CONSTRAINT sightings_pkey PRIMARY KEY (id);


--
-- Name: stations stations_pkey; Type: CONSTRAINT; Schema: public; Owner: Grace
--

ALTER TABLE ONLY stations
    ADD CONSTRAINT stations_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

