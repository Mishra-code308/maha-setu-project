--
-- PostgreSQL database dump
--

\restrict DYJZWTbuObaT4cwUZKD2vOmuXNin4PXYTlWTzLHZZUK5iw3sVd3tTXsiCGt1o5a

-- Dumped from database version 16.12
-- Dumped by pg_dump version 16.12

-- Started on 2026-02-22 19:39:00

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
-- TOC entry 218 (class 1259 OID 16450)
-- Name: citizens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.citizens (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    password character varying(100)
);


ALTER TABLE public.citizens OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16449)
-- Name: citizens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.citizens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.citizens_id_seq OWNER TO postgres;

--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 217
-- Name: citizens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.citizens_id_seq OWNED BY public.citizens.id;


--
-- TOC entry 220 (class 1259 OID 16480)
-- Name: creatures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.creatures (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    password character varying(100)
);


ALTER TABLE public.creatures OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16479)
-- Name: creatures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.creatures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.creatures_id_seq OWNER TO postgres;

--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 219
-- Name: creatures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.creatures_id_seq OWNED BY public.creatures.id;


--
-- TOC entry 216 (class 1259 OID 16426)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    password character varying(100)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16425)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4699 (class 2604 OID 16453)
-- Name: citizens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.citizens ALTER COLUMN id SET DEFAULT nextval('public.citizens_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16483)
-- Name: creatures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creatures ALTER COLUMN id SET DEFAULT nextval('public.creatures_id_seq'::regclass);


--
-- TOC entry 4698 (class 2604 OID 16429)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4853 (class 0 OID 16450)
-- Dependencies: 218
-- Data for Name: citizens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.citizens (id, name, email, password) FROM stdin;
\.


--
-- TOC entry 4855 (class 0 OID 16480)
-- Dependencies: 220
-- Data for Name: creatures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.creatures (id, name, email, password) FROM stdin;
1	User1	user1@gmail.com	pass123
2	User2	user2@gmail.com	pass123
3	User3	user3@gmail.com	pass123
4	User4	user4@gmail.com	pass123
5	User5	user5@gmail.com	pass123
6	User6	user6@gmail.com	pass123
7	User7	user7@gmail.com	pass123
8	User8	user8@gmail.com	pass123
9	User9	user9@gmail.com	pass123
10	User10	user10@gmail.com	pass123
11	User11	user11@gmail.com	pass123
12	User12	user12@gmail.com	pass123
13	User13	user13@gmail.com	pass123
14	User14	user14@gmail.com	pass123
15	User15	user15@gmail.com	pass123
16	User16	user16@gmail.com	pass123
17	User17	user17@gmail.com	pass123
18	User18	user18@gmail.com	pass123
19	User19	user19@gmail.com	pass123
20	User20	user20@gmail.com	pass123
\.


--
-- TOC entry 4851 (class 0 OID 16426)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
\.


--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: citizens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.citizens_id_seq', 1, false);


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: creatures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.creatures_id_seq', 20, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 4704 (class 2606 OID 16455)
-- Name: citizens citizens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.citizens
    ADD CONSTRAINT citizens_pkey PRIMARY KEY (id);


--
-- TOC entry 4706 (class 2606 OID 16485)
-- Name: creatures creatures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creatures
    ADD CONSTRAINT creatures_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 16431)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2026-02-22 19:39:00

--
-- PostgreSQL database dump complete
--

\unrestrict DYJZWTbuObaT4cwUZKD2vOmuXNin4PXYTlWTzLHZZUK5iw3sVd3tTXsiCGt1o5a

