--
-- PostgreSQL database dump
--

-- Dumped from database version 15.19
-- Dumped by pg_dump version 17.0

-- Started on 2026-10-19 14:32:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 170 (class 2615 OID 216672325)
-- Name: luftfartshindre2; Type: SCHEMA; Schema: -; Owner: geonortst
--

CREATE SCHEMA luftfartshindre2;


ALTER SCHEMA luftfartshindre2 OWNER TO geonortst;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 2197 (class 1259 OID 216672369)
-- Name: datafangstmetode; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.datafangstmetode (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.datafangstmetode OWNER TO geonortst;

--
-- TOC entry 2198 (class 1259 OID 216672374)
-- Name: flatetype; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.flatetype (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.flatetype OWNER TO geonortst;

--
-- TOC entry 2192 (class 1259 OID 216672350)
-- Name: harluftspenn_harmast; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.harluftspenn_harmast (
    harluftspenn_fk uuid NOT NULL,
    harmast_fk uuid NOT NULL
);


ALTER TABLE luftfartshindre2.harluftspenn_harmast OWNER TO geonortst;

--
-- TOC entry 2199 (class 1259 OID 216672379)
-- Name: hoydereferanse; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.hoydereferanse (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.hoydereferanse OWNER TO geonortst;

--
-- TOC entry 2200 (class 1259 OID 216672384)
-- Name: linjetype; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.linjetype (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.linjetype OWNER TO geonortst;

--
-- TOC entry 2201 (class 1259 OID 216672389)
-- Name: luftfartshinderlyssetting; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.luftfartshinderlyssetting (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.luftfartshinderlyssetting OWNER TO geonortst;

--
-- TOC entry 2202 (class 1259 OID 216672394)
-- Name: luftfartshindermerking; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.luftfartshindermerking (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.luftfartshindermerking OWNER TO geonortst;

--
-- TOC entry 2203 (class 1259 OID 216672399)
-- Name: luftspenntype; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.luftspenntype (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.luftspenntype OWNER TO geonortst;

--
-- TOC entry 2204 (class 1259 OID 216672404)
-- Name: masttype; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.masttype (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.masttype OWNER TO geonortst;

--
-- TOC entry 2205 (class 1259 OID 216672409)
-- Name: materiale; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.materiale (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.materiale OWNER TO geonortst;

--
-- TOC entry 2187 (class 1259 OID 216672327)
-- Name: nrlflate; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.nrlflate (
    objid integer NOT NULL,
    objtype text DEFAULT 'NrlFlate'::text NOT NULL,
    lokalid uuid NOT NULL,
    navnerom text NOT NULL,
    versjonid text,
    oppdateringsdato timestamp with time zone NOT NULL,
    status text NOT NULL,
    verifisertrapporteringsnoyaktighet text NOT NULL,
    registreringsdato timestamp with time zone NOT NULL,
    navn text,
    vertikalavstand double precision,
    luftfartshindermerking text,
    luftfartshinderlyssetting text,
    materiale text,
    datafangstdato date,
    datafangstmetode text,
    noyaktighet integer,
    datafangstmetodehoyde text,
    noyaktighethoyde integer,
    hoydereferanse text,
    informasjon text,
    flatetype text NOT NULL,
    omrade_ell public.geometry(PolygonZ,4937),
    omrade_egm public.geometry(PolygonZ,4258),
    omrade_nn2 public.geometry(PolygonZ,4258)
);


ALTER TABLE luftfartshindre2.nrlflate OWNER TO geonortst;

--
-- TOC entry 2186 (class 1259 OID 216672326)
-- Name: nrlflate_objid_seq; Type: SEQUENCE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE SEQUENCE luftfartshindre2.nrlflate_objid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE luftfartshindre2.nrlflate_objid_seq OWNER TO geonortst;

--
-- TOC entry 14576 (class 0 OID 0)
-- Dependencies: 2186
-- Name: nrlflate_objid_seq; Type: SEQUENCE OWNED BY; Schema: luftfartshindre2; Owner: geonortst
--

ALTER SEQUENCE luftfartshindre2.nrlflate_objid_seq OWNED BY luftfartshindre2.nrlflate.objid;


--
-- TOC entry 2209 (class 1259 OID 216672702)
-- Name: nrlflate_omrade_egm; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlflate_omrade_egm AS
 SELECT nrlflate.objid,
    nrlflate.objtype,
    nrlflate.lokalid,
    nrlflate.navnerom,
    nrlflate.versjonid,
    nrlflate.oppdateringsdato,
    nrlflate.status,
    nrlflate.verifisertrapporteringsnoyaktighet,
    nrlflate.registreringsdato,
    nrlflate.navn,
    nrlflate.vertikalavstand,
    nrlflate.luftfartshindermerking,
    nrlflate.luftfartshinderlyssetting,
    nrlflate.materiale,
    nrlflate.datafangstdato,
    nrlflate.datafangstmetode,
    nrlflate.noyaktighet,
    nrlflate.datafangstmetodehoyde,
    nrlflate.noyaktighethoyde,
    nrlflate.hoydereferanse,
    nrlflate.informasjon,
    nrlflate.flatetype,
    nrlflate.omrade_egm,
    nrlflate.omrade_nn2
   FROM luftfartshindre2.nrlflate
  WHERE (nrlflate.omrade_egm IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlflate_omrade_egm OWNER TO geonortst;

--
-- TOC entry 2210 (class 1259 OID 216672707)
-- Name: nrlflate_omrade_ell; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlflate_omrade_ell AS
 SELECT nrlflate.objid,
    nrlflate.objtype,
    nrlflate.lokalid,
    nrlflate.navnerom,
    nrlflate.versjonid,
    nrlflate.oppdateringsdato,
    nrlflate.status,
    nrlflate.verifisertrapporteringsnoyaktighet,
    nrlflate.registreringsdato,
    nrlflate.navn,
    nrlflate.vertikalavstand,
    nrlflate.luftfartshindermerking,
    nrlflate.luftfartshinderlyssetting,
    nrlflate.materiale,
    nrlflate.datafangstdato,
    nrlflate.datafangstmetode,
    nrlflate.noyaktighet,
    nrlflate.datafangstmetodehoyde,
    nrlflate.noyaktighethoyde,
    nrlflate.hoydereferanse,
    nrlflate.informasjon,
    nrlflate.flatetype,
    nrlflate.omrade_ell,
    nrlflate.omrade_nn2
   FROM luftfartshindre2.nrlflate
  WHERE (nrlflate.omrade_ell IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlflate_omrade_ell OWNER TO geonortst;

--
-- TOC entry 2211 (class 1259 OID 216672712)
-- Name: nrlflate_omrade_nn2; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlflate_omrade_nn2 AS
 SELECT nrlflate.objid,
    nrlflate.objtype,
    nrlflate.lokalid,
    nrlflate.navnerom,
    nrlflate.versjonid,
    nrlflate.oppdateringsdato,
    nrlflate.status,
    nrlflate.verifisertrapporteringsnoyaktighet,
    nrlflate.registreringsdato,
    nrlflate.navn,
    nrlflate.vertikalavstand,
    nrlflate.luftfartshindermerking,
    nrlflate.luftfartshinderlyssetting,
    nrlflate.materiale,
    nrlflate.datafangstdato,
    nrlflate.datafangstmetode,
    nrlflate.noyaktighet,
    nrlflate.datafangstmetodehoyde,
    nrlflate.noyaktighethoyde,
    nrlflate.hoydereferanse,
    nrlflate.informasjon,
    nrlflate.flatetype,
    nrlflate.omrade_nn2
   FROM luftfartshindre2.nrlflate
  WHERE (nrlflate.omrade_nn2 IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlflate_omrade_nn2 OWNER TO geonortst;

--
-- TOC entry 2189 (class 1259 OID 216672335)
-- Name: nrllinje; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.nrllinje (
    objid integer NOT NULL,
    objtype text DEFAULT 'NrlLinje'::text NOT NULL,
    lokalid uuid NOT NULL,
    navnerom text NOT NULL,
    versjonid text,
    oppdateringsdato timestamp with time zone NOT NULL,
    status text NOT NULL,
    verifisertrapporteringsnoyaktighet text NOT NULL,
    registreringsdato timestamp with time zone NOT NULL,
    navn text,
    vertikalavstand double precision,
    luftfartshindermerking text,
    luftfartshinderlyssetting text,
    materiale text,
    datafangstdato date,
    datafangstmetode text,
    noyaktighet integer,
    datafangstmetodehoyde text,
    noyaktighethoyde integer,
    hoydereferanse text,
    informasjon text,
    linjetype text NOT NULL,
    anleggsbredde double precision,
    beliggenhet_ell public.geometry(LineStringZ,4937),
    beliggenhet_egm public.geometry(LineStringZ,4258),
    beliggenhet_nn2 public.geometry(LineStringZ,4258)
);


ALTER TABLE luftfartshindre2.nrllinje OWNER TO geonortst;

--
-- TOC entry 2212 (class 1259 OID 216672717)
-- Name: nrllinje_beliggenhet_egm; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrllinje_beliggenhet_egm AS
 SELECT nrllinje.objid,
    nrllinje.objtype,
    nrllinje.lokalid,
    nrllinje.navnerom,
    nrllinje.versjonid,
    nrllinje.oppdateringsdato,
    nrllinje.status,
    nrllinje.verifisertrapporteringsnoyaktighet,
    nrllinje.registreringsdato,
    nrllinje.navn,
    nrllinje.vertikalavstand,
    nrllinje.luftfartshindermerking,
    nrllinje.luftfartshinderlyssetting,
    nrllinje.materiale,
    nrllinje.datafangstdato,
    nrllinje.datafangstmetode,
    nrllinje.noyaktighet,
    nrllinje.datafangstmetodehoyde,
    nrllinje.noyaktighethoyde,
    nrllinje.hoydereferanse,
    nrllinje.informasjon,
    nrllinje.linjetype,
    nrllinje.anleggsbredde,
    nrllinje.beliggenhet_egm,
    nrllinje.beliggenhet_nn2
   FROM luftfartshindre2.nrllinje
  WHERE (nrllinje.beliggenhet_egm IS NOT NULL);


ALTER VIEW luftfartshindre2.nrllinje_beliggenhet_egm OWNER TO geonortst;

--
-- TOC entry 2213 (class 1259 OID 216672722)
-- Name: nrllinje_beliggenhet_ell; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrllinje_beliggenhet_ell AS
 SELECT nrllinje.objid,
    nrllinje.objtype,
    nrllinje.lokalid,
    nrllinje.navnerom,
    nrllinje.versjonid,
    nrllinje.oppdateringsdato,
    nrllinje.status,
    nrllinje.verifisertrapporteringsnoyaktighet,
    nrllinje.registreringsdato,
    nrllinje.navn,
    nrllinje.vertikalavstand,
    nrllinje.luftfartshindermerking,
    nrllinje.luftfartshinderlyssetting,
    nrllinje.materiale,
    nrllinje.datafangstdato,
    nrllinje.datafangstmetode,
    nrllinje.noyaktighet,
    nrllinje.datafangstmetodehoyde,
    nrllinje.noyaktighethoyde,
    nrllinje.hoydereferanse,
    nrllinje.informasjon,
    nrllinje.linjetype,
    nrllinje.anleggsbredde,
    nrllinje.beliggenhet_ell,
    nrllinje.beliggenhet_nn2
   FROM luftfartshindre2.nrllinje
  WHERE (nrllinje.beliggenhet_ell IS NOT NULL);


ALTER VIEW luftfartshindre2.nrllinje_beliggenhet_ell OWNER TO geonortst;

--
-- TOC entry 2214 (class 1259 OID 216672727)
-- Name: nrllinje_beliggenhet_nn2; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrllinje_beliggenhet_nn2 AS
 SELECT nrllinje.objid,
    nrllinje.objtype,
    nrllinje.lokalid,
    nrllinje.navnerom,
    nrllinje.versjonid,
    nrllinje.oppdateringsdato,
    nrllinje.status,
    nrllinje.verifisertrapporteringsnoyaktighet,
    nrllinje.registreringsdato,
    nrllinje.navn,
    nrllinje.vertikalavstand,
    nrllinje.luftfartshindermerking,
    nrllinje.luftfartshinderlyssetting,
    nrllinje.materiale,
    nrllinje.datafangstdato,
    nrllinje.datafangstmetode,
    nrllinje.noyaktighet,
    nrllinje.datafangstmetodehoyde,
    nrllinje.noyaktighethoyde,
    nrllinje.hoydereferanse,
    nrllinje.informasjon,
    nrllinje.linjetype,
    nrllinje.anleggsbredde,
    nrllinje.beliggenhet_nn2
   FROM luftfartshindre2.nrllinje
  WHERE (nrllinje.beliggenhet_nn2 IS NOT NULL);


ALTER VIEW luftfartshindre2.nrllinje_beliggenhet_nn2 OWNER TO geonortst;

--
-- TOC entry 2188 (class 1259 OID 216672334)
-- Name: nrllinje_objid_seq; Type: SEQUENCE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE SEQUENCE luftfartshindre2.nrllinje_objid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE luftfartshindre2.nrllinje_objid_seq OWNER TO geonortst;

--
-- TOC entry 14584 (class 0 OID 0)
-- Dependencies: 2188
-- Name: nrllinje_objid_seq; Type: SEQUENCE OWNED BY; Schema: luftfartshindre2; Owner: geonortst
--

ALTER SEQUENCE luftfartshindre2.nrllinje_objid_seq OWNED BY luftfartshindre2.nrllinje.objid;


--
-- TOC entry 2191 (class 1259 OID 216672343)
-- Name: nrlluftspenn; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.nrlluftspenn (
    objid integer NOT NULL,
    objtype text DEFAULT 'NrlLuftspenn'::text NOT NULL,
    lokalid uuid NOT NULL,
    navnerom text NOT NULL,
    versjonid text,
    oppdateringsdato timestamp with time zone NOT NULL,
    status text NOT NULL,
    verifisertrapporteringsnoyaktighet text NOT NULL,
    registreringsdato timestamp with time zone NOT NULL,
    navn text,
    vertikalavstand double precision,
    luftfartshindermerking text,
    luftfartshinderlyssetting text,
    materiale text,
    datafangstdato date,
    datafangstmetode text,
    noyaktighet integer,
    datafangstmetodehoyde text,
    noyaktighethoyde integer,
    hoydereferanse text,
    informasjon text,
    luftspenntype text NOT NULL,
    farligspenn boolean,
    farligspennmerknad text,
    anleggsbredde double precision,
    beliggenhet_ell public.geometry(LineStringZ,4937),
    beliggenhet_egm public.geometry(LineStringZ,4258),
    beliggenhet_nn2 public.geometry(LineStringZ,4258)
);


ALTER TABLE luftfartshindre2.nrlluftspenn OWNER TO geonortst;

--
-- TOC entry 2215 (class 1259 OID 216672732)
-- Name: nrlluftspenn_beliggenhet_egm; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlluftspenn_beliggenhet_egm AS
 SELECT nrlluftspenn.objid,
    nrlluftspenn.objtype,
    nrlluftspenn.lokalid,
    nrlluftspenn.navnerom,
    nrlluftspenn.versjonid,
    nrlluftspenn.oppdateringsdato,
    nrlluftspenn.status,
    nrlluftspenn.verifisertrapporteringsnoyaktighet,
    nrlluftspenn.registreringsdato,
    nrlluftspenn.navn,
    nrlluftspenn.vertikalavstand,
    nrlluftspenn.luftfartshindermerking,
    nrlluftspenn.luftfartshinderlyssetting,
    nrlluftspenn.materiale,
    nrlluftspenn.datafangstdato,
    nrlluftspenn.datafangstmetode,
    nrlluftspenn.noyaktighet,
    nrlluftspenn.datafangstmetodehoyde,
    nrlluftspenn.noyaktighethoyde,
    nrlluftspenn.hoydereferanse,
    nrlluftspenn.informasjon,
    nrlluftspenn.luftspenntype,
    nrlluftspenn.farligspenn,
    nrlluftspenn.farligspennmerknad,
    nrlluftspenn.anleggsbredde,
    nrlluftspenn.beliggenhet_egm,
    nrlluftspenn.beliggenhet_nn2
   FROM luftfartshindre2.nrlluftspenn
  WHERE (nrlluftspenn.beliggenhet_egm IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlluftspenn_beliggenhet_egm OWNER TO geonortst;

--
-- TOC entry 2216 (class 1259 OID 216672737)
-- Name: nrlluftspenn_beliggenhet_ell; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlluftspenn_beliggenhet_ell AS
 SELECT nrlluftspenn.objid,
    nrlluftspenn.objtype,
    nrlluftspenn.lokalid,
    nrlluftspenn.navnerom,
    nrlluftspenn.versjonid,
    nrlluftspenn.oppdateringsdato,
    nrlluftspenn.status,
    nrlluftspenn.verifisertrapporteringsnoyaktighet,
    nrlluftspenn.registreringsdato,
    nrlluftspenn.navn,
    nrlluftspenn.vertikalavstand,
    nrlluftspenn.luftfartshindermerking,
    nrlluftspenn.luftfartshinderlyssetting,
    nrlluftspenn.materiale,
    nrlluftspenn.datafangstdato,
    nrlluftspenn.datafangstmetode,
    nrlluftspenn.noyaktighet,
    nrlluftspenn.datafangstmetodehoyde,
    nrlluftspenn.noyaktighethoyde,
    nrlluftspenn.hoydereferanse,
    nrlluftspenn.informasjon,
    nrlluftspenn.luftspenntype,
    nrlluftspenn.farligspenn,
    nrlluftspenn.farligspennmerknad,
    nrlluftspenn.anleggsbredde,
    nrlluftspenn.beliggenhet_ell,
    nrlluftspenn.beliggenhet_nn2
   FROM luftfartshindre2.nrlluftspenn
  WHERE (nrlluftspenn.beliggenhet_ell IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlluftspenn_beliggenhet_ell OWNER TO geonortst;

--
-- TOC entry 2217 (class 1259 OID 216672742)
-- Name: nrlluftspenn_beliggenhet_nn2; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlluftspenn_beliggenhet_nn2 AS
 SELECT nrlluftspenn.objid,
    nrlluftspenn.objtype,
    nrlluftspenn.lokalid,
    nrlluftspenn.navnerom,
    nrlluftspenn.versjonid,
    nrlluftspenn.oppdateringsdato,
    nrlluftspenn.status,
    nrlluftspenn.verifisertrapporteringsnoyaktighet,
    nrlluftspenn.registreringsdato,
    nrlluftspenn.navn,
    nrlluftspenn.vertikalavstand,
    nrlluftspenn.luftfartshindermerking,
    nrlluftspenn.luftfartshinderlyssetting,
    nrlluftspenn.materiale,
    nrlluftspenn.datafangstdato,
    nrlluftspenn.datafangstmetode,
    nrlluftspenn.noyaktighet,
    nrlluftspenn.datafangstmetodehoyde,
    nrlluftspenn.noyaktighethoyde,
    nrlluftspenn.hoydereferanse,
    nrlluftspenn.informasjon,
    nrlluftspenn.luftspenntype,
    nrlluftspenn.farligspenn,
    nrlluftspenn.farligspennmerknad,
    nrlluftspenn.anleggsbredde,
    nrlluftspenn.beliggenhet_nn2
   FROM luftfartshindre2.nrlluftspenn
  WHERE (nrlluftspenn.beliggenhet_nn2 IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlluftspenn_beliggenhet_nn2 OWNER TO geonortst;

--
-- TOC entry 2190 (class 1259 OID 216672342)
-- Name: nrlluftspenn_objid_seq; Type: SEQUENCE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE SEQUENCE luftfartshindre2.nrlluftspenn_objid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE luftfartshindre2.nrlluftspenn_objid_seq OWNER TO geonortst;

--
-- TOC entry 14589 (class 0 OID 0)
-- Dependencies: 2190
-- Name: nrlluftspenn_objid_seq; Type: SEQUENCE OWNED BY; Schema: luftfartshindre2; Owner: geonortst
--

ALTER SEQUENCE luftfartshindre2.nrlluftspenn_objid_seq OWNED BY luftfartshindre2.nrlluftspenn.objid;


--
-- TOC entry 2194 (class 1259 OID 216672354)
-- Name: nrlmast; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.nrlmast (
    objid integer NOT NULL,
    objtype text DEFAULT 'NrlMast'::text NOT NULL,
    lokalid uuid NOT NULL,
    navnerom text NOT NULL,
    versjonid text,
    oppdateringsdato timestamp with time zone NOT NULL,
    status text NOT NULL,
    verifisertrapporteringsnoyaktighet text NOT NULL,
    registreringsdato timestamp with time zone NOT NULL,
    navn text,
    vertikalavstand double precision,
    luftfartshindermerking text,
    luftfartshinderlyssetting text,
    materiale text,
    datafangstdato date,
    datafangstmetode text,
    noyaktighet integer,
    datafangstmetodehoyde text,
    noyaktighethoyde integer,
    hoydereferanse text,
    informasjon text,
    masttype text NOT NULL,
    horisontalavstand double precision,
    posisjon_ell public.geometry(PointZ,4937),
    posisjon_egm public.geometry(PointZ,4258),
    posisjon_nn2 public.geometry(PointZ,4258)
);


ALTER TABLE luftfartshindre2.nrlmast OWNER TO geonortst;

--
-- TOC entry 2193 (class 1259 OID 216672353)
-- Name: nrlmast_objid_seq; Type: SEQUENCE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE SEQUENCE luftfartshindre2.nrlmast_objid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE luftfartshindre2.nrlmast_objid_seq OWNER TO geonortst;

--
-- TOC entry 14591 (class 0 OID 0)
-- Dependencies: 2193
-- Name: nrlmast_objid_seq; Type: SEQUENCE OWNED BY; Schema: luftfartshindre2; Owner: geonortst
--

ALTER SEQUENCE luftfartshindre2.nrlmast_objid_seq OWNED BY luftfartshindre2.nrlmast.objid;


--
-- TOC entry 2218 (class 1259 OID 216672747)
-- Name: nrlmast_posisjon_egm; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlmast_posisjon_egm AS
 SELECT nrlmast.objid,
    nrlmast.objtype,
    nrlmast.lokalid,
    nrlmast.navnerom,
    nrlmast.versjonid,
    nrlmast.oppdateringsdato,
    nrlmast.status,
    nrlmast.verifisertrapporteringsnoyaktighet,
    nrlmast.registreringsdato,
    nrlmast.navn,
    nrlmast.vertikalavstand,
    nrlmast.luftfartshindermerking,
    nrlmast.luftfartshinderlyssetting,
    nrlmast.materiale,
    nrlmast.datafangstdato,
    nrlmast.datafangstmetode,
    nrlmast.noyaktighet,
    nrlmast.datafangstmetodehoyde,
    nrlmast.noyaktighethoyde,
    nrlmast.hoydereferanse,
    nrlmast.informasjon,
    nrlmast.masttype,
    nrlmast.horisontalavstand,
    nrlmast.posisjon_egm,
    nrlmast.posisjon_nn2
   FROM luftfartshindre2.nrlmast
  WHERE (nrlmast.posisjon_egm IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlmast_posisjon_egm OWNER TO geonortst;

--
-- TOC entry 2219 (class 1259 OID 216672752)
-- Name: nrlmast_posisjon_ell; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlmast_posisjon_ell AS
 SELECT nrlmast.objid,
    nrlmast.objtype,
    nrlmast.lokalid,
    nrlmast.navnerom,
    nrlmast.versjonid,
    nrlmast.oppdateringsdato,
    nrlmast.status,
    nrlmast.verifisertrapporteringsnoyaktighet,
    nrlmast.registreringsdato,
    nrlmast.navn,
    nrlmast.vertikalavstand,
    nrlmast.luftfartshindermerking,
    nrlmast.luftfartshinderlyssetting,
    nrlmast.materiale,
    nrlmast.datafangstdato,
    nrlmast.datafangstmetode,
    nrlmast.noyaktighet,
    nrlmast.datafangstmetodehoyde,
    nrlmast.noyaktighethoyde,
    nrlmast.hoydereferanse,
    nrlmast.informasjon,
    nrlmast.masttype,
    nrlmast.horisontalavstand,
    nrlmast.posisjon_ell,
    nrlmast.posisjon_nn2
   FROM luftfartshindre2.nrlmast
  WHERE (nrlmast.posisjon_ell IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlmast_posisjon_ell OWNER TO geonortst;

--
-- TOC entry 2220 (class 1259 OID 216672757)
-- Name: nrlmast_posisjon_nn2; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlmast_posisjon_nn2 AS
 SELECT nrlmast.objid,
    nrlmast.objtype,
    nrlmast.lokalid,
    nrlmast.navnerom,
    nrlmast.versjonid,
    nrlmast.oppdateringsdato,
    nrlmast.status,
    nrlmast.verifisertrapporteringsnoyaktighet,
    nrlmast.registreringsdato,
    nrlmast.navn,
    nrlmast.vertikalavstand,
    nrlmast.luftfartshindermerking,
    nrlmast.luftfartshinderlyssetting,
    nrlmast.materiale,
    nrlmast.datafangstdato,
    nrlmast.datafangstmetode,
    nrlmast.noyaktighet,
    nrlmast.datafangstmetodehoyde,
    nrlmast.noyaktighethoyde,
    nrlmast.hoydereferanse,
    nrlmast.informasjon,
    nrlmast.masttype,
    nrlmast.horisontalavstand,
    nrlmast.posisjon_nn2
   FROM luftfartshindre2.nrlmast
  WHERE (nrlmast.posisjon_nn2 IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlmast_posisjon_nn2 OWNER TO geonortst;

--
-- TOC entry 2196 (class 1259 OID 216672362)
-- Name: nrlpunkt; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.nrlpunkt (
    objid integer NOT NULL,
    objtype text DEFAULT 'NrlPunkt'::text NOT NULL,
    lokalid uuid NOT NULL,
    navnerom text NOT NULL,
    versjonid text,
    oppdateringsdato timestamp with time zone NOT NULL,
    status text NOT NULL,
    verifisertrapporteringsnoyaktighet text NOT NULL,
    registreringsdato timestamp with time zone NOT NULL,
    navn text,
    vertikalavstand double precision,
    luftfartshindermerking text,
    luftfartshinderlyssetting text,
    materiale text,
    datafangstdato date,
    datafangstmetode text,
    noyaktighet integer,
    datafangstmetodehoyde text,
    noyaktighethoyde integer,
    hoydereferanse text,
    informasjon text,
    punkttype text NOT NULL,
    horisontalavstand double precision,
    posisjon_ell public.geometry(PointZ,4937),
    posisjon_egm public.geometry(PointZ,4258),
    posisjon_nn2 public.geometry(PointZ,4258)
);


ALTER TABLE luftfartshindre2.nrlpunkt OWNER TO geonortst;

--
-- TOC entry 2195 (class 1259 OID 216672361)
-- Name: nrlpunkt_objid_seq; Type: SEQUENCE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE SEQUENCE luftfartshindre2.nrlpunkt_objid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE luftfartshindre2.nrlpunkt_objid_seq OWNER TO geonortst;

--
-- TOC entry 14596 (class 0 OID 0)
-- Dependencies: 2195
-- Name: nrlpunkt_objid_seq; Type: SEQUENCE OWNED BY; Schema: luftfartshindre2; Owner: geonortst
--

ALTER SEQUENCE luftfartshindre2.nrlpunkt_objid_seq OWNED BY luftfartshindre2.nrlpunkt.objid;


--
-- TOC entry 2221 (class 1259 OID 216672762)
-- Name: nrlpunkt_posisjon_egm; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlpunkt_posisjon_egm AS
 SELECT nrlpunkt.objid,
    nrlpunkt.objtype,
    nrlpunkt.lokalid,
    nrlpunkt.navnerom,
    nrlpunkt.versjonid,
    nrlpunkt.oppdateringsdato,
    nrlpunkt.status,
    nrlpunkt.verifisertrapporteringsnoyaktighet,
    nrlpunkt.registreringsdato,
    nrlpunkt.navn,
    nrlpunkt.vertikalavstand,
    nrlpunkt.luftfartshindermerking,
    nrlpunkt.luftfartshinderlyssetting,
    nrlpunkt.materiale,
    nrlpunkt.datafangstdato,
    nrlpunkt.datafangstmetode,
    nrlpunkt.noyaktighet,
    nrlpunkt.datafangstmetodehoyde,
    nrlpunkt.noyaktighethoyde,
    nrlpunkt.hoydereferanse,
    nrlpunkt.informasjon,
    nrlpunkt.punkttype,
    nrlpunkt.horisontalavstand,
    nrlpunkt.posisjon_egm,
    nrlpunkt.posisjon_nn2
   FROM luftfartshindre2.nrlpunkt
  WHERE (nrlpunkt.posisjon_egm IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlpunkt_posisjon_egm OWNER TO geonortst;

--
-- TOC entry 2222 (class 1259 OID 216672767)
-- Name: nrlpunkt_posisjon_ell; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlpunkt_posisjon_ell AS
 SELECT nrlpunkt.objid,
    nrlpunkt.objtype,
    nrlpunkt.lokalid,
    nrlpunkt.navnerom,
    nrlpunkt.versjonid,
    nrlpunkt.oppdateringsdato,
    nrlpunkt.status,
    nrlpunkt.verifisertrapporteringsnoyaktighet,
    nrlpunkt.registreringsdato,
    nrlpunkt.navn,
    nrlpunkt.vertikalavstand,
    nrlpunkt.luftfartshindermerking,
    nrlpunkt.luftfartshinderlyssetting,
    nrlpunkt.materiale,
    nrlpunkt.datafangstdato,
    nrlpunkt.datafangstmetode,
    nrlpunkt.noyaktighet,
    nrlpunkt.datafangstmetodehoyde,
    nrlpunkt.noyaktighethoyde,
    nrlpunkt.hoydereferanse,
    nrlpunkt.informasjon,
    nrlpunkt.punkttype,
    nrlpunkt.horisontalavstand,
    nrlpunkt.posisjon_ell,
    nrlpunkt.posisjon_nn2
   FROM luftfartshindre2.nrlpunkt
  WHERE (nrlpunkt.posisjon_ell IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlpunkt_posisjon_ell OWNER TO geonortst;

--
-- TOC entry 2223 (class 1259 OID 216672772)
-- Name: nrlpunkt_posisjon_nn2; Type: VIEW; Schema: luftfartshindre2; Owner: geonortst
--

CREATE VIEW luftfartshindre2.nrlpunkt_posisjon_nn2 AS
 SELECT nrlpunkt.objid,
    nrlpunkt.objtype,
    nrlpunkt.lokalid,
    nrlpunkt.navnerom,
    nrlpunkt.versjonid,
    nrlpunkt.oppdateringsdato,
    nrlpunkt.status,
    nrlpunkt.verifisertrapporteringsnoyaktighet,
    nrlpunkt.registreringsdato,
    nrlpunkt.navn,
    nrlpunkt.vertikalavstand,
    nrlpunkt.luftfartshindermerking,
    nrlpunkt.luftfartshinderlyssetting,
    nrlpunkt.materiale,
    nrlpunkt.datafangstdato,
    nrlpunkt.datafangstmetode,
    nrlpunkt.noyaktighet,
    nrlpunkt.datafangstmetodehoyde,
    nrlpunkt.noyaktighethoyde,
    nrlpunkt.hoydereferanse,
    nrlpunkt.informasjon,
    nrlpunkt.punkttype,
    nrlpunkt.horisontalavstand,
    nrlpunkt.posisjon_nn2
   FROM luftfartshindre2.nrlpunkt
  WHERE (nrlpunkt.posisjon_nn2 IS NOT NULL);


ALTER VIEW luftfartshindre2.nrlpunkt_posisjon_nn2 OWNER TO geonortst;

--
-- TOC entry 2206 (class 1259 OID 216672414)
-- Name: punkttype; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.punkttype (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.punkttype OWNER TO geonortst;

--
-- TOC entry 2207 (class 1259 OID 216672419)
-- Name: status; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.status (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.status OWNER TO geonortst;

--
-- TOC entry 2208 (class 1259 OID 216672424)
-- Name: verifisertrapporteringsnoyaktighet; Type: TABLE; Schema: luftfartshindre2; Owner: geonortst
--

CREATE TABLE luftfartshindre2.verifisertrapporteringsnoyaktighet (
    identifier text NOT NULL,
    description text
);


ALTER TABLE luftfartshindre2.verifisertrapporteringsnoyaktighet OWNER TO geonortst;

--
-- TOC entry 14107 (class 2604 OID 216672330)
-- Name: nrlflate objid; Type: DEFAULT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate ALTER COLUMN objid SET DEFAULT nextval('luftfartshindre2.nrlflate_objid_seq'::regclass);


--
-- TOC entry 14109 (class 2604 OID 216672338)
-- Name: nrllinje objid; Type: DEFAULT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje ALTER COLUMN objid SET DEFAULT nextval('luftfartshindre2.nrllinje_objid_seq'::regclass);


--
-- TOC entry 14111 (class 2604 OID 216672346)
-- Name: nrlluftspenn objid; Type: DEFAULT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn ALTER COLUMN objid SET DEFAULT nextval('luftfartshindre2.nrlluftspenn_objid_seq'::regclass);


--
-- TOC entry 14113 (class 2604 OID 216672357)
-- Name: nrlmast objid; Type: DEFAULT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast ALTER COLUMN objid SET DEFAULT nextval('luftfartshindre2.nrlmast_objid_seq'::regclass);


--
-- TOC entry 14115 (class 2604 OID 216672365)
-- Name: nrlpunkt objid; Type: DEFAULT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt ALTER COLUMN objid SET DEFAULT nextval('luftfartshindre2.nrlpunkt_objid_seq'::regclass);


--
-- TOC entry 14132 (class 2606 OID 216672442)
-- Name: datafangstmetode datafangstmetode_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.datafangstmetode
    ADD CONSTRAINT datafangstmetode_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14134 (class 2606 OID 216672444)
-- Name: flatetype flatetype_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.flatetype
    ADD CONSTRAINT flatetype_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14126 (class 2606 OID 216672436)
-- Name: harluftspenn_harmast harluftspenn_harmast_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.harluftspenn_harmast
    ADD CONSTRAINT harluftspenn_harmast_pkey PRIMARY KEY (harluftspenn_fk, harmast_fk);


--
-- TOC entry 14136 (class 2606 OID 216672446)
-- Name: hoydereferanse hoydereferanse_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.hoydereferanse
    ADD CONSTRAINT hoydereferanse_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14138 (class 2606 OID 216672448)
-- Name: linjetype linjetype_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.linjetype
    ADD CONSTRAINT linjetype_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14140 (class 2606 OID 216672450)
-- Name: luftfartshinderlyssetting luftfartshinderlyssetting_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.luftfartshinderlyssetting
    ADD CONSTRAINT luftfartshinderlyssetting_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14142 (class 2606 OID 216672452)
-- Name: luftfartshindermerking luftfartshindermerking_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.luftfartshindermerking
    ADD CONSTRAINT luftfartshindermerking_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14144 (class 2606 OID 216672454)
-- Name: luftspenntype luftspenntype_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.luftspenntype
    ADD CONSTRAINT luftspenntype_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14146 (class 2606 OID 216672456)
-- Name: masttype masttype_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.masttype
    ADD CONSTRAINT masttype_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14148 (class 2606 OID 216672458)
-- Name: materiale materiale_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.materiale
    ADD CONSTRAINT materiale_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14118 (class 2606 OID 216672430)
-- Name: nrlflate nrlflate_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_pkey PRIMARY KEY (lokalid);


--
-- TOC entry 14120 (class 2606 OID 216672432)
-- Name: nrllinje nrllinje_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_pkey PRIMARY KEY (lokalid);


--
-- TOC entry 14122 (class 2606 OID 216672434)
-- Name: nrlluftspenn nrlluftspenn_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_pkey PRIMARY KEY (lokalid);


--
-- TOC entry 14128 (class 2606 OID 216672438)
-- Name: nrlmast nrlmast_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_pkey PRIMARY KEY (lokalid);


--
-- TOC entry 14130 (class 2606 OID 216672440)
-- Name: nrlpunkt nrlpunkt_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_pkey PRIMARY KEY (lokalid);


--
-- TOC entry 14150 (class 2606 OID 216672460)
-- Name: punkttype punkttype_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.punkttype
    ADD CONSTRAINT punkttype_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14152 (class 2606 OID 216672462)
-- Name: status status_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14154 (class 2606 OID 216672464)
-- Name: verifisertrapporteringsnoyaktighet verifisertrapporteringsnoyaktighet_pkey; Type: CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.verifisertrapporteringsnoyaktighet
    ADD CONSTRAINT verifisertrapporteringsnoyaktighet_pkey PRIMARY KEY (identifier);


--
-- TOC entry 14123 (class 1259 OID 216672700)
-- Name: harluftspenn_harmast_harluftspenn_fk_idx; Type: INDEX; Schema: luftfartshindre2; Owner: geonortst
--

CREATE INDEX harluftspenn_harmast_harluftspenn_fk_idx ON luftfartshindre2.harluftspenn_harmast USING btree (harluftspenn_fk);


--
-- TOC entry 14124 (class 1259 OID 216672701)
-- Name: harluftspenn_harmast_harmast_fk_idx; Type: INDEX; Schema: luftfartshindre2; Owner: geonortst
--

CREATE INDEX harluftspenn_harmast_harmast_fk_idx ON luftfartshindre2.harluftspenn_harmast USING btree (harmast_fk);


--
-- TOC entry 14182 (class 2606 OID 216672600)
-- Name: harluftspenn_harmast harluftspenn_harmast_harluftspenn_fk_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.harluftspenn_harmast
    ADD CONSTRAINT harluftspenn_harmast_harluftspenn_fk_fkey FOREIGN KEY (harluftspenn_fk) REFERENCES luftfartshindre2.nrlluftspenn(lokalid);


--
-- TOC entry 14183 (class 2606 OID 216672605)
-- Name: harluftspenn_harmast harluftspenn_harmast_harmast_fk_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.harluftspenn_harmast
    ADD CONSTRAINT harluftspenn_harmast_harmast_fk_fkey FOREIGN KEY (harmast_fk) REFERENCES luftfartshindre2.nrlmast(lokalid);


--
-- TOC entry 14155 (class 2606 OID 216672490)
-- Name: nrlflate nrlflate_datafangstmetode_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_datafangstmetode_fkey FOREIGN KEY (datafangstmetode) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14156 (class 2606 OID 216672495)
-- Name: nrlflate nrlflate_datafangstmetodehoyde_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_datafangstmetodehoyde_fkey FOREIGN KEY (datafangstmetodehoyde) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14157 (class 2606 OID 216672505)
-- Name: nrlflate nrlflate_flatetype_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_flatetype_fkey FOREIGN KEY (flatetype) REFERENCES luftfartshindre2.flatetype(identifier);


--
-- TOC entry 14158 (class 2606 OID 216672500)
-- Name: nrlflate nrlflate_hoydereferanse_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_hoydereferanse_fkey FOREIGN KEY (hoydereferanse) REFERENCES luftfartshindre2.hoydereferanse(identifier);


--
-- TOC entry 14159 (class 2606 OID 216672480)
-- Name: nrlflate nrlflate_luftfartshinderlyssetting_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_luftfartshinderlyssetting_fkey FOREIGN KEY (luftfartshinderlyssetting) REFERENCES luftfartshindre2.luftfartshinderlyssetting(identifier);


--
-- TOC entry 14160 (class 2606 OID 216672475)
-- Name: nrlflate nrlflate_luftfartshindermerking_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_luftfartshindermerking_fkey FOREIGN KEY (luftfartshindermerking) REFERENCES luftfartshindre2.luftfartshindermerking(identifier);


--
-- TOC entry 14161 (class 2606 OID 216672485)
-- Name: nrlflate nrlflate_materiale_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_materiale_fkey FOREIGN KEY (materiale) REFERENCES luftfartshindre2.materiale(identifier);


--
-- TOC entry 14162 (class 2606 OID 216672465)
-- Name: nrlflate nrlflate_status_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_status_fkey FOREIGN KEY (status) REFERENCES luftfartshindre2.status(identifier);


--
-- TOC entry 14163 (class 2606 OID 216672470)
-- Name: nrlflate nrlflate_verifisertrapporteringsnoyaktighet_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlflate
    ADD CONSTRAINT nrlflate_verifisertrapporteringsnoyaktighet_fkey FOREIGN KEY (verifisertrapporteringsnoyaktighet) REFERENCES luftfartshindre2.verifisertrapporteringsnoyaktighet(identifier);


--
-- TOC entry 14164 (class 2606 OID 216672535)
-- Name: nrllinje nrllinje_datafangstmetode_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_datafangstmetode_fkey FOREIGN KEY (datafangstmetode) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14165 (class 2606 OID 216672540)
-- Name: nrllinje nrllinje_datafangstmetodehoyde_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_datafangstmetodehoyde_fkey FOREIGN KEY (datafangstmetodehoyde) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14166 (class 2606 OID 216672545)
-- Name: nrllinje nrllinje_hoydereferanse_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_hoydereferanse_fkey FOREIGN KEY (hoydereferanse) REFERENCES luftfartshindre2.hoydereferanse(identifier);


--
-- TOC entry 14167 (class 2606 OID 216672550)
-- Name: nrllinje nrllinje_linjetype_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_linjetype_fkey FOREIGN KEY (linjetype) REFERENCES luftfartshindre2.linjetype(identifier);


--
-- TOC entry 14168 (class 2606 OID 216672525)
-- Name: nrllinje nrllinje_luftfartshinderlyssetting_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_luftfartshinderlyssetting_fkey FOREIGN KEY (luftfartshinderlyssetting) REFERENCES luftfartshindre2.luftfartshinderlyssetting(identifier);


--
-- TOC entry 14169 (class 2606 OID 216672520)
-- Name: nrllinje nrllinje_luftfartshindermerking_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_luftfartshindermerking_fkey FOREIGN KEY (luftfartshindermerking) REFERENCES luftfartshindre2.luftfartshindermerking(identifier);


--
-- TOC entry 14170 (class 2606 OID 216672530)
-- Name: nrllinje nrllinje_materiale_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_materiale_fkey FOREIGN KEY (materiale) REFERENCES luftfartshindre2.materiale(identifier);


--
-- TOC entry 14171 (class 2606 OID 216672510)
-- Name: nrllinje nrllinje_status_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_status_fkey FOREIGN KEY (status) REFERENCES luftfartshindre2.status(identifier);


--
-- TOC entry 14172 (class 2606 OID 216672515)
-- Name: nrllinje nrllinje_verifisertrapporteringsnoyaktighet_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrllinje
    ADD CONSTRAINT nrllinje_verifisertrapporteringsnoyaktighet_fkey FOREIGN KEY (verifisertrapporteringsnoyaktighet) REFERENCES luftfartshindre2.verifisertrapporteringsnoyaktighet(identifier);


--
-- TOC entry 14173 (class 2606 OID 216672580)
-- Name: nrlluftspenn nrlluftspenn_datafangstmetode_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_datafangstmetode_fkey FOREIGN KEY (datafangstmetode) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14174 (class 2606 OID 216672585)
-- Name: nrlluftspenn nrlluftspenn_datafangstmetodehoyde_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_datafangstmetodehoyde_fkey FOREIGN KEY (datafangstmetodehoyde) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14175 (class 2606 OID 216672590)
-- Name: nrlluftspenn nrlluftspenn_hoydereferanse_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_hoydereferanse_fkey FOREIGN KEY (hoydereferanse) REFERENCES luftfartshindre2.hoydereferanse(identifier);


--
-- TOC entry 14176 (class 2606 OID 216672570)
-- Name: nrlluftspenn nrlluftspenn_luftfartshinderlyssetting_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_luftfartshinderlyssetting_fkey FOREIGN KEY (luftfartshinderlyssetting) REFERENCES luftfartshindre2.luftfartshinderlyssetting(identifier);


--
-- TOC entry 14177 (class 2606 OID 216672565)
-- Name: nrlluftspenn nrlluftspenn_luftfartshindermerking_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_luftfartshindermerking_fkey FOREIGN KEY (luftfartshindermerking) REFERENCES luftfartshindre2.luftfartshindermerking(identifier);


--
-- TOC entry 14178 (class 2606 OID 216672595)
-- Name: nrlluftspenn nrlluftspenn_luftspenntype_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_luftspenntype_fkey FOREIGN KEY (luftspenntype) REFERENCES luftfartshindre2.luftspenntype(identifier);


--
-- TOC entry 14179 (class 2606 OID 216672575)
-- Name: nrlluftspenn nrlluftspenn_materiale_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_materiale_fkey FOREIGN KEY (materiale) REFERENCES luftfartshindre2.materiale(identifier);


--
-- TOC entry 14180 (class 2606 OID 216672555)
-- Name: nrlluftspenn nrlluftspenn_status_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_status_fkey FOREIGN KEY (status) REFERENCES luftfartshindre2.status(identifier);


--
-- TOC entry 14181 (class 2606 OID 216672560)
-- Name: nrlluftspenn nrlluftspenn_verifisertrapporteringsnoyaktighet_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlluftspenn
    ADD CONSTRAINT nrlluftspenn_verifisertrapporteringsnoyaktighet_fkey FOREIGN KEY (verifisertrapporteringsnoyaktighet) REFERENCES luftfartshindre2.verifisertrapporteringsnoyaktighet(identifier);


--
-- TOC entry 14184 (class 2606 OID 216672635)
-- Name: nrlmast nrlmast_datafangstmetode_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_datafangstmetode_fkey FOREIGN KEY (datafangstmetode) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14185 (class 2606 OID 216672640)
-- Name: nrlmast nrlmast_datafangstmetodehoyde_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_datafangstmetodehoyde_fkey FOREIGN KEY (datafangstmetodehoyde) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14186 (class 2606 OID 216672645)
-- Name: nrlmast nrlmast_hoydereferanse_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_hoydereferanse_fkey FOREIGN KEY (hoydereferanse) REFERENCES luftfartshindre2.hoydereferanse(identifier);


--
-- TOC entry 14187 (class 2606 OID 216672625)
-- Name: nrlmast nrlmast_luftfartshinderlyssetting_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_luftfartshinderlyssetting_fkey FOREIGN KEY (luftfartshinderlyssetting) REFERENCES luftfartshindre2.luftfartshinderlyssetting(identifier);


--
-- TOC entry 14188 (class 2606 OID 216672620)
-- Name: nrlmast nrlmast_luftfartshindermerking_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_luftfartshindermerking_fkey FOREIGN KEY (luftfartshindermerking) REFERENCES luftfartshindre2.luftfartshindermerking(identifier);


--
-- TOC entry 14189 (class 2606 OID 216672650)
-- Name: nrlmast nrlmast_masttype_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_masttype_fkey FOREIGN KEY (masttype) REFERENCES luftfartshindre2.masttype(identifier);


--
-- TOC entry 14190 (class 2606 OID 216672630)
-- Name: nrlmast nrlmast_materiale_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_materiale_fkey FOREIGN KEY (materiale) REFERENCES luftfartshindre2.materiale(identifier);


--
-- TOC entry 14191 (class 2606 OID 216672610)
-- Name: nrlmast nrlmast_status_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_status_fkey FOREIGN KEY (status) REFERENCES luftfartshindre2.status(identifier);


--
-- TOC entry 14192 (class 2606 OID 216672615)
-- Name: nrlmast nrlmast_verifisertrapporteringsnoyaktighet_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlmast
    ADD CONSTRAINT nrlmast_verifisertrapporteringsnoyaktighet_fkey FOREIGN KEY (verifisertrapporteringsnoyaktighet) REFERENCES luftfartshindre2.verifisertrapporteringsnoyaktighet(identifier);


--
-- TOC entry 14193 (class 2606 OID 216672680)
-- Name: nrlpunkt nrlpunkt_datafangstmetode_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_datafangstmetode_fkey FOREIGN KEY (datafangstmetode) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14194 (class 2606 OID 216672685)
-- Name: nrlpunkt nrlpunkt_datafangstmetodehoyde_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_datafangstmetodehoyde_fkey FOREIGN KEY (datafangstmetodehoyde) REFERENCES luftfartshindre2.datafangstmetode(identifier);


--
-- TOC entry 14195 (class 2606 OID 216672690)
-- Name: nrlpunkt nrlpunkt_hoydereferanse_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_hoydereferanse_fkey FOREIGN KEY (hoydereferanse) REFERENCES luftfartshindre2.hoydereferanse(identifier);


--
-- TOC entry 14196 (class 2606 OID 216672670)
-- Name: nrlpunkt nrlpunkt_luftfartshinderlyssetting_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_luftfartshinderlyssetting_fkey FOREIGN KEY (luftfartshinderlyssetting) REFERENCES luftfartshindre2.luftfartshinderlyssetting(identifier);


--
-- TOC entry 14197 (class 2606 OID 216672665)
-- Name: nrlpunkt nrlpunkt_luftfartshindermerking_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_luftfartshindermerking_fkey FOREIGN KEY (luftfartshindermerking) REFERENCES luftfartshindre2.luftfartshindermerking(identifier);


--
-- TOC entry 14198 (class 2606 OID 216672675)
-- Name: nrlpunkt nrlpunkt_materiale_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_materiale_fkey FOREIGN KEY (materiale) REFERENCES luftfartshindre2.materiale(identifier);


--
-- TOC entry 14199 (class 2606 OID 216672695)
-- Name: nrlpunkt nrlpunkt_punkttype_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_punkttype_fkey FOREIGN KEY (punkttype) REFERENCES luftfartshindre2.punkttype(identifier);


--
-- TOC entry 14200 (class 2606 OID 216672655)
-- Name: nrlpunkt nrlpunkt_status_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_status_fkey FOREIGN KEY (status) REFERENCES luftfartshindre2.status(identifier);


--
-- TOC entry 14201 (class 2606 OID 216672660)
-- Name: nrlpunkt nrlpunkt_verifisertrapporteringsnoyaktighet_fkey; Type: FK CONSTRAINT; Schema: luftfartshindre2; Owner: geonortst
--

ALTER TABLE ONLY luftfartshindre2.nrlpunkt
    ADD CONSTRAINT nrlpunkt_verifisertrapporteringsnoyaktighet_fkey FOREIGN KEY (verifisertrapporteringsnoyaktighet) REFERENCES luftfartshindre2.verifisertrapporteringsnoyaktighet(identifier);


--
-- TOC entry 14564 (class 0 OID 0)
-- Dependencies: 170
-- Name: SCHEMA luftfartshindre2; Type: ACL; Schema: -; Owner: geonortst
--

GRANT USAGE ON SCHEMA luftfartshindre2 TO readonlygeo;


--
-- TOC entry 14565 (class 0 OID 0)
-- Dependencies: 2197
-- Name: TABLE datafangstmetode; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.datafangstmetode TO readonlygeo;


--
-- TOC entry 14566 (class 0 OID 0)
-- Dependencies: 2198
-- Name: TABLE flatetype; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.flatetype TO readonlygeo;


--
-- TOC entry 14567 (class 0 OID 0)
-- Dependencies: 2192
-- Name: TABLE harluftspenn_harmast; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.harluftspenn_harmast TO readonlygeo;


--
-- TOC entry 14568 (class 0 OID 0)
-- Dependencies: 2199
-- Name: TABLE hoydereferanse; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.hoydereferanse TO readonlygeo;


--
-- TOC entry 14569 (class 0 OID 0)
-- Dependencies: 2200
-- Name: TABLE linjetype; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.linjetype TO readonlygeo;


--
-- TOC entry 14570 (class 0 OID 0)
-- Dependencies: 2201
-- Name: TABLE luftfartshinderlyssetting; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.luftfartshinderlyssetting TO readonlygeo;


--
-- TOC entry 14571 (class 0 OID 0)
-- Dependencies: 2202
-- Name: TABLE luftfartshindermerking; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.luftfartshindermerking TO readonlygeo;


--
-- TOC entry 14572 (class 0 OID 0)
-- Dependencies: 2203
-- Name: TABLE luftspenntype; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.luftspenntype TO readonlygeo;


--
-- TOC entry 14573 (class 0 OID 0)
-- Dependencies: 2204
-- Name: TABLE masttype; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.masttype TO readonlygeo;


--
-- TOC entry 14574 (class 0 OID 0)
-- Dependencies: 2205
-- Name: TABLE materiale; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.materiale TO readonlygeo;


--
-- TOC entry 14575 (class 0 OID 0)
-- Dependencies: 2187
-- Name: TABLE nrlflate; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlflate TO readonlygeo;


--
-- TOC entry 14577 (class 0 OID 0)
-- Dependencies: 2209
-- Name: TABLE nrlflate_omrade_egm; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlflate_omrade_egm TO readonlygeo;


--
-- TOC entry 14578 (class 0 OID 0)
-- Dependencies: 2210
-- Name: TABLE nrlflate_omrade_ell; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlflate_omrade_ell TO readonlygeo;


--
-- TOC entry 14579 (class 0 OID 0)
-- Dependencies: 2211
-- Name: TABLE nrlflate_omrade_nn2; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlflate_omrade_nn2 TO readonlygeo;


--
-- TOC entry 14580 (class 0 OID 0)
-- Dependencies: 2189
-- Name: TABLE nrllinje; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrllinje TO readonlygeo;


--
-- TOC entry 14581 (class 0 OID 0)
-- Dependencies: 2212
-- Name: TABLE nrllinje_beliggenhet_egm; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrllinje_beliggenhet_egm TO readonlygeo;


--
-- TOC entry 14582 (class 0 OID 0)
-- Dependencies: 2213
-- Name: TABLE nrllinje_beliggenhet_ell; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrllinje_beliggenhet_ell TO readonlygeo;


--
-- TOC entry 14583 (class 0 OID 0)
-- Dependencies: 2214
-- Name: TABLE nrllinje_beliggenhet_nn2; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrllinje_beliggenhet_nn2 TO readonlygeo;


--
-- TOC entry 14585 (class 0 OID 0)
-- Dependencies: 2191
-- Name: TABLE nrlluftspenn; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlluftspenn TO readonlygeo;


--
-- TOC entry 14586 (class 0 OID 0)
-- Dependencies: 2215
-- Name: TABLE nrlluftspenn_beliggenhet_egm; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlluftspenn_beliggenhet_egm TO readonlygeo;


--
-- TOC entry 14587 (class 0 OID 0)
-- Dependencies: 2216
-- Name: TABLE nrlluftspenn_beliggenhet_ell; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlluftspenn_beliggenhet_ell TO readonlygeo;


--
-- TOC entry 14588 (class 0 OID 0)
-- Dependencies: 2217
-- Name: TABLE nrlluftspenn_beliggenhet_nn2; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlluftspenn_beliggenhet_nn2 TO readonlygeo;


--
-- TOC entry 14590 (class 0 OID 0)
-- Dependencies: 2194
-- Name: TABLE nrlmast; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlmast TO readonlygeo;


--
-- TOC entry 14592 (class 0 OID 0)
-- Dependencies: 2218
-- Name: TABLE nrlmast_posisjon_egm; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlmast_posisjon_egm TO readonlygeo;


--
-- TOC entry 14593 (class 0 OID 0)
-- Dependencies: 2219
-- Name: TABLE nrlmast_posisjon_ell; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlmast_posisjon_ell TO readonlygeo;


--
-- TOC entry 14594 (class 0 OID 0)
-- Dependencies: 2220
-- Name: TABLE nrlmast_posisjon_nn2; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlmast_posisjon_nn2 TO readonlygeo;


--
-- TOC entry 14595 (class 0 OID 0)
-- Dependencies: 2196
-- Name: TABLE nrlpunkt; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlpunkt TO readonlygeo;


--
-- TOC entry 14597 (class 0 OID 0)
-- Dependencies: 2221
-- Name: TABLE nrlpunkt_posisjon_egm; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlpunkt_posisjon_egm TO readonlygeo;


--
-- TOC entry 14598 (class 0 OID 0)
-- Dependencies: 2222
-- Name: TABLE nrlpunkt_posisjon_ell; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlpunkt_posisjon_ell TO readonlygeo;


--
-- TOC entry 14599 (class 0 OID 0)
-- Dependencies: 2223
-- Name: TABLE nrlpunkt_posisjon_nn2; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.nrlpunkt_posisjon_nn2 TO readonlygeo;


--
-- TOC entry 14600 (class 0 OID 0)
-- Dependencies: 2206
-- Name: TABLE punkttype; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.punkttype TO readonlygeo;


--
-- TOC entry 14601 (class 0 OID 0)
-- Dependencies: 2207
-- Name: TABLE status; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.status TO readonlygeo;


--
-- TOC entry 14602 (class 0 OID 0)
-- Dependencies: 2208
-- Name: TABLE verifisertrapporteringsnoyaktighet; Type: ACL; Schema: luftfartshindre2; Owner: geonortst
--

GRANT SELECT ON TABLE luftfartshindre2.verifisertrapporteringsnoyaktighet TO readonlygeo;


-- Completed on 2026-10-19 14:32:46

--
-- PostgreSQL database dump complete
--

