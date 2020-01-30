--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-1.pgdg19.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-1.pgdg19.04+1)

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

SET default_with_oids = false;

--
-- Name: produtor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produtor (
    area_reserva bigint,
    area_total bigint,
    area_uso bigint,
    cidade text,
    doc text,
    estado character varying(2),
    id bigint NOT NULL,
    nome text,
    nome_fazenda text,
    produtor_tipo smallint,
    culturas_plantadas text[],
    ativo boolean
);


--
-- Name: produtor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.produtor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: produtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.produtor_id_seq OWNED BY public.produtor.id;


--
-- Name: produtor id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produtor ALTER COLUMN id SET DEFAULT nextval('public.produtor_id_seq'::regclass);


--
-- Data for Name: produtor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.produtor (area_reserva, area_total, area_uso, cidade, doc, estado, id, nome, nome_fazenda, produtor_tipo, culturas_plantadas, ativo) FROM stdin;
20	500	450	Campinas	50783426801	MS	62	Felipe Bonazzi	Felipe Bonazzi	\N	{"Cana de Açucar"}	f
50	500	450	Campinas	50783426801	MG	64	Felipe Bonazzi	Fazenda's Name	\N	{Algodão,Café}	t
150	1500	1000	Campinas	50783426801	MG	65	Felipe Huneke	Huneke's Farm	\N	{Café}	t
100	500	400	Campinas	50783426801	SP	56	Felipe Bonazzi Editar 2	Nome Teste Então	\N	{Milho}	f
100	500	400	Campinas	50783426801	MA	57	Felipe Bonazzi	Fazenda 2	\N	{Café,Algodão}	f
50	500	450	Campinas	50783426801	GO	59	Guilherme	Guilherme's Farm	\N	{Algodão}	f
50	700	460	Campinas	50783426801	MA	61	Felipe Bonazzi Huneke	Felipe Bonazzi	\N	{"Cana de Açucar"}	f
45	500	50	Cidade Nova	50783426801	MT	58	Nome novo	Fazenda Nova	\N	{Algodão,Café}	f
10	500	490	Campinas	50783426801	MS	63	Felipe Bonazzi	Nome Feipe	\N	{"Cana de Açucar"}	f
25	500	450	Orleans	50783426801	MS	60	Felipe Bonazzi	Felipe's Third Farm	\N	{"Cana de Açucar",Café,Milho}	f
\.


--
-- Name: produtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.produtor_id_seq', 65, true);


--
-- Name: produtor produtor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produtor
    ADD CONSTRAINT produtor_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

