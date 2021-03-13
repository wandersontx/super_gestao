--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-1.pgdg20.04+1)

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
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO wanderson;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO wanderson;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: filiais; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.filiais (
    id bigint NOT NULL,
    nome character varying(30) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.filiais OWNER TO wanderson;

--
-- Name: filiais_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.filiais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filiais_id_seq OWNER TO wanderson;

--
-- Name: filiais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.filiais_id_seq OWNED BY public.filiais.id;


--
-- Name: fornecedores; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.fornecedores (
    id bigint NOT NULL,
    nome character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    uf character varying(2) NOT NULL,
    email character varying(150) NOT NULL,
    site character varying(150) NOT NULL,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.fornecedores OWNER TO wanderson;

--
-- Name: fornecedores_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.fornecedores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fornecedores_id_seq OWNER TO wanderson;

--
-- Name: fornecedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.fornecedores_id_seq OWNED BY public.fornecedores.id;


--
-- Name: log_acessos; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.log_acessos (
    id bigint NOT NULL,
    log character varying(200) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.log_acessos OWNER TO wanderson;

--
-- Name: log_acessos_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.log_acessos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_acessos_id_seq OWNER TO wanderson;

--
-- Name: log_acessos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.log_acessos_id_seq OWNED BY public.log_acessos.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO wanderson;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO wanderson;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: motivo_contatos; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.motivo_contatos (
    id bigint NOT NULL,
    motivo_contato character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.motivo_contatos OWNER TO wanderson;

--
-- Name: motivo_contatos_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.motivo_contatos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.motivo_contatos_id_seq OWNER TO wanderson;

--
-- Name: motivo_contatos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.motivo_contatos_id_seq OWNED BY public.motivo_contatos.id;


--
-- Name: produto_detalhes; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.produto_detalhes (
    id bigint NOT NULL,
    produto_id bigint NOT NULL,
    comprimento double precision NOT NULL,
    largura double precision NOT NULL,
    altura double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    unidade_id bigint NOT NULL
);


ALTER TABLE public.produto_detalhes OWNER TO wanderson;

--
-- Name: produto_detalhes_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.produto_detalhes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_detalhes_id_seq OWNER TO wanderson;

--
-- Name: produto_detalhes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.produto_detalhes_id_seq OWNED BY public.produto_detalhes.id;


--
-- Name: produto_filiais; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.produto_filiais (
    id bigint NOT NULL,
    filial_id bigint NOT NULL,
    produto_id bigint NOT NULL,
    preco_venda double precision NOT NULL,
    estoque_minimo integer NOT NULL,
    estoque_maximo integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.produto_filiais OWNER TO wanderson;

--
-- Name: produto_filiais_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.produto_filiais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_filiais_id_seq OWNER TO wanderson;

--
-- Name: produto_filiais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.produto_filiais_id_seq OWNED BY public.produto_filiais.id;


--
-- Name: produtos; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.produtos (
    id bigint NOT NULL,
    nome character varying(100) NOT NULL,
    descricao text,
    peso integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    unidade_id bigint NOT NULL
);


ALTER TABLE public.produtos OWNER TO wanderson;

--
-- Name: produtos_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.produtos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produtos_id_seq OWNER TO wanderson;

--
-- Name: produtos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;


--
-- Name: site_contatos; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.site_contatos (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    nome character varying(50) NOT NULL,
    telefone character varying(20) NOT NULL,
    email character varying(80) NOT NULL,
    mensagem text NOT NULL,
    motivo_contatos_id bigint
);


ALTER TABLE public.site_contatos OWNER TO wanderson;

--
-- Name: site_contatos_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.site_contatos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_contatos_id_seq OWNER TO wanderson;

--
-- Name: site_contatos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.site_contatos_id_seq OWNED BY public.site_contatos.id;


--
-- Name: unidades; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.unidades (
    id bigint NOT NULL,
    unidade character varying(5) NOT NULL,
    descricao character varying(30) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.unidades OWNER TO wanderson;

--
-- Name: unidades_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.unidades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidades_id_seq OWNER TO wanderson;

--
-- Name: unidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.unidades_id_seq OWNED BY public.unidades.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: wanderson
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO wanderson;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: wanderson
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO wanderson;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wanderson
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: filiais id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.filiais ALTER COLUMN id SET DEFAULT nextval('public.filiais_id_seq'::regclass);


--
-- Name: fornecedores id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.fornecedores ALTER COLUMN id SET DEFAULT nextval('public.fornecedores_id_seq'::regclass);


--
-- Name: log_acessos id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.log_acessos ALTER COLUMN id SET DEFAULT nextval('public.log_acessos_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: motivo_contatos id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.motivo_contatos ALTER COLUMN id SET DEFAULT nextval('public.motivo_contatos_id_seq'::regclass);


--
-- Name: produto_detalhes id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_detalhes ALTER COLUMN id SET DEFAULT nextval('public.produto_detalhes_id_seq'::regclass);


--
-- Name: produto_filiais id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_filiais ALTER COLUMN id SET DEFAULT nextval('public.produto_filiais_id_seq'::regclass);


--
-- Name: produtos id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);


--
-- Name: site_contatos id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.site_contatos ALTER COLUMN id SET DEFAULT nextval('public.site_contatos_id_seq'::regclass);


--
-- Name: unidades id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.unidades ALTER COLUMN id SET DEFAULT nextval('public.unidades_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: filiais; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.filiais (id, nome, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.fornecedores (id, nome, created_at, updated_at, uf, email, site, deleted_at) FROM stdin;
1	Hamill-Jast	2021-03-01 22:58:08	2021-03-01 22:58:08	OK	elvis01@fahey.com	example.org	\N
2	Ebert PLC	2021-03-01 22:58:08	2021-03-01 22:58:08	ME	mauricio57@windler.com	example.org	\N
3	Lakin, Rowe and Rosenbaum	2021-03-01 22:58:08	2021-03-01 22:58:08	CO	lyda.lindgren@gmail.com	example.com	\N
4	Cronin LLC	2021-03-01 22:58:08	2021-03-01 22:58:08	MN	alivia.connelly@yahoo.com	example.net	\N
5	Hills, Pollich and Gleason	2021-03-01 22:58:08	2021-03-01 22:58:08	GA	isac47@stroman.com	example.org	\N
6	Zboncak-Parisian	2021-03-01 22:58:08	2021-03-01 22:58:08	AL	hilpert.isom@gmail.com	example.net	\N
7	Marvin, Schowalter and Deckow	2021-03-01 22:58:08	2021-03-01 22:58:08	UT	caterina.murray@gmail.com	example.net	\N
8	Dickinson, Mann and Langosh	2021-03-01 22:58:08	2021-03-01 22:58:08	AZ	porn@romaguera.com	example.org	\N
9	Jenkins Inc	2021-03-01 22:58:08	2021-03-01 22:58:08	DE	bvonrueden@gmail.com	example.org	\N
10	Abshire PLC	2021-03-01 22:58:08	2021-03-01 22:58:08	RI	kutch.mario@hansen.com	example.com	\N
11	Hansen-Balistreri	2021-03-01 22:58:08	2021-03-01 22:58:08	VA	spencer.barrett@hotmail.com	example.org	\N
12	Reilly, Schoen and Smitham	2021-03-01 22:58:08	2021-03-01 22:58:08	NJ	amitchell@torphy.com	example.com	\N
13	Sipes, Rosenbaum and Klein	2021-03-01 22:58:08	2021-03-01 22:58:08	NM	cschultz@gottlieb.com	example.com	\N
14	Cruickshank Ltd	2021-03-01 22:58:08	2021-03-01 22:58:08	OR	sarina83@aufderhar.net	example.org	\N
15	Zemlak, Fay and Oberbrunner	2021-03-01 22:58:08	2021-03-01 22:58:08	MD	rblanda@johnston.com	example.org	\N
16	Kautzer Ltd	2021-03-01 22:58:08	2021-03-01 22:58:08	TN	johnston.deondre@runolfsdottir.org	example.com	\N
17	Gerhold, Bernhard and Zemlak	2021-03-01 22:58:08	2021-03-01 22:58:08	VA	boyer.marielle@gmail.com	example.net	\N
18	Schinner and Sons	2021-03-01 22:58:08	2021-03-01 22:58:08	IA	courtney.streich@gmail.com	example.net	\N
19	Baumbach, Runte and Hammes	2021-03-01 22:58:08	2021-03-01 22:58:08	ME	sebastian98@yahoo.com	example.org	\N
20	Haag LLC	2021-03-01 22:58:08	2021-03-01 22:58:08	AZ	daryl.deckow@brakus.com	example.org	\N
21	Runolfsdottir-Hettinger	2021-03-01 22:58:08	2021-03-01 22:58:08	ME	murphy.peggie@gmail.com	example.org	\N
22	Mraz, Torp and Quigley	2021-03-01 22:58:08	2021-03-01 22:58:08	FL	watson65@leannon.info	example.org	\N
23	Graham and Sons	2021-03-01 22:58:08	2021-03-01 22:58:08	TN	smayert@yahoo.com	example.org	\N
24	Labadie-Smitham	2021-03-01 22:58:08	2021-03-01 22:58:08	PA	joelle20@farrell.com	example.org	\N
25	Stoltenberg, Spinka and Ullrich	2021-03-01 22:58:08	2021-03-01 22:58:08	ID	ohermiston@barrows.com	example.net	\N
26	Bayer LLC	2021-03-01 22:58:08	2021-03-01 22:58:08	MS	audreanne.kerluke@klein.com	example.com	\N
27	Johnston LLC	2021-03-01 22:58:08	2021-03-01 22:58:08	LA	camylle37@raynor.com	example.com	\N
28	McClure and Sons	2021-03-01 22:58:08	2021-03-01 22:58:08	NJ	brannon36@walker.com	example.org	\N
29	Goodwin Group	2021-03-01 22:58:08	2021-03-01 22:58:08	NC	prosacco.albin@hamill.org	example.org	\N
30	Hintz-Wilkinson	2021-03-01 22:58:08	2021-03-01 22:58:08	WA	kub.reynold@hotmail.com	example.org	\N
31	Bergstrom-Klocko	2021-03-01 22:58:08	2021-03-01 22:58:08	SD	camille.gislason@gmail.com	example.org	\N
32	Reichert-Kilback	2021-03-01 22:58:08	2021-03-01 22:58:08	WY	veronica77@gmail.com	example.com	\N
33	Lehner, Connelly and Reichert	2021-03-01 22:58:08	2021-03-01 22:58:08	MO	wilkinson.efren@yahoo.com	example.net	\N
34	Boyle-McGlynn	2021-03-01 22:58:08	2021-03-01 22:58:08	PA	rafaela82@yahoo.com	example.net	\N
35	Bruen-Hyatt	2021-03-01 22:58:08	2021-03-01 22:58:08	NV	creichert@hotmail.com	example.org	\N
36	Padberg-Durgan	2021-03-01 22:58:08	2021-03-01 22:58:08	NE	fmonahan@gmail.com	example.org	\N
37	Ward-Pfeffer	2021-03-01 22:58:08	2021-03-01 22:58:08	KS	nfeest@hotmail.com	example.net	\N
38	Pacocha Inc	2021-03-01 22:58:08	2021-03-01 22:58:08	WY	iwilliamson@gmail.com	example.com	\N
39	Cummings Ltd	2021-03-01 22:58:08	2021-03-01 22:58:08	MS	bartoletti.kristopher@brakus.com	example.org	\N
40	Lindgren, Glover and Koch	2021-03-01 22:58:08	2021-03-01 22:58:08	IN	magdalena.reilly@sauer.biz	example.com	\N
41	Mohr-Harris	2021-03-01 22:58:08	2021-03-01 22:58:08	ME	evans.parisian@gmail.com	example.net	\N
42	Blick-Labadie	2021-03-01 22:58:08	2021-03-01 22:58:08	NV	dcollins@hotmail.com	example.org	\N
43	Jones Group	2021-03-01 22:58:08	2021-03-01 22:58:08	MD	ihoppe@wuckert.com	example.org	\N
44	Mitchell-Schmeler	2021-03-01 22:58:08	2021-03-01 22:58:08	VT	mayer.bettye@gmail.com	example.org	\N
45	Bahringer, Gerhold and Dickens	2021-03-01 22:58:08	2021-03-01 22:58:08	CO	pablo.hessel@oreilly.net	example.org	\N
46	Green, Runolfsson and Koch	2021-03-01 22:58:08	2021-03-01 22:58:08	SD	ankunding.logan@yahoo.com	example.com	\N
47	Rath, Sipes and Moore	2021-03-01 22:58:08	2021-03-01 22:58:08	PA	swalker@bode.com	example.com	\N
48	Daugherty-Wilkinson	2021-03-01 22:58:08	2021-03-01 22:58:08	CT	santina.bechtelar@hickle.net	example.com	\N
49	Nolan, Bosco and Haag	2021-03-01 22:58:08	2021-03-01 22:58:08	MT	fritsch.emma@raynor.net	example.com	\N
50	Metz, Goldner and McCullough	2021-03-01 22:58:08	2021-03-01 22:58:08	MA	ograham@yahoo.com	example.com	\N
51	Crooks LLC	2021-03-01 22:58:08	2021-03-01 22:58:08	ME	leora65@kuhn.com	example.net	\N
52	Tremblay, Beatty and Rempel	2021-03-01 22:58:08	2021-03-01 22:58:08	IA	rsatterfield@kiehn.net	example.org	\N
53	Spinka-Trantow	2021-03-01 22:58:08	2021-03-01 22:58:08	MD	lily20@lebsack.com	example.com	\N
54	Waelchi Inc	2021-03-01 22:58:08	2021-03-01 22:58:08	UT	jamar47@gmail.com	example.net	\N
55	Champlin PLC	2021-03-01 22:58:08	2021-03-01 22:58:08	NC	mosciski.deangelo@kihn.com	example.net	\N
56	Stark-Smith	2021-03-01 22:58:08	2021-03-01 22:58:08	WV	william05@goyette.net	example.org	\N
57	Huel, Hilpert and Weissnat	2021-03-01 22:58:08	2021-03-01 22:58:08	MI	sgoldner@yahoo.com	example.com	\N
58	Boehm-Friesen	2021-03-01 22:58:08	2021-03-01 22:58:08	CT	beier.kameron@hotmail.com	example.net	\N
59	Lakin-Pouros	2021-03-01 22:58:08	2021-03-01 22:58:08	UT	rshanahan@braun.com	example.com	\N
60	Wolf-Glover	2021-03-01 22:58:08	2021-03-01 22:58:08	AZ	ngrimes@auer.biz	example.org	\N
61	Beahan-Rau	2021-03-01 22:58:08	2021-03-01 22:58:08	IL	arolfson@wyman.com	example.org	\N
62	Beahan, Boyer and Reinger	2021-03-01 22:58:08	2021-03-01 22:58:08	CA	ima64@yahoo.com	example.org	\N
63	Wisozk-Gorczany	2021-03-01 22:58:08	2021-03-01 22:58:08	TX	auer.wyatt@gmail.com	example.net	\N
64	Metz LLC	2021-03-01 22:58:08	2021-03-01 22:58:08	OK	gschinner@franecki.net	example.org	\N
65	Greenfelder, Funk and Cormier	2021-03-01 22:58:09	2021-03-01 22:58:09	MO	mckenzie.asa@yahoo.com	example.net	\N
66	Hintz, Schamberger and Stoltenberg	2021-03-01 22:58:09	2021-03-01 22:58:09	WA	adaline20@yahoo.com	example.org	\N
67	Hirthe Inc	2021-03-01 22:58:09	2021-03-01 22:58:09	VA	hyman65@hotmail.com	example.org	\N
68	Wunsch, Conroy and Konopelski	2021-03-01 22:58:09	2021-03-01 22:58:09	MO	vwaelchi@yahoo.com	example.net	\N
69	Kiehn Ltd	2021-03-01 22:58:09	2021-03-01 22:58:09	IA	nwilkinson@hotmail.com	example.net	\N
70	Boyer and Sons	2021-03-01 22:58:09	2021-03-01 22:58:09	NC	nhomenick@johnson.net	example.org	\N
71	Wuckert, Labadie and Gislason	2021-03-01 22:58:09	2021-03-01 22:58:09	UT	chesley.okon@hotmail.com	example.net	\N
72	Abbott-Marks	2021-03-01 22:58:09	2021-03-01 22:58:09	OH	zgerhold@labadie.info	example.net	\N
73	Pouros-Windler	2021-03-01 22:58:09	2021-03-01 22:58:09	TX	dlesch@kovacek.info	example.org	\N
74	Jones, Denesik and Fahey	2021-03-01 22:58:09	2021-03-01 22:58:09	AZ	fay.larue@hotmail.com	example.org	\N
75	Larkin Inc	2021-03-01 22:58:09	2021-03-01 22:58:09	GA	xbeier@yahoo.com	example.com	\N
76	Gerlach-Cummerata	2021-03-01 22:58:09	2021-03-01 22:58:09	MO	leda53@schaden.com	example.com	\N
77	Funk-Reichel	2021-03-01 22:58:09	2021-03-01 22:58:09	KY	dennis64@yahoo.com	example.com	\N
78	Zemlak Inc	2021-03-01 22:58:09	2021-03-01 22:58:09	ID	fmurray@yost.com	example.net	\N
79	Fadel-Purdy	2021-03-01 22:58:09	2021-03-01 22:58:09	GA	kutch.abner@gmail.com	example.net	\N
80	Barton-Streich	2021-03-01 22:58:09	2021-03-01 22:58:09	NC	perry01@hotmail.com	example.org	\N
81	Hudson PLC	2021-03-01 22:58:09	2021-03-01 22:58:09	NV	ana18@beahan.com	example.net	\N
82	Conn, Gerlach and Moen	2021-03-01 22:58:09	2021-03-01 22:58:09	NM	freida.schaden@bode.biz	example.org	\N
83	Kris, Runolfsdottir and Feil	2021-03-01 22:58:09	2021-03-01 22:58:09	AL	jeanie56@hotmail.com	example.com	\N
84	Dicki-Baumbach	2021-03-01 22:58:09	2021-03-01 22:58:09	UT	kenyon39@hotmail.com	example.org	\N
85	Robel, Beer and Gulgowski	2021-03-01 22:58:09	2021-03-01 22:58:09	MS	jessie23@yahoo.com	example.org	\N
86	Stamm-Kris	2021-03-01 22:58:09	2021-03-01 22:58:09	PA	kaycee61@goldner.net	example.org	\N
87	McLaughlin, Mertz and Price	2021-03-01 22:58:09	2021-03-01 22:58:09	RI	ewald.sawayn@gmail.com	example.org	\N
88	Hill Group	2021-03-01 22:58:09	2021-03-01 22:58:09	WY	emerson.oconner@metz.info	example.org	\N
89	Carter, Mann and Eichmann	2021-03-01 22:58:09	2021-03-01 22:58:09	NV	gutkowski.coralie@yahoo.com	example.net	\N
90	Cummings Inc	2021-03-01 22:58:09	2021-03-01 22:58:09	NJ	hayden42@strosin.com	example.org	\N
91	O'Kon Inc	2021-03-01 22:58:09	2021-03-01 22:58:09	NY	nellie.schumm@mante.com	example.org	\N
92	Bernier-Ebert	2021-03-01 22:58:09	2021-03-01 22:58:09	VA	ayana23@gusikowski.com	example.com	\N
93	Gleason Group	2021-03-01 22:58:09	2021-03-01 22:58:09	AL	shana44@will.com	example.com	\N
94	Satterfield-Grimes	2021-03-01 22:58:09	2021-03-01 22:58:09	LA	major.koss@vonrueden.info	example.net	\N
95	Yost-Effertz	2021-03-01 22:58:09	2021-03-01 22:58:09	SC	hailey.abernathy@littel.biz	example.net	\N
96	Block, Dicki and Daniel	2021-03-01 22:58:09	2021-03-01 22:58:09	SD	ana.willms@gmail.com	example.com	\N
97	Collier-Frami	2021-03-01 22:58:09	2021-03-01 22:58:09	NY	mcclure.deshawn@schimmel.info	example.com	\N
98	Marks LLC	2021-03-01 22:58:09	2021-03-01 22:58:09	KY	pebert@howe.com	example.org	\N
99	Kilback, Lubowitz and Barton	2021-03-01 22:58:09	2021-03-01 22:58:09	NH	cathryn.lemke@hotmail.com	example.org	\N
100	Haag, Marks and Goyette	2021-03-01 22:58:09	2021-03-01 22:58:09	UT	ned46@hand.org	example.com	\N
101	Blick, Green and Runolfsson	2021-03-01 23:15:44	2021-03-01 23:15:44	OH	juliet27@wiza.net	example.com	\N
102	Barton, Johnson and Haley	2021-03-01 23:15:44	2021-03-01 23:15:44	NM	donato29@lemke.com	example.org	\N
103	Zemlak-Becker	2021-03-01 23:15:44	2021-03-01 23:15:44	AZ	okeefe.arvel@daugherty.org	example.com	\N
104	Will-Wolf	2021-03-01 23:15:44	2021-03-01 23:15:44	SC	orville30@tromp.com	example.org	\N
105	Kub LLC	2021-03-01 23:15:44	2021-03-01 23:15:44	NM	gerda71@yahoo.com	example.com	\N
106	DuBuque-Schulist	2021-03-01 23:15:44	2021-03-01 23:15:44	ND	eloise89@gmail.com	example.net	\N
107	Marquardt, Wehner and Raynor	2021-03-01 23:15:44	2021-03-01 23:15:44	SC	fiona.grady@yahoo.com	example.com	\N
108	Kunze and Sons	2021-03-01 23:15:44	2021-03-01 23:15:44	IA	sebastian.ankunding@yahoo.com	example.org	\N
109	Trantow, Gulgowski and Goldner	2021-03-01 23:15:44	2021-03-01 23:15:44	GA	amelia.flatley@krajcik.com	example.org	\N
110	Daugherty, Abshire and Barton	2021-03-01 23:15:44	2021-03-01 23:15:44	MD	maryse20@hotmail.com	example.net	\N
111	Beier, Effertz and Abernathy	2021-03-01 23:15:44	2021-03-01 23:15:44	AZ	mrohan@hotmail.com	example.org	\N
112	Bosco-Kautzer	2021-03-01 23:15:44	2021-03-01 23:15:44	DE	khammes@schaefer.com	example.net	\N
113	Bogan PLC	2021-03-01 23:15:44	2021-03-01 23:15:44	OH	howell.darwin@abbott.com	example.net	\N
114	Skiles-Hoeger	2021-03-01 23:15:44	2021-03-01 23:15:44	OR	ross58@toy.com	example.com	\N
115	Klocko LLC	2021-03-01 23:15:44	2021-03-01 23:15:44	VT	rowe.reina@langworth.info	example.net	\N
116	Watsica-Pfeffer	2021-03-01 23:15:44	2021-03-01 23:15:44	OH	lizeth42@yahoo.com	example.net	\N
117	Nolan-Howell	2021-03-01 23:15:44	2021-03-01 23:15:44	TX	olangosh@gmail.com	example.com	\N
118	Luettgen-Bogan	2021-03-01 23:15:44	2021-03-01 23:15:44	AK	grady.christina@gmail.com	example.net	\N
119	Powlowski-Satterfield	2021-03-01 23:15:44	2021-03-01 23:15:44	WI	danielle.koch@shanahan.com	example.net	\N
120	Rutherford Group	2021-03-01 23:15:44	2021-03-01 23:15:44	MI	bogisich.hiram@volkman.info	example.net	\N
121	Harris LLC	2021-03-01 23:15:44	2021-03-01 23:15:44	MI	antone.mohr@dach.com	example.com	\N
122	Hermiston, Heller and Langosh	2021-03-01 23:15:44	2021-03-01 23:15:44	DE	colleen07@gmail.com	example.org	\N
123	Kub-Sawayn	2021-03-01 23:15:44	2021-03-01 23:15:44	MD	ncronin@franecki.info	example.net	\N
124	Jerde, Denesik and Heaney	2021-03-01 23:15:44	2021-03-01 23:15:44	AL	juanita78@balistreri.com	example.org	\N
125	Moen, Nolan and Brekke	2021-03-01 23:15:44	2021-03-01 23:15:44	ND	murazik.marlin@gmail.com	example.org	\N
126	Abshire-Borer	2021-03-01 23:15:44	2021-03-01 23:15:44	TX	deontae15@senger.net	example.com	\N
127	Hyatt Group	2021-03-01 23:15:45	2021-03-01 23:15:45	NV	ilowe@kassulke.com	example.net	\N
128	Fay, Medhurst and Mohr	2021-03-01 23:15:45	2021-03-01 23:15:45	KY	hillary.brown@rippin.org	example.org	\N
129	Considine, Hickle and Nader	2021-03-01 23:15:45	2021-03-01 23:15:45	TN	stokes.walker@gmail.com	example.org	\N
130	Sanford Group	2021-03-01 23:15:45	2021-03-01 23:15:45	PA	ymckenzie@hansen.com	example.net	\N
131	Parisian and Sons	2021-03-01 23:15:45	2021-03-01 23:15:45	MN	lgerhold@smitham.com	example.net	\N
132	Metz LLC	2021-03-01 23:15:45	2021-03-01 23:15:45	NC	sage.hintz@gmail.com	example.com	\N
133	Nicolas, Reinger and Wolf	2021-03-01 23:15:45	2021-03-01 23:15:45	WY	anahi.fadel@gmail.com	example.com	\N
134	Marvin, Corwin and Streich	2021-03-01 23:15:45	2021-03-01 23:15:45	DC	jean.sanford@ruecker.com	example.net	\N
135	Kuphal, Schimmel and Hirthe	2021-03-01 23:15:45	2021-03-01 23:15:45	CA	frederic15@hermiston.com	example.net	\N
136	Barrows and Sons	2021-03-01 23:15:45	2021-03-01 23:15:45	TN	mwindler@ernser.biz	example.net	\N
137	Bahringer Group	2021-03-01 23:15:45	2021-03-01 23:15:45	WV	harmon.rolfson@gmail.com	example.com	\N
138	Fisher Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	DE	rgusikowski@yahoo.com	example.net	\N
139	Rice, Okuneva and Weissnat	2021-03-01 23:15:45	2021-03-01 23:15:45	NH	morgan80@kessler.com	example.net	\N
140	Johns Group	2021-03-01 23:15:45	2021-03-01 23:15:45	MN	timmy.hansen@gmail.com	example.net	\N
141	Reynolds Ltd	2021-03-01 23:15:45	2021-03-01 23:15:45	SD	wolff.shemar@yahoo.com	example.org	\N
142	Rohan, Schowalter and Witting	2021-03-01 23:15:45	2021-03-01 23:15:45	SC	tod.swaniawski@gmail.com	example.com	\N
143	Ankunding-Luettgen	2021-03-01 23:15:45	2021-03-01 23:15:45	KY	hermiston.kyla@ritchie.com	example.org	\N
144	Harber, Kozey and O'Conner	2021-03-01 23:15:45	2021-03-01 23:15:45	UT	umonahan@murazik.net	example.net	\N
145	Grimes Group	2021-03-01 23:15:45	2021-03-01 23:15:45	IL	bmorar@larkin.com	example.org	\N
146	Stanton-Ortiz	2021-03-01 23:15:45	2021-03-01 23:15:45	VA	alta91@fahey.biz	example.org	\N
147	Weissnat, Koelpin and Wiegand	2021-03-01 23:15:45	2021-03-01 23:15:45	CA	gislason.lesly@rau.org	example.org	\N
148	Schultz-Stark	2021-03-01 23:15:45	2021-03-01 23:15:45	IA	gennaro.rohan@heaney.com	example.net	\N
149	Kilback, Kunde and Roberts	2021-03-01 23:15:45	2021-03-01 23:15:45	OH	francesca89@dubuque.com	example.net	\N
150	Kassulke Group	2021-03-01 23:15:45	2021-03-01 23:15:45	MS	iconsidine@frami.biz	example.com	\N
151	Auer-Collier	2021-03-01 23:15:45	2021-03-01 23:15:45	MO	domenica.quitzon@gmail.com	example.net	\N
152	Borer, Shanahan and Corwin	2021-03-01 23:15:45	2021-03-01 23:15:45	CO	stroman.kimberly@yahoo.com	example.org	\N
153	Turcotte-Hammes	2021-03-01 23:15:45	2021-03-01 23:15:45	NE	lehner.keegan@yahoo.com	example.net	\N
154	Nienow, Jacobi and McKenzie	2021-03-01 23:15:45	2021-03-01 23:15:45	GA	kschiller@yahoo.com	example.com	\N
155	Mayer-Turner	2021-03-01 23:15:45	2021-03-01 23:15:45	WY	mcdermott.aliya@hotmail.com	example.net	\N
156	Breitenberg-Turner	2021-03-01 23:15:45	2021-03-01 23:15:45	SC	prosacco.jerod@gislason.com	example.org	\N
157	Heathcote-Brown	2021-03-01 23:15:45	2021-03-01 23:15:45	NE	quinn.okeefe@hotmail.com	example.org	\N
158	Little, Denesik and Rath	2021-03-01 23:15:45	2021-03-01 23:15:45	AR	williamson.waino@hotmail.com	example.net	\N
159	Bins, Trantow and Cummerata	2021-03-01 23:15:45	2021-03-01 23:15:45	OR	emitchell@jast.com	example.org	\N
160	Cummerata Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	NC	raynor.german@hessel.com	example.net	\N
161	Hagenes, Bayer and Dickens	2021-03-01 23:15:45	2021-03-01 23:15:45	DE	cruz38@armstrong.com	example.net	\N
162	Pacocha Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	NY	eldridge.lang@hotmail.com	example.net	\N
163	Gusikowski-Schuppe	2021-03-01 23:15:45	2021-03-01 23:15:45	TX	tracey28@hotmail.com	example.org	\N
164	Pfeffer, Kirlin and Streich	2021-03-01 23:15:45	2021-03-01 23:15:45	DE	boyle.joelle@hotmail.com	example.com	\N
165	Jakubowski-Lubowitz	2021-03-01 23:15:45	2021-03-01 23:15:45	NE	keyon80@gmail.com	example.org	\N
166	Dare Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	ID	estel45@hotmail.com	example.org	\N
167	Jacobs, Kutch and Mills	2021-03-01 23:15:45	2021-03-01 23:15:45	LA	edward90@gmail.com	example.net	\N
168	Olson-Baumbach	2021-03-01 23:15:45	2021-03-01 23:15:45	OK	alexanne19@lynch.com	example.org	\N
169	Hodkiewicz, Mertz and Padberg	2021-03-01 23:15:45	2021-03-01 23:15:45	TN	bheaney@keebler.com	example.net	\N
170	Kunze LLC	2021-03-01 23:15:45	2021-03-01 23:15:45	ME	destini.haley@ratke.com	example.net	\N
171	Nicolas-Macejkovic	2021-03-01 23:15:45	2021-03-01 23:15:45	GA	gudrun52@gmail.com	example.com	\N
172	Windler Group	2021-03-01 23:15:45	2021-03-01 23:15:45	CT	monica80@lehner.com	example.net	\N
173	Reichert Ltd	2021-03-01 23:15:45	2021-03-01 23:15:45	WI	rossie.sawayn@yahoo.com	example.com	\N
174	Hegmann-Blick	2021-03-01 23:15:45	2021-03-01 23:15:45	ID	declan47@boehm.com	example.org	\N
175	Botsford Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	GA	tony31@grant.com	example.net	\N
176	Treutel, Barrows and Abernathy	2021-03-01 23:15:45	2021-03-01 23:15:45	WI	king.legros@wolf.com	example.com	\N
177	Corwin-Witting	2021-03-01 23:15:45	2021-03-01 23:15:45	VA	rasheed.white@yahoo.com	example.net	\N
178	Morar, McLaughlin and Kub	2021-03-01 23:15:45	2021-03-01 23:15:45	NE	kuhlman.vaughn@reinger.org	example.com	\N
179	Rolfson-Prosacco	2021-03-01 23:15:45	2021-03-01 23:15:45	WA	dshanahan@yahoo.com	example.org	\N
180	Murphy Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	DE	zleannon@hotmail.com	example.net	\N
181	Jaskolski, Cummerata and Schaefer	2021-03-01 23:15:45	2021-03-01 23:15:45	KY	tony13@gmail.com	example.net	\N
182	Schultz-Baumbach	2021-03-01 23:15:45	2021-03-01 23:15:45	IN	shaniya25@gmail.com	example.net	\N
183	Bartoletti Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	ID	pablo.kozey@walsh.com	example.com	\N
184	Wiza, Jacobson and McCullough	2021-03-01 23:15:45	2021-03-01 23:15:45	MI	khalid14@oberbrunner.net	example.com	\N
185	Jast, Maggio and Price	2021-03-01 23:15:45	2021-03-01 23:15:45	SC	windler.trent@hotmail.com	example.org	\N
186	Lubowitz-Kovacek	2021-03-01 23:15:45	2021-03-01 23:15:45	TX	sydnee73@hotmail.com	example.com	\N
187	Bailey-Kiehn	2021-03-01 23:15:45	2021-03-01 23:15:45	MT	tobin02@bartoletti.biz	example.org	\N
188	Waelchi, McDermott and Marquardt	2021-03-01 23:15:45	2021-03-01 23:15:45	NV	rylee.langworth@bergnaum.com	example.net	\N
189	Williamson and Sons	2021-03-01 23:15:45	2021-03-01 23:15:45	NH	griffin.murazik@halvorson.info	example.org	\N
190	Lang-Lemke	2021-03-01 23:15:45	2021-03-01 23:15:45	AL	karen.davis@yahoo.com	example.org	\N
191	Altenwerth and Sons	2021-03-01 23:15:45	2021-03-01 23:15:45	NC	bradtke.vergie@welch.com	example.org	\N
192	Osinski and Sons	2021-03-01 23:15:45	2021-03-01 23:15:45	WV	justice.kemmer@kovacek.com	example.org	\N
193	Johnston Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	NV	fadel.andy@hotmail.com	example.com	\N
194	Kulas PLC	2021-03-01 23:15:45	2021-03-01 23:15:45	KY	mosciski.triston@oconnell.biz	example.com	\N
195	Bechtelar LLC	2021-03-01 23:15:45	2021-03-01 23:15:45	MO	xhagenes@beer.net	example.net	\N
196	Rau, Ziemann and Gutkowski	2021-03-01 23:15:45	2021-03-01 23:15:45	CT	ruth28@rogahn.biz	example.org	\N
197	Braun-Nolan	2021-03-01 23:15:45	2021-03-01 23:15:45	PA	brigitte63@hotmail.com	example.net	\N
198	Labadie Inc	2021-03-01 23:15:45	2021-03-01 23:15:45	AL	kaley.lehner@keeling.net	example.com	\N
199	Balistreri and Sons	2021-03-01 23:15:45	2021-03-01 23:15:45	DC	murray.therese@kautzer.info	example.com	\N
200	Gaylord-Lind	2021-03-01 23:15:45	2021-03-01 23:15:45	DC	wwalsh@gmail.com	example.net	\N
\.


--
-- Data for Name: log_acessos; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.log_acessos (id, log, created_at, updated_at) FROM stdin;
1	IP 127.0.0.1 requisitou a rota /	2021-03-01 22:59:16	2021-03-01 22:59:16
2	IP 127.0.0.1 requisitou a rota /	2021-03-13 03:20:38	2021-03-13 03:20:38
3	IP 127.0.0.1 requisitou a rota /	2021-03-13 12:51:19	2021-03-13 12:51:19
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2019_08_19_000000_create_failed_jobs_table	1
3	2021_01_01_135644_create_site_contatos_table	1
4	2021_01_04_232354_create_fornecedores_table	1
5	2021_01_06_224146_alter_fornecedores_novas_colunas	1
6	2021_01_07_012756_create_produtos_table	1
7	2021_01_08_010736_creae_produto_detalhes_table	1
8	2021_01_08_013555_create_unidades_table	1
9	2021_01_08_020537_create_filiais_table	1
10	2021_01_08_020604_create_produto_filiais_table	1
11	2021_01_09_013726_alter_table_fornecedores_add_column_site	1
12	2021_01_13_234643_alter_table_fornecedores	1
13	2021_01_18_022639_create_motivo_contatos_table	1
14	2021_01_18_231102_alter_table_site_contatos_add_fk_motivo_contatos	1
15	2021_01_19_032238_create_log_acessos_table	1
\.


--
-- Data for Name: motivo_contatos; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.motivo_contatos (id, motivo_contato, created_at, updated_at) FROM stdin;
1	Dúvida	2021-03-01 22:58:09	2021-03-01 22:58:09
2	Elógio	2021-03-01 22:58:09	2021-03-01 22:58:09
3	Reclamação	2021-03-01 22:58:09	2021-03-01 22:58:09
4	Dúvida	2021-03-01 23:15:45	2021-03-01 23:15:45
5	Elógio	2021-03-01 23:15:45	2021-03-01 23:15:45
6	Reclamação	2021-03-01 23:15:45	2021-03-01 23:15:45
\.


--
-- Data for Name: produto_detalhes; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.produto_detalhes (id, produto_id, comprimento, largura, altura, created_at, updated_at, unidade_id) FROM stdin;
\.


--
-- Data for Name: produto_filiais; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.produto_filiais (id, filial_id, produto_id, preco_venda, estoque_minimo, estoque_maximo, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.produtos (id, nome, descricao, peso, created_at, updated_at, unidade_id) FROM stdin;
2	Quia sit.	Quidem ratione eligendi voluptatem minima.	441	2021-03-01 23:22:56	2021-03-01 23:22:56	1
3	Enim architecto.	Harum totam optio iusto quas est molestiae numquam.	653	2021-03-01 23:22:56	2021-03-01 23:22:56	1
4	Consequatur enim.	Rerum magni sapiente minima non assumenda non.	876	2021-03-01 23:22:56	2021-03-01 23:22:56	1
5	Ipsa nostrum.	Voluptates nostrum aliquam placeat et ipsum commodi perferendis.	193	2021-03-01 23:22:56	2021-03-01 23:22:56	1
6	Minus eos.	Maxime voluptatem aperiam odio enim.	314	2021-03-01 23:22:56	2021-03-01 23:22:56	1
7	Sit inventore.	Dolore ea cupiditate quia alias.	788	2021-03-01 23:22:56	2021-03-01 23:22:56	1
8	Fuga.	Error et dolor dolores rem quidem occaecati velit.	593	2021-03-01 23:22:57	2021-03-01 23:22:57	1
9	Est.	Autem et est perferendis eligendi hic quisquam voluptates.	283	2021-03-01 23:22:57	2021-03-01 23:22:57	1
10	Repellat.	Dolorem sed dolor eveniet sint quis.	115	2021-03-01 23:22:57	2021-03-01 23:22:57	1
11	Aliquid.	Explicabo ut eos esse nihil aut.	303	2021-03-01 23:22:57	2021-03-01 23:22:57	1
12	Eum.	Sed placeat assumenda dolorem ab repellendus.	835	2021-03-01 23:22:57	2021-03-01 23:22:57	1
13	Odit voluptatem.	Quaerat qui minima nam aspernatur quis.	653	2021-03-01 23:22:57	2021-03-01 23:22:57	1
14	Et.	Quas cum cumque maxime voluptatum culpa dicta.	137	2021-03-01 23:22:57	2021-03-01 23:22:57	1
15	Quis nostrum.	Est consequatur ut ut doloribus.	579	2021-03-01 23:22:57	2021-03-01 23:22:57	1
16	Et sed.	Ullam cum pariatur suscipit iste.	289	2021-03-01 23:22:57	2021-03-01 23:22:57	1
17	Qui.	Commodi est ut eius rem.	133	2021-03-01 23:22:57	2021-03-01 23:22:57	1
18	Rem.	Provident cum ducimus minima explicabo ut blanditiis et.	397	2021-03-01 23:22:57	2021-03-01 23:22:57	1
19	Est et.	Dignissimos quae rerum possimus aut.	834	2021-03-01 23:22:57	2021-03-01 23:22:57	1
20	Qui.	Temporibus in non ratione rerum et esse fuga quod.	437	2021-03-01 23:22:57	2021-03-01 23:22:57	1
21	Voluptatem.	Corporis ea molestiae ut exercitationem doloribus vitae at.	144	2021-03-01 23:22:57	2021-03-01 23:22:57	1
22	Perspiciatis ipsa.	Quisquam in consequuntur impedit hic enim quod praesentium.	253	2021-03-01 23:22:57	2021-03-01 23:22:57	1
23	Nesciunt.	Saepe fugit consequatur qui distinctio aspernatur.	611	2021-03-01 23:22:57	2021-03-01 23:22:57	1
24	Aut.	Voluptates cumque quaerat et et dolores ex nisi.	797	2021-03-01 23:22:57	2021-03-01 23:22:57	1
25	Voluptatibus sint.	Eius officiis molestias perferendis praesentium.	576	2021-03-01 23:22:57	2021-03-01 23:22:57	1
26	Porro.	Consequuntur harum sed aliquid ea.	508	2021-03-01 23:22:57	2021-03-01 23:22:57	1
27	Autem aut.	Ab est est sunt ipsum excepturi vitae repellendus.	442	2021-03-01 23:22:57	2021-03-01 23:22:57	1
28	Quae nam.	Est repellat mollitia non voluptatibus qui.	250	2021-03-01 23:22:57	2021-03-01 23:22:57	1
29	Porro deserunt.	Doloribus architecto nulla qui aut voluptatum nemo eum.	369	2021-03-01 23:22:57	2021-03-01 23:22:57	1
30	Reiciendis eveniet.	Voluptatem illo a et est voluptatem omnis.	386	2021-03-01 23:22:57	2021-03-01 23:22:57	1
31	Voluptatem dolores.	Exercitationem error eum atque deleniti explicabo sint consequuntur.	768	2021-03-01 23:22:57	2021-03-01 23:22:57	1
32	Quod molestiae.	Est repellat est sint voluptas tenetur est laborum eos.	706	2021-03-01 23:22:57	2021-03-01 23:22:57	1
33	Sit.	Ex qui reiciendis laborum pariatur assumenda id aperiam aut.	169	2021-03-01 23:22:57	2021-03-01 23:22:57	1
34	Et deleniti.	A esse voluptatem tempora et quasi eos.	527	2021-03-01 23:22:57	2021-03-01 23:22:57	1
35	Ut esse.	Nam nostrum eum accusamus adipisci.	661	2021-03-01 23:22:57	2021-03-01 23:22:57	1
36	Dolore.	Necessitatibus voluptatum voluptate aliquam eos.	153	2021-03-01 23:22:57	2021-03-01 23:22:57	1
37	Quia.	Ea reiciendis possimus id.	283	2021-03-01 23:22:57	2021-03-01 23:22:57	1
38	Non.	Velit quia quia odio est vel soluta omnis.	401	2021-03-01 23:22:57	2021-03-01 23:22:57	1
39	Sint aliquam.	Magnam ut vero fuga ut ullam distinctio.	197	2021-03-01 23:22:57	2021-03-01 23:22:57	1
40	Nihil illo.	Cupiditate aliquid sapiente unde eum ex quod quo.	189	2021-03-01 23:22:57	2021-03-01 23:22:57	1
41	Porro.	Ut voluptas fuga ut quod sit.	676	2021-03-01 23:22:57	2021-03-01 23:22:57	1
42	Quam dolorum.	Eaque ratione magnam amet eveniet deserunt.	829	2021-03-01 23:22:57	2021-03-01 23:22:57	1
43	Qui.	Nihil quidem cum dolorem enim autem adipisci.	703	2021-03-01 23:22:57	2021-03-01 23:22:57	1
44	Quisquam explicabo.	Voluptatibus recusandae voluptates odio deserunt.	724	2021-03-01 23:22:57	2021-03-01 23:22:57	1
45	Unde eum.	Perferendis nihil saepe cum ea tempora.	541	2021-03-01 23:22:57	2021-03-01 23:22:57	1
46	Cumque.	Architecto dolorum natus repellat.	800	2021-03-01 23:22:57	2021-03-01 23:22:57	1
47	Maxime.	Animi explicabo placeat repellendus fugit tempora voluptates laudantium adipisci.	327	2021-03-01 23:22:57	2021-03-01 23:22:57	1
48	Doloribus.	Ad cum dolorum perspiciatis dolorum.	779	2021-03-01 23:22:57	2021-03-01 23:22:57	1
49	Recusandae expedita.	Perferendis ad sed totam corporis.	407	2021-03-01 23:22:57	2021-03-01 23:22:57	1
50	Esse et.	Aut assumenda facilis ut cupiditate voluptates itaque.	625	2021-03-01 23:22:57	2021-03-01 23:22:57	1
51	Ut.	Ut nesciunt asperiores minus saepe est.	184	2021-03-01 23:22:57	2021-03-01 23:22:57	1
52	Dolore.	Sit odit consectetur assumenda aut dolorem consequatur dolorum.	737	2021-03-01 23:22:57	2021-03-01 23:22:57	1
53	Et.	Quam aliquam omnis et sint.	467	2021-03-01 23:22:57	2021-03-01 23:22:57	1
54	Enim.	Quo est est quod qui libero.	132	2021-03-01 23:22:57	2021-03-01 23:22:57	1
55	Beatae.	Aut iure architecto accusamus unde aut.	416	2021-03-01 23:22:57	2021-03-01 23:22:57	1
56	Ut.	Et accusamus ut sed ea.	677	2021-03-01 23:22:57	2021-03-01 23:22:57	1
57	Esse.	Ipsam sunt expedita temporibus nemo nam hic.	831	2021-03-01 23:22:57	2021-03-01 23:22:57	1
58	Dolorem dolores.	Eos inventore rerum enim ex est ullam.	868	2021-03-01 23:22:57	2021-03-01 23:22:57	1
59	Nesciunt et.	Non corrupti corrupti a blanditiis provident nesciunt.	380	2021-03-01 23:22:57	2021-03-01 23:22:57	1
60	Aut.	Voluptas nesciunt sed magnam quasi id autem.	445	2021-03-01 23:22:57	2021-03-01 23:22:57	1
61	Aut.	Dolore qui debitis qui eos maxime ipsam.	337	2021-03-01 23:22:57	2021-03-01 23:22:57	1
62	Impedit.	Aspernatur et ipsa rem et aliquam.	550	2021-03-01 23:22:57	2021-03-01 23:22:57	1
63	Aperiam.	Eaque exercitationem earum fugiat et pariatur dolorum cumque.	532	2021-03-01 23:22:57	2021-03-01 23:22:57	1
64	Non explicabo.	Vitae iure sed laboriosam et.	181	2021-03-01 23:22:57	2021-03-01 23:22:57	1
66	Autem.	Ut repellendus dolor molestiae ex sapiente dolorem.	442	2021-03-01 23:22:57	2021-03-01 23:22:57	1
67	Non.	Est enim officia est assumenda.	828	2021-03-01 23:22:57	2021-03-01 23:22:57	1
68	Et aut.	Voluptatem voluptas qui aperiam molestias magni.	126	2021-03-01 23:22:57	2021-03-01 23:22:57	1
69	Eaque.	Sint hic et asperiores nisi doloremque earum.	900	2021-03-01 23:22:57	2021-03-01 23:22:57	1
70	Veniam.	Voluptas eos eaque quia optio aut voluptatum et.	846	2021-03-01 23:22:57	2021-03-01 23:22:57	1
71	Qui.	Et adipisci qui quia inventore est.	188	2021-03-01 23:22:57	2021-03-01 23:22:57	1
72	Veritatis sed.	Sed ea deleniti voluptas et ipsa ullam.	395	2021-03-01 23:22:57	2021-03-01 23:22:57	1
73	Consequuntur magnam.	Praesentium voluptate ea voluptatem voluptatem.	121	2021-03-01 23:22:57	2021-03-01 23:22:57	1
74	Non quos.	Rem omnis reprehenderit sint est.	644	2021-03-01 23:22:57	2021-03-01 23:22:57	1
75	Nemo fuga.	Aut iusto pariatur neque laudantium qui modi.	399	2021-03-01 23:22:57	2021-03-01 23:22:57	1
76	Quae.	Reiciendis unde inventore provident non.	353	2021-03-01 23:22:57	2021-03-01 23:22:57	1
77	Natus.	Excepturi et error animi facilis aut voluptates.	161	2021-03-01 23:22:57	2021-03-01 23:22:57	1
78	Occaecati sed.	Deserunt facere quis magni amet qui aut.	645	2021-03-01 23:22:57	2021-03-01 23:22:57	1
79	Ut.	Modi veritatis enim ut voluptas qui quibusdam.	613	2021-03-01 23:22:57	2021-03-01 23:22:57	1
80	Est.	Nihil quibusdam quisquam ut rerum non ipsam.	526	2021-03-01 23:22:57	2021-03-01 23:22:57	1
81	Et modi.	A qui voluptate rerum qui commodi quia.	461	2021-03-01 23:22:57	2021-03-01 23:22:57	1
82	Qui id.	Suscipit accusamus unde error pariatur occaecati.	445	2021-03-01 23:22:57	2021-03-01 23:22:57	1
83	Non.	Autem et culpa ipsam et aut et mollitia.	656	2021-03-01 23:22:57	2021-03-01 23:22:57	1
84	Ea.	Quae non voluptatibus rem excepturi voluptatem.	426	2021-03-01 23:22:57	2021-03-01 23:22:57	1
85	Architecto maiores.	Omnis aut animi voluptatibus dolorem qui.	558	2021-03-01 23:22:57	2021-03-01 23:22:57	1
86	Vero.	Maxime eum aliquid quibusdam.	891	2021-03-01 23:22:57	2021-03-01 23:22:57	1
87	Id non.	Iure repudiandae illo est animi ipsum excepturi.	233	2021-03-01 23:22:57	2021-03-01 23:22:57	1
88	Voluptatem.	Dolorem ipsum iure dolorem.	349	2021-03-01 23:22:57	2021-03-01 23:22:57	1
89	Beatae.	Qui exercitationem mollitia quasi dicta.	255	2021-03-01 23:22:57	2021-03-01 23:22:57	1
90	Commodi.	Soluta nam quis exercitationem animi et.	537	2021-03-01 23:22:57	2021-03-01 23:22:57	1
91	Est.	Mollitia quam quasi quasi pariatur ut.	244	2021-03-01 23:22:57	2021-03-01 23:22:57	1
92	Quis optio.	At similique qui distinctio.	580	2021-03-01 23:22:57	2021-03-01 23:22:57	1
93	Cum.	Eveniet ratione nihil vel quis doloremque quia autem.	173	2021-03-01 23:22:57	2021-03-01 23:22:57	1
95	Repudiandae amet.	Magni tenetur praesentium enim sapiente.	337	2021-03-01 23:22:57	2021-03-01 23:22:57	1
96	Vel.	Accusantium reprehenderit et id molestias.	884	2021-03-01 23:22:57	2021-03-01 23:22:57	1
97	Delectus culpa.	Reiciendis facilis quia nostrum ducimus consequatur.	582	2021-03-01 23:22:57	2021-03-01 23:22:57	1
98	Natus.	Quas laboriosam dolor aliquid voluptatem ea dolorem quaerat.	530	2021-03-01 23:22:57	2021-03-01 23:22:57	1
99	Iusto.	Quia aut ut possimus.	265	2021-03-01 23:22:57	2021-03-01 23:22:57	1
100	Inventore vitae.	A ut quo voluptate libero.	595	2021-03-01 23:22:57	2021-03-01 23:22:57	1
101	Quidem ratione.	Quo sit deserunt pariatur aliquid.	328	2021-03-01 23:22:57	2021-03-01 23:22:57	1
104	Delectus culpa.	Reiciendis facilis quia nostrum ducimus consequatur.	582	2021-03-13 13:17:37	2021-03-13 13:17:37	1
103	Natalie Gedra	Reporter correspondente de Londres ESPN	55	2021-03-13 13:04:13	2021-03-13 13:58:47	1
\.


--
-- Data for Name: site_contatos; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.site_contatos (id, created_at, updated_at, nome, telefone, email, mensagem, motivo_contatos_id) FROM stdin;
1	2021-03-01 22:58:09	2021-03-01 22:58:09	Fredrick Boehm DDS	800.614.2141	waters.heloise@rutherford.biz	Dolor atque exercitationem consectetur et dolore. Maxime voluptas eum sit nemo omnis. Voluptatem nulla perferendis incidunt aut quaerat et nesciunt. Ipsa enim in repellat deserunt laudantium a exercitationem.	2
2	2021-03-01 22:58:09	2021-03-01 22:58:09	Eliezer Wolf Sr.	(877) 590-2078	ritchie.george@hotmail.com	Reprehenderit porro eligendi maxime beatae. Atque unde architecto modi fugit placeat. Sunt dolore labore explicabo qui iste minus. Qui qui sed veritatis ducimus eos blanditiis iusto. Minima autem omnis nisi asperiores id. Quis nostrum sint recusandae officia dolorem.	2
3	2021-03-01 22:58:09	2021-03-01 22:58:09	Will Keebler	(888) 493-1077	abe.greenholt@gmail.com	Exercitationem sit dolor nobis ea aut quisquam nihil. Molestias et quas necessitatibus maiores ipsum maxime illo. Quas ipsa a non voluptas in.	1
4	2021-03-01 22:58:09	2021-03-01 22:58:09	Dr. Shanon Harber DVM	855.751.7995	lavada77@hotmail.com	Quis ut voluptas rerum esse dolor ratione. Omnis natus asperiores atque quisquam consequuntur. Temporibus recusandae sunt magnam impedit. Sed eum autem sunt vel omnis.	1
5	2021-03-01 22:58:09	2021-03-01 22:58:09	Kamille Ratke	844-413-0815	unique.bogan@yahoo.com	Et nam voluptas omnis doloremque numquam facilis sint. Eos natus quisquam sit atque qui totam quia autem. Non non aut alias dolorem omnis consectetur. Voluptas velit iure ipsam dignissimos nihil non. Beatae error optio eum reiciendis est. Reprehenderit quaerat distinctio qui nihil libero et.	1
6	2021-03-01 22:58:09	2021-03-01 22:58:09	Mr. Dawson Welch V	(888) 597-4034	mcglynn.alvena@jerde.net	Accusamus hic voluptas nihil libero ullam magni. Necessitatibus recusandae sed doloribus sunt quaerat commodi. Sapiente quidem voluptas facere itaque ut. Fugit velit esse sit est aut.	1
7	2021-03-01 22:58:09	2021-03-01 22:58:09	Miss Chaya Prohaska Sr.	844-817-1236	feeney.ashlee@hotmail.com	Facilis deserunt in saepe culpa veniam et laudantium. Quaerat perspiciatis quod nulla quis voluptatem. Illo neque eveniet et distinctio. Rerum consequatur tempore perferendis laudantium ad.	1
8	2021-03-01 22:58:09	2021-03-01 22:58:09	Mrs. Carole Yundt	(888) 832-9294	zakary.hickle@gmail.com	Rem dolorem eveniet omnis quis nulla. Ipsam quo itaque non sint accusantium commodi autem adipisci. Et aut rerum nobis atque ea amet iure aut. Sit culpa voluptate facere debitis suscipit fuga. Molestias consequuntur possimus cupiditate aut sapiente.	1
9	2021-03-01 22:58:09	2021-03-01 22:58:09	Concepcion Veum I	866.474.6774	okeefe.raegan@wiegand.com	Explicabo aut dolorum suscipit quia error. Ea dolor eveniet ea error. Animi veritatis molestiae vero voluptas delectus. Qui debitis voluptates est perspiciatis est. Voluptatum suscipit similique inventore veniam doloremque quis blanditiis.	3
10	2021-03-01 22:58:09	2021-03-01 22:58:09	Allene Trantow V	1-877-703-1445	mgulgowski@brekke.biz	Facilis eum enim minima sit sapiente aut. Rerum hic eaque qui exercitationem et. Tempora debitis aut modi voluptatem error saepe voluptatem. Sed velit dolorem sapiente.	1
11	2021-03-01 22:58:09	2021-03-01 22:58:09	Tyreek Ondricka	(855) 412-6832	romaguera.brennan@ferry.info	Quibusdam ut quo aut unde saepe quisquam. Rerum sit sit id dolorem qui facere. Maiores facilis ea ipsa explicabo quos temporibus possimus. Maxime voluptas esse fuga.	1
12	2021-03-01 22:58:09	2021-03-01 22:58:09	Prof. Peter Sporer Sr.	1-888-700-7348	akeebler@yahoo.com	Quas et tempora aut et iure non voluptas. Ipsa alias dicta atque voluptas fugit. Quia ducimus nostrum repellat expedita sapiente.	3
13	2021-03-01 22:58:09	2021-03-01 22:58:09	Nannie Ondricka	(855) 875-8159	schumm.janice@yahoo.com	Non impedit quo qui assumenda. Eveniet dignissimos similique suscipit quis ut sunt. Nihil dolor reprehenderit nulla aliquam. Esse assumenda aliquid asperiores voluptatem inventore. Tenetur unde dolores delectus ut.	2
14	2021-03-01 22:58:09	2021-03-01 22:58:09	Devonte Dibbert	877-395-7183	mitchel.spencer@gmail.com	Sed iusto non qui. Omnis atque voluptas natus optio beatae nobis. Harum consequatur libero facere nemo ipsam. Repellat explicabo delectus illo velit voluptas eligendi et.	3
15	2021-03-01 22:58:09	2021-03-01 22:58:09	Mrs. Carmella Daniel Sr.	(800) 349-0223	ramiro09@kemmer.com	Impedit et laudantium ut aut accusamus enim sit. Ex dolor et neque alias. Labore libero quam et qui vel explicabo adipisci. Iure corrupti ipsa error dolor porro sit.	3
16	2021-03-01 22:58:09	2021-03-01 22:58:09	Arne O'Kon	866.678.8852	langosh.justine@gmail.com	Quis repellat ipsum dolorem labore est nulla occaecati. Velit veniam sed tempora suscipit aut minima. Ad qui a tenetur officiis. Numquam enim sit dolorem laborum.	1
17	2021-03-01 22:58:09	2021-03-01 22:58:09	Prof. Kelton Breitenberg Sr.	844.494.8605	moen.curtis@yahoo.com	Dolores consequuntur a minus quae. Dolorem aliquam et maiores et. Iste fugiat quos odit dolores molestias voluptatum. Natus laboriosam voluptatem aliquam ut voluptates possimus ab. Est a sit provident tempora iste. Dolor voluptas qui assumenda. Ut qui nesciunt nostrum rerum porro sed.	1
18	2021-03-01 22:58:09	2021-03-01 22:58:09	Darrion Bahringer Jr.	800.656.1887	susana18@yahoo.com	Sint aut qui perferendis consequuntur. Consectetur veniam ducimus expedita nihil harum ex non. Reprehenderit est quas quia pariatur facilis. Ullam fuga dolores fugiat enim. Suscipit suscipit facilis impedit neque eaque.	3
19	2021-03-01 22:58:09	2021-03-01 22:58:09	Cesar Wolff	(888) 990-8595	bkoss@mraz.com	Totam optio magni laboriosam veniam. Voluptatibus deserunt saepe repudiandae dolorem ipsam rerum. Assumenda blanditiis eligendi reprehenderit doloremque. Et ad est aspernatur ut totam hic eaque molestias.	2
20	2021-03-01 22:58:09	2021-03-01 22:58:09	Nyasia Mann	877.675.6349	gutmann.consuelo@yahoo.com	Consequatur ex quasi dolor nesciunt. Impedit harum non doloremque labore esse culpa quaerat. Qui totam excepturi sed sit aut velit voluptatem. Qui ratione rerum sit fugiat nisi ducimus enim ab.	3
21	2021-03-01 22:58:09	2021-03-01 22:58:09	Amparo Hyatt	877.972.9310	gaufderhar@nader.biz	Est alias omnis unde voluptatibus ea exercitationem fugit. Sed assumenda reiciendis minus repellendus nostrum corrupti. Error optio voluptatem excepturi exercitationem. Ex ut cumque nihil non quis aut.	3
22	2021-03-01 22:58:09	2021-03-01 22:58:09	Keely Skiles	1-844-387-3400	dylan.rosenbaum@hotmail.com	Adipisci cupiditate facilis sit aut et dolorum. Optio et est dolorem quibusdam inventore id. Labore quia velit consequatur aut quae dignissimos reiciendis. Harum provident modi et vero quasi dolorem. Animi culpa voluptas quasi ipsum omnis nisi rerum aut. Unde rerum autem quis consequuntur.	3
23	2021-03-01 22:58:09	2021-03-01 22:58:09	Webster Schoen	844.773.5058	crooks.kirk@oreilly.net	Unde est quibusdam aut amet. Voluptas error voluptatem aliquam repudiandae rem. Assumenda itaque ut iusto sit quod. Natus eum ex qui cupiditate.	2
24	2021-03-01 22:58:09	2021-03-01 22:58:09	Ewell Cole	844-450-7660	bins.pinkie@balistreri.net	Laboriosam voluptate iure accusantium nihil ut deserunt eum quod. Et ipsum veritatis soluta labore. Eaque cum mollitia aut quia quia. Quam porro qui temporibus sint iusto et aut.	3
25	2021-03-01 22:58:09	2021-03-01 22:58:09	Oceane Pouros	877.354.3227	katherine77@hotmail.com	Illo odio esse et. Consectetur ut blanditiis id. Libero numquam quia et tenetur veritatis. Rerum voluptas tenetur error voluptatem sit doloremque. Laborum quisquam id dolores ut.	2
26	2021-03-01 22:58:09	2021-03-01 22:58:09	Jeremy Hills	800-471-8518	alexis74@ryan.com	Ipsum et accusantium at facilis cupiditate inventore. Doloribus possimus dicta et sapiente praesentium maiores veritatis. Debitis incidunt omnis fuga minus doloribus officia.	3
27	2021-03-01 22:58:09	2021-03-01 22:58:09	Ms. Lorna Dickens	1-866-726-7784	houston83@hotmail.com	Iure voluptas repellat ea et minima ipsa est. Enim ut rem nesciunt consequatur et. Voluptates neque dolor rerum quos quibusdam dicta.	3
28	2021-03-01 22:58:09	2021-03-01 22:58:09	Miss Nettie Bosco DDS	1-866-592-5755	marley.rowe@crona.info	Fugiat ipsam officia et. Ut error officia quod vel. Quia deleniti veniam qui non. Reprehenderit ea inventore nihil laboriosam officiis autem ullam. Quod et eligendi autem molestias.	3
29	2021-03-01 22:58:09	2021-03-01 22:58:09	Mossie Fadel	888-807-9636	estel34@yahoo.com	Repellat nihil ipsam dolorem architecto facere cum. Possimus maxime non eligendi. Consequatur laudantium sunt consectetur cumque rerum.	1
30	2021-03-01 22:58:09	2021-03-01 22:58:09	Brielle Kilback Sr.	(866) 820-6331	zharris@beatty.org	Ad dolor nostrum dolore iste praesentium. Sed alias similique voluptatem sed dolore. Placeat eius quas fugiat eius quis. Rerum quisquam incidunt voluptatibus repellat voluptatem quod ipsa.	2
31	2021-03-01 22:58:09	2021-03-01 22:58:09	Connie Stokes	(877) 558-3781	jacobs.dee@hotmail.com	Eaque suscipit doloremque repudiandae molestiae. Quam non incidunt reprehenderit ea. Quia qui minima distinctio quam quisquam autem repellat. Perferendis cum expedita deserunt omnis tenetur nostrum saepe voluptatum.	2
32	2021-03-01 22:58:09	2021-03-01 22:58:09	Dr. Athena Ziemann Jr.	877-760-4552	cleuschke@hotmail.com	Molestias sed eveniet quis autem. Qui minima veritatis at voluptates laudantium unde.	1
33	2021-03-01 22:58:09	2021-03-01 22:58:09	Audrey Kohler PhD	1-877-930-6329	stroman.iva@hotmail.com	Aperiam voluptatem inventore cupiditate maxime est expedita cum. Quos aut impedit nihil ab quasi hic. Necessitatibus quis quia vero deleniti qui. Sed et quia quibusdam nihil. Iste excepturi non aliquid culpa. Deleniti facere enim et doloribus est eum.	1
34	2021-03-01 22:58:09	2021-03-01 22:58:09	Lazaro Fritsch	(888) 240-9203	srutherford@lesch.net	Autem corporis voluptates nemo necessitatibus vel voluptatibus exercitationem consequatur. Minima saepe dolores explicabo ut. Nihil sint voluptatem consequatur minima ut voluptas molestiae.	2
35	2021-03-01 22:58:09	2021-03-01 22:58:09	Ms. Lexi O'Connell	(866) 571-7829	markus47@yahoo.com	Aliquam iste rerum in corrupti molestiae in ipsum sed. Ut quod nam debitis vitae. Optio qui enim qui et tenetur. Similique ea ut est est sit et. Autem error est quas et. Voluptatem nemo dolorum sit similique non sunt.	2
36	2021-03-01 22:58:09	2021-03-01 22:58:09	Letha Wiza	1-800-965-6030	perry.schumm@hotmail.com	Accusantium id hic dolores ut blanditiis sint quos. Dolor dolorum sit numquam ad repudiandae velit molestiae. Quis neque et quasi debitis unde. Qui provident repudiandae vel rem cupiditate eligendi repellat asperiores.	2
37	2021-03-01 22:58:09	2021-03-01 22:58:09	Prof. Sarah Bechtelar	(855) 799-9293	devonte.torphy@hotmail.com	Quisquam rerum qui ullam consectetur architecto laborum. Rerum officiis consequuntur illo nulla natus cumque voluptatem in. Ipsam velit ad sed dicta iure voluptas a. Esse natus laudantium necessitatibus nihil qui harum.	3
38	2021-03-01 22:58:09	2021-03-01 22:58:09	Prof. Wilfred Weber DVM	888-579-1929	reece.veum@gmail.com	Quia et aperiam voluptatibus est voluptatem amet. Odio distinctio autem pariatur. Dolor sit nesciunt rerum soluta numquam soluta est assumenda.	3
39	2021-03-01 22:58:09	2021-03-01 22:58:09	Mrs. Allene Tromp PhD	844.531.3831	trace41@hotmail.com	Repudiandae dolores nihil iusto voluptatum nesciunt. Dolorem qui ipsa ex possimus ea sit omnis consequatur. Consequatur sit repellendus sed aliquam. Iure sint labore velit quia maxime deleniti.	1
40	2021-03-01 22:58:09	2021-03-01 22:58:09	Katrina Schmitt Sr.	844-710-1423	rudolph23@dietrich.com	Quia incidunt quis voluptatem at est ratione et. Quis omnis illo minus et. A dolores et et placeat quisquam voluptatibus itaque. Maxime ipsum beatae qui quidem sed molestiae. Ex mollitia officiis deleniti at qui dignissimos. Laborum ut quos qui quae. Ea non cum rem porro.	3
41	2021-03-01 22:58:09	2021-03-01 22:58:09	Lura Dach	1-866-820-4146	qheaney@nienow.com	Natus dolorum nesciunt laudantium est a blanditiis velit. Est dignissimos eum et eveniet. Quia neque ea asperiores omnis quae quis quod. Necessitatibus iste voluptates id architecto.	1
42	2021-03-01 22:58:09	2021-03-01 22:58:09	Antoinette Berge Sr.	(855) 419-9879	cole.delpha@funk.com	Aperiam beatae ex aut nihil porro repellendus sapiente ut. Et modi explicabo in est ipsum. Et at dolor commodi atque.	2
43	2021-03-01 22:58:09	2021-03-01 22:58:09	Dorcas Kohler	844-416-9015	jack93@hotmail.com	A ut iste iusto placeat quasi recusandae nihil quos. Voluptatem voluptatem labore itaque hic nisi officia. Ad sapiente repellendus est aut molestias. Expedita provident vitae nostrum.	1
44	2021-03-01 22:58:09	2021-03-01 22:58:09	Nia Christiansen	877-493-4010	reta51@wilkinson.net	Voluptates natus doloremque a magni quia. Corrupti cupiditate sint hic ut est illum. Dolores necessitatibus harum repudiandae amet ipsum et necessitatibus. Occaecati quas sed doloribus distinctio iure blanditiis quos. Pariatur velit sed dolore velit tempore enim.	1
45	2021-03-01 22:58:09	2021-03-01 22:58:09	Herminia Becker	(855) 309-8858	reynolds.cordelia@gmail.com	Sequi quam id odio deleniti incidunt. Eum adipisci porro qui fugit. Iure qui ut fuga laborum doloribus iure. Minima non veritatis asperiores minima dolorum possimus. Aspernatur numquam voluptas est ad qui eum amet temporibus. Ut ut ducimus dolor porro sint.	2
46	2021-03-01 22:58:09	2021-03-01 22:58:09	Dr. Crawford Padberg Jr.	877-477-9385	schuster.javier@gmail.com	Sunt odit inventore debitis. Unde similique rerum sit maiores labore. Et aut commodi eum nam voluptatum consequatur rerum similique. Omnis ipsum perspiciatis at in omnis repudiandae dicta.	3
47	2021-03-01 22:58:09	2021-03-01 22:58:09	Tessie Casper	(855) 744-4192	verona.rau@cronin.com	Animi cum et itaque distinctio. Odio aut odio voluptas tempora aliquam. Suscipit asperiores ducimus similique rerum. Et ad aut ad qui et nam odit voluptatibus. Atque ut fuga repellat corrupti et. In libero eos rerum. Voluptatem sapiente aut placeat nihil. Tempora molestias sint quos architecto est.	3
48	2021-03-01 22:58:09	2021-03-01 22:58:09	Cristina Renner	888-829-1421	alisa.lehner@treutel.com	Quaerat sed dolor omnis officiis. Illo eum fuga non et blanditiis. Fugit perspiciatis soluta quibusdam aut ut cupiditate sapiente molestias.	1
49	2021-03-01 22:58:09	2021-03-01 22:58:09	Rashad Monahan	1-877-806-7801	carlos.lang@schinner.info	Illum dolores et magni veniam esse. Consequuntur cupiditate voluptas facilis iste. Dolores autem porro aliquam error provident officia. Ut modi nesciunt omnis facere. Et consequuntur est eveniet. Veniam rerum et quos aperiam ipsam enim. Iure modi reprehenderit earum facere ab.	2
50	2021-03-01 22:58:09	2021-03-01 22:58:09	Erik Kuvalis	800-561-8024	ruecker.bonnie@vandervort.com	Voluptate molestias et autem. Qui atque consequatur cupiditate voluptatem odio et. Nisi dignissimos ut qui culpa est. Quia reprehenderit eum ipsum vero molestiae adipisci.	1
51	2021-03-01 22:58:09	2021-03-01 22:58:09	Dr. Aurelio Stiedemann Jr.	866-349-7463	rosamond17@lakin.biz	Molestiae dolor est maxime voluptates ex et deserunt fugiat. Quos aliquid eos laboriosam velit amet. Nam optio in occaecati. Aliquid reiciendis voluptatem doloribus exercitationem. Placeat et sed omnis quae nostrum vel.	2
52	2021-03-01 22:58:09	2021-03-01 22:58:09	Mandy Bahringer	844.319.4427	xcrist@schoen.org	Et optio consequuntur ab consequuntur illum vero. Nihil et doloremque voluptas explicabo. Accusantium error ea ut est ut vitae delectus. Ut quia omnis saepe totam aut vitae delectus.	3
53	2021-03-01 22:58:09	2021-03-01 22:58:09	Prof. Keven Mann	888-651-7387	alysa.spencer@yahoo.com	Laborum molestias ut corporis. Omnis autem temporibus repudiandae dignissimos. Eaque dolor accusamus voluptatem. Quia dicta est esse earum. Et necessitatibus error ratione ipsa qui. Quis molestiae doloremque excepturi sit. Id est incidunt assumenda vel eius in dolorem.	1
54	2021-03-01 22:58:09	2021-03-01 22:58:09	Miss Delphia Fisher MD	888-587-9146	fjohnson@ratke.com	Soluta quam provident quod nihil quod rerum tempora est. Mollitia quibusdam mollitia dolorem quos est et quia quidem. Laboriosam ab in maiores non. Consequatur est occaecati deserunt quod. Animi aut et laboriosam quia omnis mollitia ipsum quo. Vel voluptatibus sit eos et odio.	1
55	2021-03-01 22:58:09	2021-03-01 22:58:09	Everette Abshire	1-844-789-0677	loraine.marvin@emard.net	Sed culpa porro odit dolore qui blanditiis. Et quos debitis repellat natus quibusdam quia. Doloremque est quaerat reiciendis dolor deleniti laborum provident. Qui molestias et repudiandae praesentium iusto perferendis. Corrupti et eveniet qui nemo. Eos eum sit accusantium aliquam dignissimos.	1
56	2021-03-01 22:58:09	2021-03-01 22:58:09	Trenton Streich	855-841-5416	gladyce18@yahoo.com	Voluptatem aut sint sequi laborum. Perspiciatis et praesentium est. Qui enim et et. Quos maxime consequatur dolorem atque facilis similique soluta qui. Nobis aut qui maiores aut temporibus labore. Voluptatem illo in esse porro et sequi.	3
57	2021-03-01 22:58:09	2021-03-01 22:58:09	Hollis Gutkowski DVM	888-356-3709	jamel.dooley@ortiz.net	Nihil repudiandae consequuntur sit voluptas non laborum maiores aliquid. Sit dolorem vitae placeat odit rerum magnam. Facilis consequatur aut laboriosam odit ut doloremque.	3
58	2021-03-01 22:58:09	2021-03-01 22:58:09	Hosea Rodriguez	1-844-719-8624	coleman33@yost.net	Et eos explicabo nesciunt vitae dolorem quod iste quaerat. Dicta itaque doloribus et perferendis. Commodi qui est rem impedit deserunt cumque.	2
59	2021-03-01 22:58:10	2021-03-01 22:58:10	Gage Predovic PhD	877.530.9402	heath.fritsch@yahoo.com	Incidunt voluptatem quia est voluptate quae. Omnis perspiciatis qui corporis blanditiis. Incidunt aliquid incidunt eius et quaerat eum temporibus.	1
60	2021-03-01 22:58:10	2021-03-01 22:58:10	Stone Abshire	800-720-4555	schimmel.mekhi@gleichner.com	Earum qui sunt et nesciunt velit et ea. Sapiente placeat dolorem et non sed quis qui. Nisi nemo ratione fugiat ad exercitationem ea.	3
61	2021-03-01 22:58:10	2021-03-01 22:58:10	Beryl McKenzie	866-883-6833	klocko.pascale@gmail.com	Animi qui ut qui tempora aut nulla tenetur. Animi ducimus corrupti quod molestias omnis accusamus voluptas. Sunt molestiae nobis repellat perferendis nam officia perferendis culpa.	3
62	2021-03-01 22:58:10	2021-03-01 22:58:10	Ulices Bogan MD	866-946-6313	pbreitenberg@kihn.com	Deserunt qui quia quaerat quia et. Quo in dolor maxime aut nihil ducimus odio rem. Sed placeat et fuga praesentium qui possimus error. Non modi voluptas rerum deleniti quis et consequatur. Quasi temporibus et in maiores. Qui itaque qui corporis culpa sed odio.	2
63	2021-03-01 22:58:10	2021-03-01 22:58:10	Gabe Jacobs	(855) 958-0531	jensen05@dietrich.com	Enim est eos quisquam eius excepturi at. Et quasi quaerat repellendus illum. Commodi cupiditate aspernatur molestiae incidunt dicta laboriosam tempora omnis.	1
64	2021-03-01 22:58:10	2021-03-01 22:58:10	Jamir Willms	(866) 947-7055	wruecker@harber.biz	Esse recusandae vel et sequi rerum iste. Facere quis rerum est cupiditate cumque iure. Hic dignissimos consequuntur deleniti quod. Laboriosam natus dignissimos nihil vitae et. Qui perspiciatis voluptas ad et quam. Perferendis repellat porro commodi optio commodi.	3
65	2021-03-01 22:58:10	2021-03-01 22:58:10	Rhoda Johnson	(844) 860-2504	vern67@yahoo.com	Dolorum omnis et error sed soluta facere iusto. Dolore voluptatum quod ullam ab ea rerum. Sit quo possimus minus at neque non rerum aut. Nesciunt dolorem qui aut numquam repellendus. Possimus ab iure amet sint sit. Porro eos aut sint est. Sunt voluptas accusantium natus ut qui ut illo.	3
66	2021-03-01 22:58:10	2021-03-01 22:58:10	Harley Greenfelder	844-457-6011	hill.summer@hoppe.com	In est dolores vitae consequatur accusamus doloribus molestias. Explicabo nihil in autem dignissimos voluptatibus ut quae.	1
67	2021-03-01 22:58:10	2021-03-01 22:58:10	Mr. Guiseppe Green	877-747-1924	lilla.keebler@hotmail.com	Corrupti sint dolores placeat delectus exercitationem. Facilis ea quidem dolor velit aut est. Quos ut veritatis molestiae quis pariatur.	2
68	2021-03-01 22:58:10	2021-03-01 22:58:10	Eliza Schowalter	844-993-3755	hayes.leo@gmail.com	Autem in dolore itaque eveniet. Architecto itaque repellat enim saepe molestiae iure dignissimos. Ut id voluptates animi laborum eligendi hic. Id asperiores a optio id doloremque et ratione. Nihil ea ut maxime rem.	2
69	2021-03-01 22:58:10	2021-03-01 22:58:10	Dr. Emilio Ruecker I	(800) 448-7568	schultz.holly@pfeffer.com	Reiciendis rerum sed soluta ipsa. Voluptas eum omnis voluptatum eum dignissimos harum sed et. Officia itaque in repellendus voluptas sunt. Aut inventore nemo est cumque est. Rerum nostrum necessitatibus dolore sunt.	1
70	2021-03-01 22:58:10	2021-03-01 22:58:10	Miss Mariah Wehner DDS	(888) 290-6160	norberto99@kunde.com	Voluptatum illum omnis rerum quis animi fugiat tempora. Ad sed fugit sunt a. Dolor nobis enim aut est sed excepturi in. Omnis eos necessitatibus et. Totam magnam aut ipsum aliquam. Corrupti sed sit fugit fuga voluptates necessitatibus temporibus. Autem blanditiis sunt est sit facere.	3
71	2021-03-01 22:58:10	2021-03-01 22:58:10	Savion Lesch	800.907.8563	easton.medhurst@yahoo.com	Id dolor aut sed esse ratione. Dolor nesciunt laborum maxime molestiae molestiae sit harum. Aut et excepturi ut mollitia. Et incidunt tenetur rerum laborum. Et voluptatem laborum fugit eum qui voluptatem. Voluptatem nostrum fugiat cum qui dolor velit eveniet.	2
72	2021-03-01 22:58:10	2021-03-01 22:58:10	Chyna Daugherty	888-644-2278	ndaniel@bergstrom.biz	At ut aliquam expedita voluptatem est ducimus repellendus. Non quae aliquam sunt enim id. At sit velit eligendi dicta repellendus et. Consequatur odit perspiciatis at aliquam sed a. Sit delectus et deleniti magni voluptas.	3
73	2021-03-01 22:58:10	2021-03-01 22:58:10	Violet Welch	855.647.2226	augustus23@emmerich.com	Dicta possimus repudiandae officiis reprehenderit. Voluptatem autem libero labore nam praesentium. Repudiandae corrupti ut quisquam sed. Enim et omnis nulla modi.	1
74	2021-03-01 22:58:10	2021-03-01 22:58:10	Dr. Caesar Kunze	1-877-633-4496	nader.bailee@boyer.com	Assumenda et rerum necessitatibus cupiditate eos eum sit. Sequi officia molestias eos omnis quia. Eveniet ducimus non reprehenderit occaecati sit quaerat voluptatem. Ipsum est maiores nostrum esse totam. Qui fugiat est voluptatem. Dolor rerum id animi sunt porro.	1
75	2021-03-01 22:58:10	2021-03-01 22:58:10	Kaya Lang	855-687-9704	allison14@beahan.info	Voluptas distinctio est qui fugit repellendus. Ab praesentium eveniet minima in. Tempore blanditiis earum voluptate quisquam aut laudantium quo. Voluptas et aut aut nulla rerum. Est error sed sunt impedit odit suscipit voluptas. Porro dicta possimus qui illum sapiente mollitia illum.	2
76	2021-03-01 22:58:10	2021-03-01 22:58:10	Myrl Feil	(855) 418-7650	zschulist@little.org	Nostrum temporibus et atque unde. Aperiam sed quis voluptatem ea aut. Maiores aut quo nostrum adipisci temporibus. Sit eos ut eum iusto ut. Eum porro dolorem quia dolore earum. Molestias rem aliquam iste fuga eos dolor.	2
77	2021-03-01 22:58:10	2021-03-01 22:58:10	Itzel Flatley	888-665-6502	bettie.turner@gmail.com	Aliquid quo doloremque est dolorum. Non neque esse eum et aspernatur. Qui rerum illo omnis non voluptatem ipsum. Nihil ut voluptatem delectus deserunt quidem consectetur. Cum quisquam aut fuga repellendus quia et qui.	3
78	2021-03-01 22:58:10	2021-03-01 22:58:10	Elisabeth Hammes	800.749.9895	samara.dickinson@hotmail.com	Qui velit magnam harum ipsa necessitatibus. Voluptate aut tempora commodi quas deserunt mollitia. Alias quod nobis quo occaecati expedita. Eos omnis eum consequatur accusamus.	3
79	2021-03-01 22:58:10	2021-03-01 22:58:10	Leora Weimann	1-844-970-8192	brenna72@yahoo.com	Cupiditate nobis ea harum. Qui consectetur officiis dolorum nemo. In et enim rem placeat omnis vel non dignissimos. Ex odit repellendus sint sed voluptatem. Labore optio illum molestias qui vero iusto doloremque vel.	2
80	2021-03-01 22:58:10	2021-03-01 22:58:10	Prof. Lula Hyatt	877-456-1012	harris.brant@spinka.com	Et quasi ipsum nisi repellat. Dolorem aspernatur incidunt ut. Odio consequatur earum voluptatem debitis reprehenderit enim laudantium. Quis alias libero praesentium consequatur inventore eos voluptatum. Voluptate quidem ut quas quidem.	3
81	2021-03-01 22:58:10	2021-03-01 22:58:10	Dr. Richmond Jakubowski Jr.	866.237.3339	nwill@hotmail.com	Fugiat hic sit voluptatem. Nostrum omnis possimus consequatur nulla ea cumque quasi. Sit quod reprehenderit iure sed. Est numquam id cum pariatur neque nemo. Et reiciendis molestiae illo ipsum non. Voluptas est nostrum et velit. Pariatur eaque ad in pariatur.	1
82	2021-03-01 22:58:10	2021-03-01 22:58:10	Marquis Schulist MD	1-800-478-3966	fpadberg@hotmail.com	Tempora aperiam nesciunt aliquid doloremque. Dolorum sequi molestiae recusandae voluptatem est. Hic qui eum vel unde ipsam libero quae. Consequatur itaque vel est.	1
83	2021-03-01 22:58:10	2021-03-01 22:58:10	Sydnee Cummings	866-548-9188	champlin.tevin@hahn.com	Velit autem qui id placeat. Corporis provident nihil tenetur ut mollitia ut corporis sed. Ab accusantium iusto eum nostrum rerum nam culpa. Quod vel cum a dolorem.	3
84	2021-03-01 22:58:10	2021-03-01 22:58:10	Moriah Conn	877.268.6575	viva.klocko@yahoo.com	Consectetur eum aut rerum delectus dignissimos. Enim voluptatibus est quasi ut dolores. Voluptatibus voluptate expedita et architecto. Et doloremque rerum harum non nobis eum vel doloremque.	2
85	2021-03-01 22:58:10	2021-03-01 22:58:10	Dr. Caterina Osinski Jr.	(877) 694-0303	raegan.kuhic@hegmann.org	Consequatur optio autem hic ducimus odit recusandae quod omnis. Voluptate voluptatem distinctio minima vero autem quia ex. Consequatur et adipisci culpa autem. Voluptatem ut delectus a assumenda velit tempora.	3
86	2021-03-01 22:58:10	2021-03-01 22:58:10	Laurianne Lynch	800-799-5711	houston.littel@schultz.com	Et aut et ea consequuntur repudiandae enim. Delectus adipisci qui qui et ullam quis dolorem. Earum quae neque quae. Nemo vel alias quam quaerat in.	1
87	2021-03-01 22:58:10	2021-03-01 22:58:10	Elmore Lind	866.776.5824	ziemann.anahi@yahoo.com	Ipsam saepe asperiores et officiis. At accusamus ratione velit voluptatem odio dolores consequuntur et. Voluptas cupiditate quam minima assumenda at. Quo sed labore animi excepturi aut delectus optio. Sunt adipisci est quas qui similique. Natus consequatur cum quas voluptatem quas ipsum ut.	2
88	2021-03-01 22:58:10	2021-03-01 22:58:10	Mrs. Kristy Hammes III	(888) 560-8872	colt.hackett@gorczany.com	Voluptatem culpa temporibus dolorem quibusdam rerum voluptatibus nesciunt suscipit. Animi iusto hic recusandae ut nihil voluptatibus ut voluptas. Perspiciatis et placeat excepturi hic in autem. Voluptas asperiores praesentium sit.	1
89	2021-03-01 22:58:10	2021-03-01 22:58:10	Elenora Torp II	1-855-995-6220	runolfsdottir.madisyn@yahoo.com	Beatae et et inventore ea sed. Odit voluptas ipsa placeat et est. Earum magni non voluptas dolore laudantium. Omnis iure quae reiciendis fugit et. Ducimus cumque minima doloribus recusandae vero numquam fugiat.	3
90	2021-03-01 22:58:10	2021-03-01 22:58:10	Yazmin Bailey	(800) 473-8825	jaylan.klocko@yahoo.com	Quo earum nisi quaerat. Voluptate doloribus quia pariatur itaque. Odio ad et esse. Inventore reprehenderit sed vitae et est.	3
91	2021-03-01 22:58:10	2021-03-01 22:58:10	Karley Skiles	1-888-498-7353	werdman@oberbrunner.com	Libero et voluptatum temporibus est porro dignissimos. Enim quia in id ab. Magni animi unde laborum odit. Accusamus odio pariatur placeat nostrum.	1
92	2021-03-01 22:58:10	2021-03-01 22:58:10	Carlee Hegmann V	855.735.2661	dubuque.katherine@yahoo.com	Repudiandae sint sit vel consectetur. Maiores rerum dolore tenetur et dolores asperiores. Dignissimos earum est repellat.	2
93	2021-03-01 22:58:10	2021-03-01 22:58:10	Napoleon Hagenes DVM	855.269.0013	jones.kellen@schaden.com	Consequuntur voluptatem quam consequatur. Praesentium nesciunt in recusandae molestiae ipsa minus esse. Doloremque commodi quisquam fugiat qui alias esse. Sed rerum possimus laboriosam a.	2
94	2021-03-01 22:58:10	2021-03-01 22:58:10	Dorthy Schimmel	1-844-450-7606	fzboncak@runolfsson.org	Soluta labore natus tempora. Est delectus sunt commodi ut. Voluptas nobis quia ab eligendi magnam provident maiores. Non dolor est cupiditate possimus qui ea ducimus. Nam blanditiis cum quo alias. Omnis tenetur ut recusandae a. Tenetur eius excepturi vitae ipsam.	2
95	2021-03-01 22:58:10	2021-03-01 22:58:10	Mikayla Howell	855-773-5838	alexane30@yahoo.com	Qui itaque iure sunt autem sit. Iste dolorem soluta id. Fuga aliquam ex dicta. Quidem aut earum ipsa aut et quos. At cum dolorem totam et voluptatibus sit. Ut ut sed est non quam sit. Maxime perspiciatis nesciunt corporis pariatur blanditiis totam eaque.	3
96	2021-03-01 22:58:10	2021-03-01 22:58:10	Ashtyn Stroman	888-405-3397	colt59@lubowitz.com	Nulla numquam quos commodi sint reprehenderit. Est molestiae incidunt vel provident adipisci eos nobis autem. Dolores ea blanditiis quaerat aliquid nam. Minus temporibus ut quod. Impedit cupiditate atque et placeat doloremque. Quo tempore repudiandae earum eius.	3
120	2021-03-01 23:15:45	2021-03-01 23:15:45	Cristal Kilback	844-621-4507	hassan.hartmann@smith.biz	Velit occaecati velit et velit est. Quia aspernatur impedit fuga velit dignissimos quae id. Est tempora sed adipisci nobis sed quibusdam ex. Et aut quis nam est est voluptatum ducimus.	2
97	2021-03-01 22:58:10	2021-03-01 22:58:10	Kali Reinger	1-844-295-4515	rolfson.marley@hintz.com	Et vel ipsa in quia. Et quia autem est fugit debitis consequatur consequatur. Ex corporis quas exercitationem eos quis in distinctio. Mollitia tempore dolores consequatur id vel et mollitia. Voluptas voluptatem facilis quas quae cupiditate porro eum et.	2
98	2021-03-01 22:58:10	2021-03-01 22:58:10	Raina Marquardt	866.909.3467	zackery.breitenberg@hauck.com	Quo non debitis et molestias. Quia corrupti debitis rem consequuntur ut explicabo voluptatem. Quia recusandae nam ab et. Commodi similique vel labore in distinctio magnam.	3
99	2021-03-01 22:58:10	2021-03-01 22:58:10	Prof. Lazaro Schmidt	844.957.2526	ovolkman@yahoo.com	Quisquam culpa beatae unde eius et beatae facilis voluptatem. Omnis exercitationem corporis distinctio consequatur commodi fugit voluptas. Non pariatur quas non corporis incidunt deleniti. Nam non veritatis sit fugit suscipit.	2
100	2021-03-01 22:58:10	2021-03-01 22:58:10	Cloyd Sporer	888-812-9125	carissa.haley@kozey.org	Dolorem et alias quia voluptatem molestiae fugit ea. Eligendi velit ipsum dolorum voluptatem quae culpa ad. Similique nihil labore voluptas. Enim rem dignissimos incidunt aperiam quae dolorum.	1
101	2021-03-01 23:15:45	2021-03-01 23:15:45	Aylin Mante	800-902-8208	ismael.wehner@huel.net	Quae id quis fuga fuga dolor accusamus officia. Consequatur fugiat quaerat qui eveniet deserunt. Autem dolorum corporis similique omnis temporibus.	2
102	2021-03-01 23:15:45	2021-03-01 23:15:45	Lois Collins	(866) 930-6327	shanahan.hollis@hotmail.com	Quia iure facere id molestiae. Dolor soluta nobis animi doloremque maiores dolorem qui. Reprehenderit quae necessitatibus officia. Dolore dignissimos nulla et laboriosam ea. Sint quod officia fugit distinctio. Maiores libero sed molestiae aut qui.	3
103	2021-03-01 23:15:45	2021-03-01 23:15:45	Mr. Tevin O'Conner	1-877-558-3802	crystel09@hotmail.com	Non sit exercitationem aliquam at laudantium dolores quo. Qui illum est ratione. Voluptatibus perspiciatis dolores enim officiis.	1
104	2021-03-01 23:15:45	2021-03-01 23:15:45	Era Fahey	844-831-6947	jaylan.daugherty@hotmail.com	Soluta et velit sed. Laborum excepturi eum minima sit at est delectus qui. Nam praesentium nemo ea eaque illum aperiam. Voluptatum dolor enim et dolores tenetur cumque ipsum. Officia nemo cupiditate atque accusantium. Maxime aspernatur occaecati est laborum. Quo adipisci distinctio quia ea sequi.	2
105	2021-03-01 23:15:45	2021-03-01 23:15:45	Dixie Yost	877-616-9579	gdickens@cummerata.com	Omnis est quidem non sint. Ipsa ullam omnis dolor aut ut et. Nobis maiores odit consequatur error. Numquam recusandae voluptate ut porro. Voluptas cumque id omnis aut autem corporis quibusdam est. Optio voluptas voluptate ipsum nisi quibusdam qui quod. Aut exercitationem illum cum voluptas.	3
106	2021-03-01 23:15:45	2021-03-01 23:15:45	Leif Wilderman	1-888-782-9048	cwuckert@hotmail.com	Commodi enim officiis est debitis quo ut. Eum odit nemo totam vel dolorem. Cum ea inventore molestiae doloremque molestias dolor doloribus. Optio rerum qui et ut dicta. Est sed quam dignissimos incidunt laborum quisquam voluptatem. Vel aperiam sint quia dolorum.	1
107	2021-03-01 23:15:45	2021-03-01 23:15:45	May Cummerata	800.369.5860	schumm.deron@yahoo.com	Ab dolor eum numquam enim et ducimus consequuntur. Dolor recusandae labore cumque fugiat consequuntur. Numquam delectus earum itaque et vero incidunt. Cumque iure vitae voluptate tenetur. Ad voluptatibus et commodi voluptatem ea. Quae sapiente voluptatem commodi quo nam.	2
108	2021-03-01 23:15:45	2021-03-01 23:15:45	Timmy Kerluke	1-844-647-3027	adelbert.hoeger@douglas.net	Dolorem expedita omnis nesciunt quod. Consectetur dignissimos saepe qui voluptatem. Ea porro deserunt aut eaque. Aliquid dolores consequatur repudiandae qui iste sit hic.	1
109	2021-03-01 23:15:45	2021-03-01 23:15:45	Jazmyne Connelly	877-632-1564	raven35@mertz.com	Et nobis accusamus ea enim. Ullam dolorem quia asperiores molestiae. Ab tempore delectus molestias.	3
110	2021-03-01 23:15:45	2021-03-01 23:15:45	Norberto Stracke	1-844-862-4586	alex.kutch@rohan.biz	Fuga est nisi sit non est. Nisi dolorem aut quia. Ducimus voluptatibus voluptas et aliquam est beatae. Officiis et consequuntur repellendus quo qui ut perferendis. Consequuntur et incidunt ea aliquam fuga soluta consectetur. Non non dolor ipsa occaecati. Officia vitae nostrum vel qui dolores.	1
111	2021-03-01 23:15:45	2021-03-01 23:15:45	Omer Hyatt	1-877-286-5030	yfahey@yahoo.com	Est cupiditate iure pariatur laborum sequi similique voluptas. Vitae praesentium et et sed sit expedita. Vel aut tempore voluptas. Minus et magnam molestias illo error maiores. Expedita vel sit ea veritatis et ipsum corporis qui. Hic ut natus magnam dolor nihil voluptas.	3
112	2021-03-01 23:15:45	2021-03-01 23:15:45	Prof. Brando Cassin	(855) 930-3647	yost.maryse@gmail.com	Ex fugiat cumque ducimus cupiditate totam maiores dignissimos. Voluptates voluptas officia sint. Aliquam aut hic voluptates. Ut cumque minus aut non consequatur est nemo. Qui vero repellat placeat neque. Harum quo est quae aut. Rem et voluptate ut.	2
113	2021-03-01 23:15:45	2021-03-01 23:15:45	Salma Pacocha	1-800-788-6418	edwardo02@hotmail.com	Unde voluptatum ut et ipsa. Expedita pariatur rerum iure nemo. Eveniet repudiandae et debitis id sapiente quisquam et. Non aliquam distinctio ratione minima ut. Distinctio eum dignissimos magni minus consequatur sit.	2
114	2021-03-01 23:15:45	2021-03-01 23:15:45	Darlene Lesch	844-665-8211	glockman@hotmail.com	At accusamus blanditiis ea quibusdam. Quisquam corrupti debitis quidem voluptatem corrupti. Eum alias voluptatem a voluptatum sint. Culpa eaque alias minima voluptatum repellat aspernatur eveniet ea.	1
115	2021-03-01 23:15:45	2021-03-01 23:15:45	Destiny Smitham	(855) 704-7441	quitzon.dejah@hotmail.com	Rerum molestiae tenetur ea sed quia non. Rerum quia vitae nulla soluta et est. Omnis quasi nam nihil eos. Doloremque delectus ad est nisi doloremque ut. Ut neque explicabo tenetur voluptate et ducimus et.	1
116	2021-03-01 23:15:45	2021-03-01 23:15:45	Prof. Cortney Lakin	(866) 943-3102	fisher.kristian@gmail.com	Enim enim laudantium expedita nisi. Vel quod commodi ipsum voluptate cum ut veniam. Illum nisi rerum quibusdam iure velit sint molestiae.	1
117	2021-03-01 23:15:45	2021-03-01 23:15:45	Kathleen Quigley Jr.	1-844-781-7540	naomi07@fisher.org	Consequatur odit eos quibusdam harum quis perspiciatis maiores. Nisi temporibus alias commodi. Facilis dolorem reprehenderit eos et omnis. Delectus modi laborum in a.	3
118	2021-03-01 23:15:45	2021-03-01 23:15:45	Michale Walter	(855) 236-2709	pkoelpin@grimes.com	Perspiciatis optio eveniet culpa quia. Voluptatum nesciunt in sunt id est qui quo nobis. Quos et ratione deserunt vel praesentium earum omnis. Sit neque debitis provident recusandae consequatur recusandae autem. Qui aut pariatur reprehenderit quia aperiam totam dicta. Minus sunt illum quod ut quod.	1
119	2021-03-01 23:15:45	2021-03-01 23:15:45	Barry Streich III	(855) 282-8582	jaquelin98@gmail.com	Dolorum sapiente harum culpa distinctio. Error beatae sed id in ut consequuntur ut. Suscipit nihil reprehenderit repudiandae. Quod voluptas ut officia laborum dignissimos culpa dolorem.	3
121	2021-03-01 23:15:45	2021-03-01 23:15:45	Zelma King	877-982-7044	christiana.brekke@mcdermott.com	Sapiente quasi accusantium ea vero nulla dolorum suscipit. Quaerat sequi exercitationem est dignissimos et laudantium omnis non. Ex voluptatibus facere eum sit. Et quia tempora quod consequatur voluptatem.	1
122	2021-03-01 23:15:46	2021-03-01 23:15:46	Ayana Lindgren	(888) 651-1093	destiny43@hotmail.com	Aliquid vitae adipisci delectus in. Reiciendis et velit aliquid at laudantium eum sed. Iure a velit et magnam ut occaecati in. Consectetur ratione aspernatur est sint quasi. Quasi aut et illo ipsa nam. Placeat laborum architecto et aut ab.	2
123	2021-03-01 23:15:46	2021-03-01 23:15:46	Kailee Kuhic	(844) 631-1222	cade68@kirlin.com	Ullam ratione et occaecati delectus voluptas. Eveniet quis nostrum assumenda deleniti. Aliquam non rem iusto praesentium omnis nam.	1
124	2021-03-01 23:15:46	2021-03-01 23:15:46	Mrs. Daija Lueilwitz III	1-888-248-5167	purdy.tanner@kiehn.net	Deserunt ad occaecati numquam totam fugiat eius. Voluptatem autem neque dolor quam. Et voluptatem ratione fugit id harum. Enim optio vel quia. Est quam fuga est ut. Tempora sit aperiam autem. Et aut ducimus dignissimos rerum.	2
125	2021-03-01 23:15:46	2021-03-01 23:15:46	Cletus Mraz	(888) 405-7554	amaya.gleichner@gmail.com	Et odio error nisi vel nulla quibusdam alias. Ea est aut dolorem sed. Magni itaque non sed explicabo earum distinctio. Dolor maxime nam facilis voluptatem earum non. Est velit nesciunt amet est odit ipsum ad. Doloremque consectetur et est. Asperiores harum iste fuga non illo quo repellendus.	3
126	2021-03-01 23:15:46	2021-03-01 23:15:46	Miss Retta Berge MD	(866) 427-1444	gmclaughlin@gmail.com	Alias rerum facilis dolore maiores provident ut quia. Fuga in eum ipsum necessitatibus ex assumenda neque. Omnis deleniti sint atque asperiores est. Vitae facilis laudantium eius commodi beatae.	2
127	2021-03-01 23:15:46	2021-03-01 23:15:46	Dr. Logan Osinski Sr.	(866) 804-6790	ferry.josue@hotmail.com	Quae quo sunt rerum et quis quo labore. Itaque similique tenetur repudiandae et. Dolor rerum possimus quidem et quia beatae nisi cum. Consequatur perspiciatis tenetur in quo velit.	1
128	2021-03-01 23:15:46	2021-03-01 23:15:46	Prof. Assunta Crist	1-800-475-8752	leonie.jakubowski@reinger.com	Sint quae quia quo quae ut repellat non. Voluptatibus assumenda vitae nihil excepturi numquam dolorem. Iure omnis porro praesentium in non sit exercitationem. Iure reiciendis perferendis omnis.	1
129	2021-03-01 23:15:46	2021-03-01 23:15:46	Maeve Crooks	1-855-230-8488	lacey.borer@gmail.com	Sequi cupiditate est qui modi vero. Unde laudantium nulla et et libero unde. Nemo sit perspiciatis veritatis ut. Expedita pariatur harum iusto distinctio praesentium. Consectetur blanditiis architecto et. Eius illo repudiandae eveniet.	3
130	2021-03-01 23:15:46	2021-03-01 23:15:46	Miss Wilhelmine Wiegand V	800.569.8683	eula.stiedemann@yahoo.com	Impedit sit voluptates quis eum est ipsum dolorum. Et ipsa sint harum soluta harum unde est rerum. Adipisci animi molestiae occaecati nisi ut voluptas velit. Ab est soluta qui explicabo sit iusto. Quasi tenetur consequatur perspiciatis et.	2
131	2021-03-01 23:15:46	2021-03-01 23:15:46	Jorge Rohan	888-491-8610	aubree68@gmail.com	Fuga molestiae tempora sequi consectetur. Adipisci et soluta quos ea. Ab qui eaque consequatur alias qui omnis. Sapiente rem minima eos porro incidunt laudantium id. Sint expedita provident ea itaque quidem est. Temporibus consectetur id animi.	1
132	2021-03-01 23:15:46	2021-03-01 23:15:46	Mr. Caesar Fay IV	877-435-2864	alta61@gmail.com	Temporibus et aut sint debitis delectus. Est voluptates voluptas aperiam doloribus. Voluptate omnis vero occaecati asperiores voluptas harum cum. Et nostrum consequatur sit reiciendis ipsa nobis culpa. Et deleniti accusamus sit ea. Omnis rerum quis molestias sit doloremque suscipit.	1
133	2021-03-01 23:15:46	2021-03-01 23:15:46	Brooklyn Stoltenberg	1-888-933-7456	ufay@gmail.com	Natus voluptates nam placeat autem nesciunt consequuntur quis rerum. Qui dolorem quia et laborum soluta ab. Iusto reiciendis voluptate ipsam esse quos quis. Quo id molestiae aspernatur in et omnis magnam. Sed eum laboriosam ut omnis.	3
134	2021-03-01 23:15:46	2021-03-01 23:15:46	Prof. Dell Gottlieb	888.682.2938	afunk@yahoo.com	Quia laudantium totam est corrupti. Illum aut omnis qui. Natus aut aliquam ipsa qui dolorem dicta ut. Molestiae in voluptates aliquid. Vel et et aspernatur optio neque corporis. Sit illum voluptatem cum. Corrupti architecto aut ut ea voluptatem. Assumenda voluptas nihil non dolorum ipsa harum.	3
135	2021-03-01 23:15:46	2021-03-01 23:15:46	Mr. Ramiro Nikolaus V	(888) 860-3423	bette63@yahoo.com	Nam beatae ad quaerat ut. Nostrum nam omnis nobis fugiat aliquam doloremque. Tempora et fugit ea aut temporibus impedit. Nesciunt numquam sunt nesciunt repellendus possimus quisquam. Facere cumque est officiis repellendus id itaque. Illo quod quis fugiat rerum.	1
136	2021-03-01 23:15:46	2021-03-01 23:15:46	Prof. Harry Kertzmann	(888) 233-3083	blair.altenwerth@gmail.com	Amet ea cum odit voluptas magni dolorum accusamus. Sed voluptatem voluptates nostrum ut architecto. Assumenda fugiat dolorum voluptate sapiente ullam sit officia.	3
137	2021-03-01 23:15:46	2021-03-01 23:15:46	Bridie Hintz	800.218.6169	lharvey@gmail.com	Quasi non voluptatem laudantium. Totam amet maxime ipsum dolor. Saepe vel iure quia modi autem. Architecto voluptates voluptas qui. Repellat vel a omnis placeat officiis ea.	3
138	2021-03-01 23:15:46	2021-03-01 23:15:46	Josiah Lesch II	(866) 462-1424	carroll.fabiola@yahoo.com	Voluptatibus voluptate accusamus enim placeat exercitationem ut. Ut ducimus nihil possimus eaque sapiente facere asperiores vero. Excepturi illo reiciendis officiis quo. In commodi est voluptatem magni necessitatibus recusandae animi.	2
139	2021-03-01 23:15:46	2021-03-01 23:15:46	Scot Marks	1-888-454-3496	dewitt.bergstrom@hotmail.com	Fuga dolores sunt nihil et tempora vel et cumque. Perspiciatis debitis magnam id excepturi provident. Sequi ipsum consequuntur pariatur. Itaque repellendus sint harum omnis.	2
140	2021-03-01 23:15:46	2021-03-01 23:15:46	Sheldon Roberts	(866) 309-8857	sydney.ferry@cummings.com	Non aperiam nam aspernatur eligendi consequatur ratione. Est occaecati velit repellat pariatur rerum. Recusandae nulla quae porro sit. Ut quam quia dolorem aliquid deleniti. Voluptatem ea et aspernatur est sed iusto.	2
141	2021-03-01 23:15:46	2021-03-01 23:15:46	Juvenal Waters	800.656.8845	chance77@pouros.org	Qui rerum quasi placeat vero doloremque minus. Quod delectus odit veritatis distinctio officiis consequatur. Tenetur dolor harum eligendi. Ex unde laboriosam accusamus.	1
142	2021-03-01 23:15:46	2021-03-01 23:15:46	Deangelo McClure	877.999.9514	rosemarie73@yahoo.com	Quia qui quidem ea minus consequatur sed. Veniam fugiat optio et aliquam et perspiciatis enim est. Dolorem aliquid qui et sint repellat explicabo optio. Officiis qui quasi magni. Dolor incidunt totam reprehenderit autem recusandae. Hic repellat aut necessitatibus rerum rerum molestias.	1
143	2021-03-01 23:15:46	2021-03-01 23:15:46	Cody Kilback	800-644-0142	rupert71@wunsch.com	Consequatur cupiditate voluptatem dolor aut inventore eos. Repudiandae voluptatem vel non quia qui nobis. Est dolorem ex praesentium. Cumque nam ut at quo nisi eligendi.	1
144	2021-03-01 23:15:46	2021-03-01 23:15:46	Nona Torphy MD	1-844-686-2840	kevin26@hotmail.com	Inventore hic beatae velit corrupti minus qui. Qui maiores cum id dolor quaerat dolores inventore et. Et veniam eum est ipsa quod ducimus commodi qui. Cum aperiam nesciunt voluptate sapiente ea.	1
145	2021-03-01 23:15:46	2021-03-01 23:15:46	Winston Skiles	1-877-337-2802	zhyatt@gutmann.com	Est et soluta reiciendis. Omnis voluptatibus omnis voluptates voluptas. Temporibus iusto nemo quod eveniet omnis et nesciunt assumenda. Ut harum non illum occaecati officiis et.	2
146	2021-03-01 23:15:46	2021-03-01 23:15:46	Jerrell Schulist	888-545-9821	kaley.dietrich@yahoo.com	Temporibus commodi optio asperiores consectetur ab quis asperiores. Quas repellat ipsam quis beatae esse ut id. Voluptate culpa possimus omnis consequuntur hic rerum. Cumque perferendis ut at et nihil ut.	3
147	2021-03-01 23:15:46	2021-03-01 23:15:46	Dr. Mark Schiller V	888.471.6215	aortiz@yahoo.com	Quo ratione deleniti possimus voluptatem beatae dicta. Aspernatur consequatur molestias aut sed. Id sed consequatur possimus explicabo deleniti voluptatum illum. A a omnis enim omnis sint enim.	3
148	2021-03-01 23:15:46	2021-03-01 23:15:46	Ivah Osinski DDS	866.386.3629	yvandervort@schultz.org	Neque ut esse sit laudantium minus pariatur veniam. Et aut eum voluptatem ut voluptatem id et. Sed aperiam consectetur sit nemo rem sit. Nam qui ea reprehenderit atque quae rerum corporis. Qui pariatur ipsam similique vitae enim. Itaque dolor harum deserunt perspiciatis quos.	3
149	2021-03-01 23:15:46	2021-03-01 23:15:46	Dr. Angie Doyle DDS	877.887.7182	shaina.reynolds@murray.info	Aut vitae reiciendis accusantium ut numquam eaque totam at. Optio nesciunt quo mollitia omnis modi corporis. Non omnis iusto excepturi dolores nesciunt ea. Suscipit natus vero est id rerum quis.	3
150	2021-03-01 23:15:46	2021-03-01 23:15:46	Deshawn Bruen Jr.	888.200.7515	simonis.kaela@abernathy.info	Sunt odio quia ab assumenda. Corrupti neque consequatur sunt modi neque consequatur. Quasi sequi sapiente sint accusantium placeat aliquam.	3
151	2021-03-01 23:15:46	2021-03-01 23:15:46	Neha Friesen	888.856.3756	jeremie.kling@hotmail.com	Eum maiores et repellendus id voluptates. Officia quod et error. Harum culpa laborum et velit dolor. Incidunt facilis eligendi nisi. Aut at dolore assumenda magni officia. Aliquid aspernatur facilis temporibus sit voluptate nemo dolore.	1
152	2021-03-01 23:15:46	2021-03-01 23:15:46	Russel Abbott	844-947-8083	lschuppe@beer.com	Animi atque fuga laborum fugiat est reiciendis numquam natus. Vel magni quo laboriosam inventore doloribus porro eveniet. Quas minus optio dignissimos beatae repellendus sint. Omnis ab recusandae ab non. Ut minima non veniam corporis et voluptatem rerum.	2
153	2021-03-01 23:15:46	2021-03-01 23:15:46	Telly Krajcik	800.957.9776	raegan.hessel@yahoo.com	Eveniet praesentium reprehenderit eaque at. Reprehenderit ea quis itaque quia accusantium. Vitae vitae et dolor. Dolore reiciendis sapiente porro quia quidem provident. Consequatur dolor quia qui aut. Libero veniam assumenda et natus et. Omnis perferendis sunt id vel omnis libero id.	2
154	2021-03-01 23:15:46	2021-03-01 23:15:46	Columbus Hackett	1-877-394-6932	vschmidt@yahoo.com	Dolorem nihil facere fuga architecto. Ipsa ipsa sunt odit necessitatibus necessitatibus nobis officia et. Sed recusandae et labore quisquam vel.	1
155	2021-03-01 23:15:46	2021-03-01 23:15:46	Devyn Stokes	866-444-8441	ocie.raynor@hotmail.com	Rerum magnam ullam adipisci laudantium et nemo. Dolor omnis delectus facilis consectetur. Ut sint consequatur rem. Est nostrum assumenda iure voluptatem et omnis voluptate.	2
156	2021-03-01 23:15:46	2021-03-01 23:15:46	Edwina McKenzie Sr.	800.617.7392	queenie.labadie@yahoo.com	Sed beatae fuga modi voluptates nostrum aut eius. Sunt dolorum culpa ut nostrum nobis fugit. Et iusto et qui ut. Animi praesentium sed cupiditate mollitia.	3
157	2021-03-01 23:15:46	2021-03-01 23:15:46	Mrs. Florine Runolfsdottir	1-866-854-8669	sdubuque@hotmail.com	Iure molestiae quasi dolorem praesentium necessitatibus fugit. Doloremque sit commodi sit pariatur atque eum voluptas.	3
158	2021-03-01 23:15:46	2021-03-01 23:15:46	Dr. Kara Morar Sr.	(888) 343-0488	shanie88@gmail.com	Eaque dignissimos fugit autem. Qui velit voluptatem fuga quas dicta sed at a. Ut reiciendis consectetur consequuntur fugit fuga. Vitae occaecati quos animi ipsam voluptatibus. Nulla sit autem nam cumque pariatur nam neque. Corrupti quisquam voluptas quaerat quis ratione.	2
159	2021-03-01 23:15:46	2021-03-01 23:15:46	Gaston Goldner	1-866-871-6807	jevon.lowe@yahoo.com	Consequatur excepturi sed ut. Nisi eum perspiciatis eum amet omnis dolores quasi at. Harum veritatis animi architecto labore. Fugit qui eligendi reprehenderit velit. Et libero quo quia aliquid quis ab molestiae.	2
160	2021-03-01 23:15:46	2021-03-01 23:15:46	Gabriella O'Kon	888.763.4864	rweber@yahoo.com	Quaerat unde nam eius rerum. Suscipit iure asperiores blanditiis officiis. Et voluptas labore rerum nobis ipsam dolorem exercitationem. Fugiat maiores qui quia quia nam voluptatibus.	3
161	2021-03-01 23:15:46	2021-03-01 23:15:46	Aidan Torp Jr.	888-473-3947	padberg.claude@hotmail.com	Qui laboriosam beatae voluptate unde aut. Ea qui accusamus ipsam maiores. Suscipit necessitatibus excepturi nobis fugit sunt facere. Dolores natus tempora quidem libero dolorum. Suscipit voluptatem nihil odit libero. Veritatis autem repellat voluptatem. Optio neque doloremque molestiae ab quis.	2
162	2021-03-01 23:15:46	2021-03-01 23:15:46	Lionel Bogisich	1-888-915-8110	kulas.meda@becker.com	Sint quasi qui fuga autem aspernatur fugiat qui. Hic recusandae dolorem porro nulla at cupiditate nulla. Ut beatae ut voluptatum. Consequatur recusandae quaerat excepturi provident voluptate.	2
163	2021-03-01 23:15:46	2021-03-01 23:15:46	Dr. Vicente Denesik	877.375.9359	kwaters@hoppe.com	Dolor quasi saepe sit et possimus quo. Eaque ex aut enim eligendi voluptas est fugit. Nulla ea cum quos tempore. Tempora qui natus quibusdam et. Mollitia ut a quisquam et. Voluptate hic tempore enim eum exercitationem est at. Optio vitae et quis eum. Nulla reiciendis voluptatem hic dolores.	2
164	2021-03-01 23:15:46	2021-03-01 23:15:46	Corrine Konopelski	1-877-374-1702	jakubowski.cameron@wuckert.org	Voluptas et voluptatum rem sint. Dolor porro fugit et consectetur dolores et. Non voluptatibus necessitatibus praesentium aut quo.	1
165	2021-03-01 23:15:46	2021-03-01 23:15:46	Weston Bauch	1-866-437-0288	wcrist@gleichner.info	Temporibus eum fugit accusantium id explicabo. Voluptatum earum et consectetur est. Harum quo praesentium eligendi et unde rerum. Corporis eum magni laboriosam at est optio placeat.	1
166	2021-03-01 23:15:46	2021-03-01 23:15:46	Miss Syble Mills Sr.	(855) 914-4896	stevie72@mcglynn.info	Aperiam aut possimus non cumque non. Aperiam illo cupiditate at nemo similique adipisci. Qui modi sint doloribus hic. Quasi quam voluptatum velit quibusdam quas earum alias. Minus molestiae aperiam sit ut eum quam alias. Repellendus facere dolorum quia aliquid.	3
189	2021-03-01 23:15:46	2021-03-01 23:15:46	Phoebe Legros	(844) 417-2655	cbeer@stracke.com	Nostrum at reprehenderit voluptatem quidem est. Accusamus reprehenderit nihil nam iure earum labore totam. Magnam velit eaque optio.	2
167	2021-03-01 23:15:46	2021-03-01 23:15:46	Mr. Charles Upton Jr.	(855) 389-5003	voconner@kuvalis.com	Quibusdam nihil debitis aut. Qui aut deleniti impedit saepe. Provident dolores voluptas ut numquam delectus blanditiis dolorum. Ducimus quaerat recusandae repellat fugit similique suscipit expedita facilis. Ut quo velit provident adipisci est. Quas ex tempore exercitationem ullam.	3
168	2021-03-01 23:15:46	2021-03-01 23:15:46	Iva O'Reilly	1-877-409-6265	uwilliamson@gmail.com	Dolor in quae corrupti dolor qui eligendi soluta. Tempora ab enim et quibusdam. Maxime recusandae ad aut aliquam aperiam temporibus. Repudiandae facilis voluptas accusamus necessitatibus laudantium nostrum ut.	1
169	2021-03-01 23:15:46	2021-03-01 23:15:46	Felicity Fritsch	1-800-403-8800	schowalter.oscar@weissnat.com	Accusantium tempora eveniet doloremque id omnis aperiam. Molestias cumque esse quo tenetur accusamus necessitatibus laudantium. Voluptates veritatis facere facere et. Et earum a quibusdam. Temporibus sint vel possimus quod rerum sit.	2
170	2021-03-01 23:15:46	2021-03-01 23:15:46	Rodolfo Schumm	(888) 295-9470	stark.brionna@yahoo.com	Molestiae a vel pariatur fugiat voluptatem omnis sunt ullam. Dignissimos in et odio aut quis ipsa porro. Vel fugit et doloribus facere qui. Explicabo ea reiciendis voluptatem. Accusantium et debitis et voluptate quisquam id esse ea. Quas qui est et quia. Dolores et quas est minus.	3
171	2021-03-01 23:15:46	2021-03-01 23:15:46	Gladys Dickens	(866) 203-0965	collins.adolf@ebert.info	Vitae qui consectetur cupiditate sint. Quia voluptas rem recusandae vitae quis nesciunt et tenetur. Voluptatum est omnis sit id autem aut magnam.	2
172	2021-03-01 23:15:46	2021-03-01 23:15:46	Prof. Adam Fahey	844-925-4774	saltenwerth@dickinson.com	Totam vero soluta occaecati adipisci saepe. Animi eligendi laudantium sit necessitatibus minima. Quia eos aspernatur cupiditate rerum rerum omnis eveniet reiciendis.	3
173	2021-03-01 23:15:46	2021-03-01 23:15:46	Ellis Jast	1-844-229-9241	oboyle@yahoo.com	Molestiae porro sed et quam. Quibusdam iusto unde sed rerum reiciendis. Provident dignissimos et nulla enim sed aut dicta et. Et qui itaque dolores consectetur. Voluptatem dolores fuga non. Animi molestiae repudiandae sapiente qui.	2
174	2021-03-01 23:15:46	2021-03-01 23:15:46	Roxane Mraz	(855) 423-5563	vincenza.waters@reichert.com	Placeat tempora error eum cupiditate enim et. Sed placeat sapiente consequatur consequatur et voluptas aperiam. Excepturi id nulla expedita accusamus sequi. Doloribus delectus labore sed officiis omnis. Dolor inventore repellendus optio optio ut sunt. Qui atque optio quia labore nemo tenetur.	2
175	2021-03-01 23:15:46	2021-03-01 23:15:46	Angie Veum	1-866-971-5115	gorczany.jedidiah@bogisich.biz	Est porro aspernatur libero dolor aut aliquam aut quo. Ea voluptatem alias accusantium ut quibusdam sunt. Qui quod libero ut enim omnis veritatis eum. Earum at ut est. Cum reiciendis possimus architecto aut est.	1
176	2021-03-01 23:15:46	2021-03-01 23:15:46	Dr. Orpha Treutel V	1-844-639-7156	reynolds.brennan@shields.com	Illum perspiciatis provident totam enim. Voluptas veniam reprehenderit occaecati. Aliquam at amet non vel optio aut. Consectetur hic assumenda consectetur. Error autem qui nemo veniam officia. Nemo consequatur accusamus mollitia in consequatur dolor doloremque.	3
177	2021-03-01 23:15:46	2021-03-01 23:15:46	Ludie Cole	1-866-898-2703	marks.velva@walker.info	Rerum doloribus omnis ipsum optio. Saepe ipsum est eveniet officiis sed voluptate explicabo. Cupiditate ullam incidunt debitis architecto. Commodi natus quas vel ut. Eius ab sunt magnam libero.	3
178	2021-03-01 23:15:46	2021-03-01 23:15:46	Mr. Gilberto Rohan	1-877-317-6088	nikolaus.camila@hotmail.com	Vel omnis doloribus nihil et. Quidem consequuntur odio dolorem quidem et voluptas. Similique illo repellendus tempora dolor voluptatem ad nostrum. Hic omnis voluptates quo sunt quisquam. Eos eum nemo ex est velit quam eos. Adipisci maxime quos dolore inventore a.	2
179	2021-03-01 23:15:46	2021-03-01 23:15:46	Ressie McGlynn	1-855-515-1310	fohara@block.info	Ea vel corporis officia dignissimos placeat esse enim. Dignissimos sit ullam est maxime libero ea est. Voluptatum sapiente nobis et quia officiis. Non voluptas ipsam eum necessitatibus explicabo. In aut architecto rem voluptatem sit omnis et.	1
180	2021-03-01 23:15:46	2021-03-01 23:15:46	Prof. Jacques Goodwin IV	(844) 838-5890	brennon.huels@emard.net	Dolore quis nam dolore aliquam repudiandae ut. Quibusdam laborum nostrum reprehenderit quia rerum. Debitis quaerat fuga sunt quae omnis accusamus quia nam. Facilis asperiores dolores quo distinctio qui eos molestiae nam.	3
181	2021-03-01 23:15:46	2021-03-01 23:15:46	Price Bahringer	(877) 324-5040	guy.spinka@padberg.com	Aut aut nihil in aut magnam expedita consequatur. Sunt velit temporibus voluptas vel ipsum nulla eligendi. Minima eos suscipit accusamus quod in itaque aperiam. Inventore autem voluptatem omnis velit voluptatem dolore et adipisci. Esse maiores fugiat natus dolores quia doloremque quidem.	3
182	2021-03-01 23:15:46	2021-03-01 23:15:46	Orville Ledner	1-866-928-1305	elroy.hirthe@gmail.com	Qui culpa veniam soluta at ea fuga. Autem error accusamus alias rerum consequatur. Hic dolorem deserunt omnis dolor. Impedit a minus ut magnam. Sapiente enim quis laudantium labore debitis fuga et. Praesentium ut iste voluptatibus praesentium facere aut accusantium. Quis laboriosam quam id qui.	3
183	2021-03-01 23:15:46	2021-03-01 23:15:46	Miles Bruen	1-855-513-4500	terrell83@davis.com	Magni recusandae ipsa qui deserunt. Aliquid rerum corporis dolores ut assumenda quibusdam molestias. Molestias amet quae eum omnis. Totam sed qui commodi vero. Odit ut rerum cupiditate incidunt. Sint quia numquam odio repudiandae est.	3
184	2021-03-01 23:15:46	2021-03-01 23:15:46	Abdul Heaney	(800) 777-5279	nels.bednar@hotmail.com	Nihil quod et et distinctio quisquam possimus. Sed enim similique est beatae repudiandae dolorem. Molestiae iste doloremque tenetur sunt et velit sit est. Reprehenderit et dolorem ipsum labore quo. Ducimus beatae velit vel exercitationem non. Voluptate qui laborum quae perspiciatis.	2
185	2021-03-01 23:15:46	2021-03-01 23:15:46	Paolo Heidenreich	1-877-732-8868	abraham70@gmail.com	Amet asperiores quidem et nihil. Qui quam sunt est eius iusto. Consequatur voluptate laborum quibusdam quaerat labore.	3
186	2021-03-01 23:15:46	2021-03-01 23:15:46	Ms. Delphia Veum	1-888-689-3515	dee.cronin@hotmail.com	Omnis in quos natus iusto. Quis mollitia ut id quaerat ut praesentium vel. Maxime nisi pariatur magni tenetur repudiandae ut. In unde vel quae sed rerum earum. Commodi quis aliquid quia aut. Ex voluptates ut omnis eum facere vitae consequatur.	2
187	2021-03-01 23:15:46	2021-03-01 23:15:46	Prof. Mathew Feest	800.484.2311	cole.rebeka@lowe.com	Nihil vitae quia nihil aut. Deserunt ex quaerat rem quos. Possimus et ab magni sed. Voluptatem et fuga aut sunt molestias. Odio est nisi ad quo eos earum. Est hic aperiam quidem voluptatem itaque. Nobis maiores qui consectetur sint. Nam quo dolores sed fugiat exercitationem impedit laborum.	2
188	2021-03-01 23:15:46	2021-03-01 23:15:46	Christa Nienow	877-233-4021	yleannon@yahoo.com	Natus nisi unde nihil sed. Ut et dolorem quae autem a sed vitae. Facilis voluptatum nisi dolorum suscipit molestias nihil autem. Dicta perspiciatis facilis eum deserunt sed eum nihil.	1
190	2021-03-01 23:15:46	2021-03-01 23:15:46	Rosanna Ledner	844.517.3409	obednar@gmail.com	Recusandae quasi molestiae minima placeat illum repudiandae similique. Enim sapiente velit unde voluptatem aut.	2
191	2021-03-01 23:15:46	2021-03-01 23:15:46	Sydnee Rice I	1-844-227-0723	gabe.hilpert@yahoo.com	Aut ea cupiditate eos delectus reprehenderit officiis neque. Numquam est cumque quas magni ea ut. Nihil quis voluptatem molestiae aspernatur est. Fugiat et consequatur ut.	2
192	2021-03-01 23:15:46	2021-03-01 23:15:46	Margarette Ratke	866-707-2630	roob.florian@hotmail.com	Deserunt adipisci deserunt qui qui esse. Assumenda harum excepturi est modi et est voluptatem. Inventore nobis voluptate est aut nulla voluptates deserunt tempora. Minima corrupti qui cumque aut libero itaque.	1
193	2021-03-01 23:15:46	2021-03-01 23:15:46	Allison Bruen	888-332-8468	sgusikowski@yahoo.com	Aliquid id et suscipit perferendis qui aut. Excepturi culpa consequatur qui et enim. Est voluptatem et aut incidunt sed molestias quia. Sed omnis ullam atque est et. Voluptatem minima sint et voluptatem fuga doloribus molestiae. Error cumque ex natus aut.	2
194	2021-03-01 23:15:46	2021-03-01 23:15:46	Eric Reichert	1-888-259-6795	pbraun@gmail.com	Beatae rerum nihil occaecati voluptatem iste. Repellendus quod inventore voluptatem cum unde perferendis nulla. Earum nihil voluptatem cumque corrupti. Aut laborum corrupti et qui placeat recusandae.	2
195	2021-03-01 23:15:46	2021-03-01 23:15:46	Efrain Effertz	(866) 333-7513	maxie72@yahoo.com	Suscipit exercitationem est eaque reiciendis labore totam nihil voluptas. Modi quis repellat reprehenderit. Hic molestias maxime aut molestias labore. Harum iure facilis consectetur quia minus aut temporibus. Laborum est quasi sed sunt.	1
196	2021-03-01 23:15:46	2021-03-01 23:15:46	Mrs. Modesta Wintheiser	1-888-859-5840	earnest.bruen@hotmail.com	Animi nesciunt tempore amet et voluptatem aperiam voluptatem. Consequatur est dolore commodi iure. Ipsa necessitatibus itaque dolores eos consequatur. Non excepturi est laborum odit. Sunt aperiam et sed repudiandae ut atque cum. Officia et voluptas et. Exercitationem esse assumenda eius illum.	3
197	2021-03-01 23:15:46	2021-03-01 23:15:46	Brianne Brown	(855) 933-2960	hryan@gmail.com	Doloremque vero odit adipisci. Ut eligendi quisquam sed. Perferendis eveniet quibusdam eligendi. Voluptatem dignissimos ut alias commodi. Voluptatem maiores ut non ut et velit. Aliquid vitae vel eum qui tempore expedita. Dolore blanditiis consectetur eos ut dolor.	3
198	2021-03-01 23:15:46	2021-03-01 23:15:46	Berenice Block	800.516.2052	howell.angel@denesik.com	Eligendi exercitationem cupiditate id vel fuga placeat perspiciatis. Tempora omnis dignissimos et qui aut nihil. Odit et voluptatibus beatae consequuntur accusamus qui inventore. Nobis ex voluptas officia nihil quasi asperiores quidem.	3
199	2021-03-01 23:15:46	2021-03-01 23:15:46	Mrs. Ashly Hessel II	(877) 342-1769	daren.mohr@brekke.net	Incidunt aut illo ut dolore. Et tenetur voluptates eum ipsum sunt soluta veritatis. Ducimus reprehenderit veniam itaque consequatur quidem voluptatem sit dolorum. Ut accusantium est voluptatem rerum voluptatem debitis. Odio nihil rerum alias odio. Eligendi sapiente recusandae fugit nihil est ipsa.	3
200	2021-03-01 23:15:46	2021-03-01 23:15:46	Miss Ebony Lueilwitz I	800-475-4481	tavares.gulgowski@prosacco.org	Aut a ducimus est earum laboriosam et. Consequatur modi labore aspernatur impedit reprehenderit. Pariatur natus ea provident provident ea voluptatum velit. Tenetur consequatur voluptas ut deserunt voluptatem sint explicabo dolorem.	3
\.


--
-- Data for Name: unidades; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.unidades (id, unidade, descricao, created_at, updated_at) FROM stdin;
1	UN	Unidade	2021-03-01 23:22:50	2021-03-01 23:22:50
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: wanderson
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
1	Wanderson Teixeira	wanderson@developer.com	\N	778899	\N	2021-03-01 23:10:11	2021-03-01 23:10:11
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: filiais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.filiais_id_seq', 1, false);


--
-- Name: fornecedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.fornecedores_id_seq', 200, true);


--
-- Name: log_acessos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.log_acessos_id_seq', 3, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);


--
-- Name: motivo_contatos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.motivo_contatos_id_seq', 6, true);


--
-- Name: produto_detalhes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.produto_detalhes_id_seq', 1, false);


--
-- Name: produto_filiais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.produto_filiais_id_seq', 1, false);


--
-- Name: produtos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.produtos_id_seq', 104, true);


--
-- Name: site_contatos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.site_contatos_id_seq', 200, true);


--
-- Name: unidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.unidades_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wanderson
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: filiais filiais_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.filiais
    ADD CONSTRAINT filiais_pkey PRIMARY KEY (id);


--
-- Name: fornecedores fornecedores_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_pkey PRIMARY KEY (id);


--
-- Name: log_acessos log_acessos_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.log_acessos
    ADD CONSTRAINT log_acessos_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: motivo_contatos motivo_contatos_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.motivo_contatos
    ADD CONSTRAINT motivo_contatos_pkey PRIMARY KEY (id);


--
-- Name: produto_detalhes produto_detalhes_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_detalhes
    ADD CONSTRAINT produto_detalhes_pkey PRIMARY KEY (id);


--
-- Name: produto_detalhes produto_detalhes_produto_id_unique; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_detalhes
    ADD CONSTRAINT produto_detalhes_produto_id_unique UNIQUE (produto_id);


--
-- Name: produto_filiais produto_filiais_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_filiais
    ADD CONSTRAINT produto_filiais_pkey PRIMARY KEY (id);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);


--
-- Name: site_contatos site_contatos_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.site_contatos
    ADD CONSTRAINT site_contatos_pkey PRIMARY KEY (id);


--
-- Name: unidades unidades_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT unidades_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: produto_detalhes produto_detalhes_produto_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_detalhes
    ADD CONSTRAINT produto_detalhes_produto_id_foreign FOREIGN KEY (produto_id) REFERENCES public.produtos(id) ON DELETE CASCADE;


--
-- Name: produto_detalhes produto_detalhes_unidade_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_detalhes
    ADD CONSTRAINT produto_detalhes_unidade_id_foreign FOREIGN KEY (unidade_id) REFERENCES public.unidades(id) ON UPDATE CASCADE;


--
-- Name: produto_filiais produto_filiais_filial_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_filiais
    ADD CONSTRAINT produto_filiais_filial_id_foreign FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE;


--
-- Name: produto_filiais produto_filiais_produto_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produto_filiais
    ADD CONSTRAINT produto_filiais_produto_id_foreign FOREIGN KEY (produto_id) REFERENCES public.produtos(id) ON UPDATE CASCADE;


--
-- Name: produtos produtos_unidade_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_unidade_id_foreign FOREIGN KEY (unidade_id) REFERENCES public.unidades(id) ON UPDATE CASCADE;


--
-- Name: site_contatos site_contatos_motivo_contatos_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: wanderson
--

ALTER TABLE ONLY public.site_contatos
    ADD CONSTRAINT site_contatos_motivo_contatos_id_foreign FOREIGN KEY (motivo_contatos_id) REFERENCES public.motivo_contatos(id);


--
-- PostgreSQL database dump complete
--

