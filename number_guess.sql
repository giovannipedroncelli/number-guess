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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(30) NOT NULL,
    played integer DEFAULT 0,
    best integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('user_1691253431741', 2, 0);
INSERT INTO public.games VALUES ('user_1691253431742', 5, 0);
INSERT INTO public.games VALUES ('user_1691254112560', 2, 237);
INSERT INTO public.games VALUES ('user_1691254112561', 5, 284);
INSERT INTO public.games VALUES ('user_1691253798863', 2, 804);
INSERT INTO public.games VALUES ('user_1691253798864', 5, 740);
INSERT INTO public.games VALUES ('Giovanni', 4, 8);
INSERT INTO public.games VALUES ('user_1691253941425', 2, 648);
INSERT INTO public.games VALUES ('user_1691253941426', 5, 184);
INSERT INTO public.games VALUES ('user_1691253974217', 2, 441);
INSERT INTO public.games VALUES ('user_1691253974218', 5, 157);
INSERT INTO public.games VALUES ('user_1691254010323', 2, 143);
INSERT INTO public.games VALUES ('user_1691254010324', 5, 127);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

