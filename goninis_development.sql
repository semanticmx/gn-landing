--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: pages; Type: TABLE; Schema: public; Owner: goninis; Tablespace: 
--

CREATE TABLE pages (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pages OWNER TO goninis;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: goninis
--

CREATE SEQUENCE pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO goninis;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goninis
--

ALTER SEQUENCE pages_id_seq OWNED BY pages.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: goninis; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO goninis;

--
-- Name: users; Type: TABLE; Schema: public; Owner: goninis; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    "FNAME" character varying(255),
    "LNAME" character varying(255),
    "EMAIL" character varying(255),
    "CP" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO goninis;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: goninis
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO goninis;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goninis
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: goninis
--

ALTER TABLE ONLY pages ALTER COLUMN id SET DEFAULT nextval('pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: goninis
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: goninis
--

COPY pages (id, title, description, created_at, updated_at) FROM stdin;
4	landing	<aside id="gn-sidebar"><div id="gn-logo"></div><nav id="gn-menu-nav"><ul><li><a href="#" class="gn-text-highlight"><span>SEGURIDAD</span><br/>nuestra tarea No.1</a></li><li><a href="#">Nosotros</a></li><li><a href="#">Como funciona?</a></li><li><a href="#">Por qu&eacute;utilizar goninis?</a></li><li><a href="#">Promociones</a></li><li><a href="#" class="gn-text-highlight">Convi&eacute;rtete en Handy</a></li></ul></nav></aside><section id="gn-content"><section id="gn-content-mailchimp"><div id="gn-content-mailchimp-login"><span class="mailchimp-message">Te avisaremos cuando estemos en tu comunidad</span><span class="mailchimp-login">Si ya tienes un usuario<a href="#">haz click aqu&iacute;</a></span></div><div id="gn-content-mailchimp-form"><form method="post" action=""><label>Correo</label><input id="email" type="text" value="" name="email"><label>C.P</label><input id="cp" type="text" value="" name="cp"><input type="button" alt="button" name="commit" value="Unete!"></form></div></section><section id="gn-content-video"><!--<img src="http://img.youtube.com/vi/_mO79hZaA2s/maxresdefault.jpg" alt="" class="video-thumbnail"/>--><!--<iframe class="video-url" src="http://www.youtube.com/embed/_mO79hZaA2s" frameborder="0" allowfullscreen></iframe>--><div class="video-popup"><h1>Necesitas m&aacute;s tiempo en tu d&iacute;a?,</h1><h4>lo hacemos posible</h4><div class="video-play"></div><span>(Aqui te lo explicamos)</span></div></section></section>	2013-05-28 23:36:34.550734	2013-05-28 23:36:34.550734
\.


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goninis
--

SELECT pg_catalog.setval('pages_id_seq', 4, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: goninis
--

COPY schema_migrations (version) FROM stdin;
20130529024406
20130609050131
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: goninis
--

COPY users (id, "FNAME", "LNAME", "EMAIL", "CP", created_at, updated_at) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goninis
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Name: pages_pkey; Type: CONSTRAINT; Schema: public; Owner: goninis; Tablespace: 
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: goninis; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: goninis; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

