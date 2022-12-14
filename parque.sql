toc.dat                                                                                             0000600 0004000 0002000 00000047426 14255457273 0014472 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       2                    z            Parque    14.3    14.3 G    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         K           1262    16759    Parque    DATABASE     h   CREATE DATABASE "Parque" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Parque";
                postgres    false         ?            1259    17026    ala    TABLE     d   CREATE TABLE public.ala (
    idala integer NOT NULL,
    alanome character varying(45) NOT NULL
);
    DROP TABLE public.ala;
       public         heap    postgres    false         ?            1259    17025    ala_idala_seq    SEQUENCE     ?   CREATE SEQUENCE public.ala_idala_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ala_idala_seq;
       public          postgres    false    217         L           0    0    ala_idala_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ala_idala_seq OWNED BY public.ala.idala;
          public          postgres    false    216         ?            1259    17100    animais    TABLE     
  CREATE TABLE public.animais (
    idanimal integer NOT NULL,
    animalnome character varying(100) NOT NULL,
    tamanho character varying(100) NOT NULL,
    espaco_idespaco integer NOT NULL,
    cor_idcor integer NOT NULL,
    especie_idespecie integer NOT NULL
);
    DROP TABLE public.animais;
       public         heap    postgres    false         ?            1259    16795    cargo    TABLE     k   CREATE TABLE public.cargo (
    idcargo integer NOT NULL,
    cargo_nome character varying(45) NOT NULL
);
    DROP TABLE public.cargo;
       public         heap    postgres    false         ?            1259    16794    cargo_idcargo_seq    SEQUENCE     ?   CREATE SEQUENCE public.cargo_idcargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cargo_idcargo_seq;
       public          postgres    false    213         M           0    0    cargo_idcargo_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.cargo_idcargo_seq OWNED BY public.cargo.idcargo;
          public          postgres    false    212         ?            1259    16783    cidade    TABLE     ?   CREATE TABLE public.cidade (
    cidade_nome character varying(45) NOT NULL,
    idcidade integer NOT NULL,
    estado_idestado integer
);
    DROP TABLE public.cidade;
       public         heap    postgres    false         ?            1259    17070    cidade_idcidade_seq    SEQUENCE     ?   CREATE SEQUENCE public.cidade_idcidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cidade_idcidade_seq;
       public          postgres    false    211         N           0    0    cidade_idcidade_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cidade_idcidade_seq OWNED BY public.cidade.idcidade;
          public          postgres    false    221         ?            1259    16869    consulta    TABLE     ?   CREATE TABLE public.consulta (
    idconsulta integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    diagnostico character varying(255) NOT NULL,
    animais_idanimal integer NOT NULL,
    fun_idfun integer NOT NULL
);
    DROP TABLE public.consulta;
       public         heap    postgres    false         ?            1259    16868    consulta_idconsulta_seq    SEQUENCE     ?   CREATE SEQUENCE public.consulta_idconsulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.consulta_idconsulta_seq;
       public          postgres    false    215         O           0    0    consulta_idconsulta_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.consulta_idconsulta_seq OWNED BY public.consulta.idconsulta;
          public          postgres    false    214         ?            1259    17125    cor    TABLE     d   CREATE TABLE public.cor (
    idcor integer NOT NULL,
    cornome character varying(45) NOT NULL
);
    DROP TABLE public.cor;
       public         heap    postgres    false         ?            1259    17033    espaco    TABLE     ?   CREATE TABLE public.espaco (
    idespaco integer NOT NULL,
    espaco character varying(45) NOT NULL,
    ala_idala integer NOT NULL
);
    DROP TABLE public.espaco;
       public         heap    postgres    false         ?            1259    17032    espaco_idespaco_seq    SEQUENCE     ?   CREATE SEQUENCE public.espaco_idespaco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.espaco_idespaco_seq;
       public          postgres    false    219         P           0    0    espaco_idespaco_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.espaco_idespaco_seq OWNED BY public.espaco.idespaco;
          public          postgres    false    218         ?            1259    17120    especie    TABLE     ?   CREATE TABLE public.especie (
    idespecie integer NOT NULL,
    especienome character varying(45) NOT NULL,
    descricao character varying(255) NOT NULL
);
    DROP TABLE public.especie;
       public         heap    postgres    false         ?            1259    16776    estado    TABLE     n   CREATE TABLE public.estado (
    estado_nome character varying(45) NOT NULL,
    idestado integer NOT NULL
);
    DROP TABLE public.estado;
       public         heap    postgres    false         ?            1259    17062    estado_idestado_seq    SEQUENCE     ?   CREATE SEQUENCE public.estado_idestado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.estado_idestado_seq;
       public          postgres    false    210         Q           0    0    estado_idestado_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.estado_idestado_seq OWNED BY public.estado.idestado;
          public          postgres    false    220         ?            1259    16765    fun    TABLE     ?  CREATE TABLE public.fun (
    nomefun character varying(100) NOT NULL,
    nascdata character varying(11) NOT NULL,
    cpf character varying(15) NOT NULL,
    rg character varying(15) NOT NULL,
    rua character varying(50) NOT NULL,
    numero character varying(15),
    bairro character varying(50) NOT NULL,
    cargo_idcargo integer NOT NULL,
    idfun integer NOT NULL,
    cidade_idcidade integer
);
    DROP TABLE public.fun;
       public         heap    postgres    false         ?            1259    17080    fun_idfun_seq    SEQUENCE     ?   CREATE SEQUENCE public.fun_idfun_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.fun_idfun_seq;
       public          postgres    false    209         R           0    0    fun_idfun_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.fun_idfun_seq OWNED BY public.fun.idfun;
          public          postgres    false    222         ?           2604    17029 	   ala idala    DEFAULT     f   ALTER TABLE ONLY public.ala ALTER COLUMN idala SET DEFAULT nextval('public.ala_idala_seq'::regclass);
 8   ALTER TABLE public.ala ALTER COLUMN idala DROP DEFAULT;
       public          postgres    false    217    216    217         ?           2604    16798    cargo idcargo    DEFAULT     n   ALTER TABLE ONLY public.cargo ALTER COLUMN idcargo SET DEFAULT nextval('public.cargo_idcargo_seq'::regclass);
 <   ALTER TABLE public.cargo ALTER COLUMN idcargo DROP DEFAULT;
       public          postgres    false    212    213    213         ?           2604    17071    cidade idcidade    DEFAULT     r   ALTER TABLE ONLY public.cidade ALTER COLUMN idcidade SET DEFAULT nextval('public.cidade_idcidade_seq'::regclass);
 >   ALTER TABLE public.cidade ALTER COLUMN idcidade DROP DEFAULT;
       public          postgres    false    221    211         ?           2604    16872    consulta idconsulta    DEFAULT     z   ALTER TABLE ONLY public.consulta ALTER COLUMN idconsulta SET DEFAULT nextval('public.consulta_idconsulta_seq'::regclass);
 B   ALTER TABLE public.consulta ALTER COLUMN idconsulta DROP DEFAULT;
       public          postgres    false    215    214    215         ?           2604    17036    espaco idespaco    DEFAULT     r   ALTER TABLE ONLY public.espaco ALTER COLUMN idespaco SET DEFAULT nextval('public.espaco_idespaco_seq'::regclass);
 >   ALTER TABLE public.espaco ALTER COLUMN idespaco DROP DEFAULT;
       public          postgres    false    219    218    219         ?           2604    17063    estado idestado    DEFAULT     r   ALTER TABLE ONLY public.estado ALTER COLUMN idestado SET DEFAULT nextval('public.estado_idestado_seq'::regclass);
 >   ALTER TABLE public.estado ALTER COLUMN idestado DROP DEFAULT;
       public          postgres    false    220    210         ?           2604    17081 	   fun idfun    DEFAULT     f   ALTER TABLE ONLY public.fun ALTER COLUMN idfun SET DEFAULT nextval('public.fun_idfun_seq'::regclass);
 8   ALTER TABLE public.fun ALTER COLUMN idfun DROP DEFAULT;
       public          postgres    false    222    209         =          0    17026    ala 
   TABLE DATA           -   COPY public.ala (idala, alanome) FROM stdin;
    public          postgres    false    217       3389.dat C          0    17100    animais 
   TABLE DATA           o   COPY public.animais (idanimal, animalnome, tamanho, espaco_idespaco, cor_idcor, especie_idespecie) FROM stdin;
    public          postgres    false    223       3395.dat 9          0    16795    cargo 
   TABLE DATA           4   COPY public.cargo (idcargo, cargo_nome) FROM stdin;
    public          postgres    false    213       3385.dat 7          0    16783    cidade 
   TABLE DATA           H   COPY public.cidade (cidade_nome, idcidade, estado_idestado) FROM stdin;
    public          postgres    false    211       3383.dat ;          0    16869    consulta 
   TABLE DATA           b   COPY public.consulta (idconsulta, datahora, diagnostico, animais_idanimal, fun_idfun) FROM stdin;
    public          postgres    false    215       3387.dat E          0    17125    cor 
   TABLE DATA           -   COPY public.cor (idcor, cornome) FROM stdin;
    public          postgres    false    225       3397.dat ?          0    17033    espaco 
   TABLE DATA           =   COPY public.espaco (idespaco, espaco, ala_idala) FROM stdin;
    public          postgres    false    219       3391.dat D          0    17120    especie 
   TABLE DATA           D   COPY public.especie (idespecie, especienome, descricao) FROM stdin;
    public          postgres    false    224       3396.dat 6          0    16776    estado 
   TABLE DATA           7   COPY public.estado (estado_nome, idestado) FROM stdin;
    public          postgres    false    210       3382.dat 5          0    16765    fun 
   TABLE DATA           u   COPY public.fun (nomefun, nascdata, cpf, rg, rua, numero, bairro, cargo_idcargo, idfun, cidade_idcidade) FROM stdin;
    public          postgres    false    209       3381.dat S           0    0    ala_idala_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ala_idala_seq', 4, true);
          public          postgres    false    216         T           0    0    cargo_idcargo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cargo_idcargo_seq', 1, false);
          public          postgres    false    212         U           0    0    cidade_idcidade_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cidade_idcidade_seq', 3, true);
          public          postgres    false    221         V           0    0    consulta_idconsulta_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.consulta_idconsulta_seq', 1, false);
          public          postgres    false    214         W           0    0    espaco_idespaco_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.espaco_idespaco_seq', 1, false);
          public          postgres    false    218         X           0    0    estado_idestado_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.estado_idestado_seq', 27, true);
          public          postgres    false    220         Y           0    0    fun_idfun_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.fun_idfun_seq', 6, true);
          public          postgres    false    222         ?           2606    17031    ala ala_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.ala
    ADD CONSTRAINT ala_pkey PRIMARY KEY (idala);
 6   ALTER TABLE ONLY public.ala DROP CONSTRAINT ala_pkey;
       public            postgres    false    217         ?           2606    17104    animais animais_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_pkey PRIMARY KEY (idanimal);
 >   ALTER TABLE ONLY public.animais DROP CONSTRAINT animais_pkey;
       public            postgres    false    223         ?           2606    16944    cargo cargo_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (idcargo);
 :   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_pkey;
       public            postgres    false    213         ?           2606    17079    cidade cidade_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (idcidade);
 <   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_pkey;
       public            postgres    false    211         ?           2606    16874    consulta consulta_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_pkey PRIMARY KEY (idconsulta);
 @   ALTER TABLE ONLY public.consulta DROP CONSTRAINT consulta_pkey;
       public            postgres    false    215         ?           2606    17129    cor cor_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.cor
    ADD CONSTRAINT cor_pkey PRIMARY KEY (idcor);
 6   ALTER TABLE ONLY public.cor DROP CONSTRAINT cor_pkey;
       public            postgres    false    225         ?           2606    17038    espaco espaco_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT espaco_pkey PRIMARY KEY (idespaco);
 <   ALTER TABLE ONLY public.espaco DROP CONSTRAINT espaco_pkey;
       public            postgres    false    219         ?           2606    17124    especie especie_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_pkey PRIMARY KEY (idespecie);
 >   ALTER TABLE ONLY public.especie DROP CONSTRAINT especie_pkey;
       public            postgres    false    224         ?           2606    17065    estado estado_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (idestado);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            postgres    false    210         ?           2606    17083    fun fun_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.fun
    ADD CONSTRAINT fun_pkey PRIMARY KEY (idfun);
 6   ALTER TABLE ONLY public.fun DROP CONSTRAINT fun_pkey;
       public            postgres    false    209         ?           2606    17130    animais animais_cor_idcor_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_cor_idcor_fkey FOREIGN KEY (cor_idcor) REFERENCES public.cor(idcor);
 H   ALTER TABLE ONLY public.animais DROP CONSTRAINT animais_cor_idcor_fkey;
       public          postgres    false    223    225    3232         ?           2606    17105 $   animais animais_espaco_idespaco_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_espaco_idespaco_fkey FOREIGN KEY (espaco_idespaco) REFERENCES public.espaco(idespaco);
 N   ALTER TABLE ONLY public.animais DROP CONSTRAINT animais_espaco_idespaco_fkey;
       public          postgres    false    3226    219    223         ?           2606    17135 &   animais animais_especie_idespecie_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_especie_idespecie_fkey FOREIGN KEY (especie_idespecie) REFERENCES public.especie(idespecie);
 P   ALTER TABLE ONLY public.animais DROP CONSTRAINT animais_especie_idespecie_fkey;
       public          postgres    false    223    224    3230         ?           2606    17093 "   cidade cidade_estado_idestado_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_estado_idestado_fkey FOREIGN KEY (estado_idestado) REFERENCES public.estado(idestado);
 L   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_estado_idestado_fkey;
       public          postgres    false    3216    211    210         ?           2606    17144 '   consulta consulta_animais_idanimal_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_animais_idanimal_fkey FOREIGN KEY (animais_idanimal) REFERENCES public.animais(idanimal);
 Q   ALTER TABLE ONLY public.consulta DROP CONSTRAINT consulta_animais_idanimal_fkey;
       public          postgres    false    215    3228    223         ?           2606    17149     consulta consulta_fun_idfun_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_fun_idfun_fkey FOREIGN KEY (fun_idfun) REFERENCES public.fun(idfun);
 J   ALTER TABLE ONLY public.consulta DROP CONSTRAINT consulta_fun_idfun_fkey;
       public          postgres    false    215    3214    209         ?           2606    17057    espaco espaco_ala_idala_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT espaco_ala_idala_fkey FOREIGN KEY (ala_idala) REFERENCES public.ala(idala);
 F   ALTER TABLE ONLY public.espaco DROP CONSTRAINT espaco_ala_idala_fkey;
       public          postgres    false    219    217    3224         ?           2606    16945    fun fun_cargo_idcargo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fun
    ADD CONSTRAINT fun_cargo_idcargo_fkey FOREIGN KEY (cargo_idcargo) REFERENCES public.cargo(idcargo);
 D   ALTER TABLE ONLY public.fun DROP CONSTRAINT fun_cargo_idcargo_fkey;
       public          postgres    false    213    3220    209         ?           2606    17088    fun fun_cidade_idcidade_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fun
    ADD CONSTRAINT fun_cidade_idcidade_fkey FOREIGN KEY (cidade_idcidade) REFERENCES public.cidade(idcidade);
 F   ALTER TABLE ONLY public.fun DROP CONSTRAINT fun_cidade_idcidade_fkey;
       public          postgres    false    211    3218    209                                                                                                                                                                                                                                                  3389.dat                                                                                            0000600 0004000 0002000 00000000043 14255457273 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	norte
2	sul
3	leste
4	oeste
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3395.dat                                                                                            0000600 0004000 0002000 00000000713 14255457273 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	tuiuiu	1.40 m	5	5	1
2	papagaio	40 cm	5	8	1
3	avestruz	2.00 m	1	4	1
4	pavao	90 cm	5	7	1
5	aguia	80 cm	1	2	1
6	lagarto	15 cm/ 1.00 m	6	9	3
7	jiboia	4.00 m	4	3	3
8	jabuti	15 cm/40 cm	6	11	3
9	jacare	40 cm/5.00 m	4	2	3
10	leao	1.70 m	7	14	2
11	lobo guara	1.20 m	7	11	2
12	macaco	1.40 m	1	6	2
14	girafa	4.00 m	1	13	2
15	gorila	1.80 m	7	4	2
16	hipopotamo	2.00 m	4	6	2
17	tucano	46 cm	5	9	1
18	coruja	15 cm	5	3	1
19	arara	90 cm	5	7	1
13	elefante	2.20 m	1	6	2
\.


                                                     3385.dat                                                                                            0000600 0004000 0002000 00000000060 14255457273 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Veterinario
2	Cuidador
3	Zelador
4	Admin
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3383.dat                                                                                            0000600 0004000 0002000 00000000056 14255457273 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Curitiba	1	16
São Jose dos Pinhais	2	16
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3387.dat                                                                                            0000600 0004000 0002000 00000000066 14255457273 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2022-06-01 15:30:00	indigestão alimentar	10	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3397.dat                                                                                            0000600 0004000 0002000 00000000326 14255457273 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	marrom
2	marrom-escuro
3	marrom-amarelado
4	preto-branco
6	cinza
7	azul
8	verde
9	preto-amarelado
10	verde-amarelado
11	marrom-avermelhada
12	laranja-avermelhada
5	branco
13	amarelo-tostado
14	amarelo-claro
\.


                                                                                                                                                                                                                                                                                                          3391.dat                                                                                            0000600 0004000 0002000 00000000124 14255457273 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	recinto	1
2	tanque	2
3	poco	2
4	lagoa	3
5	viveiro	4
6	area livre	3
7	jaula	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                            3396.dat                                                                                            0000600 0004000 0002000 00000001321 14255457273 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	aves	As aves são animais vertebrados que se destacam pela presença de suas penas, uma característica exclusiva desse grupo. Muitas espécies apresentam a capacidade de voo, mas nem todas voam, havendo espécies nadadoras e corredoras
2	mamiferos	Os mamíferos são animais vertebrados, conhecidos, principalmente, por apresentarem pelos e glândulas mamárias. A presença de diafragma e dentes diferenciados também são características típicas dos mamíferos
3	repteis	Uma das características mais comuns dos répteis é a locomoção por meio do rastejamento, roçando o ventre no solo. Além disso, os répteis possuem o corpo coberto por escamas, carapaças ou placas, dando um aspecto de pele bem seca
\.


                                                                                                                                                                                                                                                                                                               3382.dat                                                                                            0000600 0004000 0002000 00000000236 14255457273 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        AC	1
AL	2
AP	3
AM	4
BA	5
CE	6
DF	7
ES	8
GO	9
MA	10
MT	11
MS	12
MG	13
PA	14
PB	15
PR	16
PE	17
PI	18
RJ	19
RN	20
RS	21
RO	22
RR	23
SC	24
SP	25
SE	26
TO	27
\.


                                                                                                                                                                                                                                                                                                                                                                  3381.dat                                                                                            0000600 0004000 0002000 00000001016 14255457273 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Joao Pedro	2000/10/05	123.456.789-10	32.654.987-0	AV Brasil	15	Centro	1	1	1
Rodrigo Campos	2000/12/10	987-654-125-24	65-584-694-2	AV canada	177	Pinhais	2	2	1
Valeria Schimitz	2005/04/23	354-697-189-76	99-436-456-8	Rua dos Coqueiros	200	Centro	4	4	1
Mateus dos Santos	1985/02/15	789-654-357-15	48-846-795-5	Rua São Sebastião	586	Santos	3	3	2
Janete dos Santos	1988/02/06	098.436.183-90	83.017.395-0	Rua São Sebastião	586	Santos	4	6	2
Leonardo Vieira	1999/05/27	741.852.852-31	31.951.357-7	Av Pitanga	256	Pinhais	2	5	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  restore.sql                                                                                         0000600 0004000 0002000 00000037420 14255457273 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

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

DROP DATABASE "Parque";
--
-- Name: Parque; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Parque" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Parque" OWNER TO postgres;

\connect "Parque"

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
-- Name: ala; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ala (
    idala integer NOT NULL,
    alanome character varying(45) NOT NULL
);


ALTER TABLE public.ala OWNER TO postgres;

--
-- Name: ala_idala_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ala_idala_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ala_idala_seq OWNER TO postgres;

--
-- Name: ala_idala_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ala_idala_seq OWNED BY public.ala.idala;


--
-- Name: animais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animais (
    idanimal integer NOT NULL,
    animalnome character varying(100) NOT NULL,
    tamanho character varying(100) NOT NULL,
    espaco_idespaco integer NOT NULL,
    cor_idcor integer NOT NULL,
    especie_idespecie integer NOT NULL
);


ALTER TABLE public.animais OWNER TO postgres;

--
-- Name: cargo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cargo (
    idcargo integer NOT NULL,
    cargo_nome character varying(45) NOT NULL
);


ALTER TABLE public.cargo OWNER TO postgres;

--
-- Name: cargo_idcargo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cargo_idcargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cargo_idcargo_seq OWNER TO postgres;

--
-- Name: cargo_idcargo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cargo_idcargo_seq OWNED BY public.cargo.idcargo;


--
-- Name: cidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cidade (
    cidade_nome character varying(45) NOT NULL,
    idcidade integer NOT NULL,
    estado_idestado integer
);


ALTER TABLE public.cidade OWNER TO postgres;

--
-- Name: cidade_idcidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cidade_idcidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cidade_idcidade_seq OWNER TO postgres;

--
-- Name: cidade_idcidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cidade_idcidade_seq OWNED BY public.cidade.idcidade;


--
-- Name: consulta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consulta (
    idconsulta integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    diagnostico character varying(255) NOT NULL,
    animais_idanimal integer NOT NULL,
    fun_idfun integer NOT NULL
);


ALTER TABLE public.consulta OWNER TO postgres;

--
-- Name: consulta_idconsulta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consulta_idconsulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consulta_idconsulta_seq OWNER TO postgres;

--
-- Name: consulta_idconsulta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.consulta_idconsulta_seq OWNED BY public.consulta.idconsulta;


--
-- Name: cor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cor (
    idcor integer NOT NULL,
    cornome character varying(45) NOT NULL
);


ALTER TABLE public.cor OWNER TO postgres;

--
-- Name: espaco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.espaco (
    idespaco integer NOT NULL,
    espaco character varying(45) NOT NULL,
    ala_idala integer NOT NULL
);


ALTER TABLE public.espaco OWNER TO postgres;

--
-- Name: espaco_idespaco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.espaco_idespaco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.espaco_idespaco_seq OWNER TO postgres;

--
-- Name: espaco_idespaco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.espaco_idespaco_seq OWNED BY public.espaco.idespaco;


--
-- Name: especie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especie (
    idespecie integer NOT NULL,
    especienome character varying(45) NOT NULL,
    descricao character varying(255) NOT NULL
);


ALTER TABLE public.especie OWNER TO postgres;

--
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    estado_nome character varying(45) NOT NULL,
    idestado integer NOT NULL
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- Name: estado_idestado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_idestado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_idestado_seq OWNER TO postgres;

--
-- Name: estado_idestado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_idestado_seq OWNED BY public.estado.idestado;


--
-- Name: fun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fun (
    nomefun character varying(100) NOT NULL,
    nascdata character varying(11) NOT NULL,
    cpf character varying(15) NOT NULL,
    rg character varying(15) NOT NULL,
    rua character varying(50) NOT NULL,
    numero character varying(15),
    bairro character varying(50) NOT NULL,
    cargo_idcargo integer NOT NULL,
    idfun integer NOT NULL,
    cidade_idcidade integer
);


ALTER TABLE public.fun OWNER TO postgres;

--
-- Name: fun_idfun_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fun_idfun_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fun_idfun_seq OWNER TO postgres;

--
-- Name: fun_idfun_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fun_idfun_seq OWNED BY public.fun.idfun;


--
-- Name: ala idala; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ala ALTER COLUMN idala SET DEFAULT nextval('public.ala_idala_seq'::regclass);


--
-- Name: cargo idcargo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo ALTER COLUMN idcargo SET DEFAULT nextval('public.cargo_idcargo_seq'::regclass);


--
-- Name: cidade idcidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade ALTER COLUMN idcidade SET DEFAULT nextval('public.cidade_idcidade_seq'::regclass);


--
-- Name: consulta idconsulta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta ALTER COLUMN idconsulta SET DEFAULT nextval('public.consulta_idconsulta_seq'::regclass);


--
-- Name: espaco idespaco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espaco ALTER COLUMN idespaco SET DEFAULT nextval('public.espaco_idespaco_seq'::regclass);


--
-- Name: estado idestado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN idestado SET DEFAULT nextval('public.estado_idestado_seq'::regclass);


--
-- Name: fun idfun; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fun ALTER COLUMN idfun SET DEFAULT nextval('public.fun_idfun_seq'::regclass);


--
-- Data for Name: ala; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ala (idala, alanome) FROM stdin;
\.
COPY public.ala (idala, alanome) FROM '$$PATH$$/3389.dat';

--
-- Data for Name: animais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animais (idanimal, animalnome, tamanho, espaco_idespaco, cor_idcor, especie_idespecie) FROM stdin;
\.
COPY public.animais (idanimal, animalnome, tamanho, espaco_idespaco, cor_idcor, especie_idespecie) FROM '$$PATH$$/3395.dat';

--
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cargo (idcargo, cargo_nome) FROM stdin;
\.
COPY public.cargo (idcargo, cargo_nome) FROM '$$PATH$$/3385.dat';

--
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cidade (cidade_nome, idcidade, estado_idestado) FROM stdin;
\.
COPY public.cidade (cidade_nome, idcidade, estado_idestado) FROM '$$PATH$$/3383.dat';

--
-- Data for Name: consulta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consulta (idconsulta, datahora, diagnostico, animais_idanimal, fun_idfun) FROM stdin;
\.
COPY public.consulta (idconsulta, datahora, diagnostico, animais_idanimal, fun_idfun) FROM '$$PATH$$/3387.dat';

--
-- Data for Name: cor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cor (idcor, cornome) FROM stdin;
\.
COPY public.cor (idcor, cornome) FROM '$$PATH$$/3397.dat';

--
-- Data for Name: espaco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.espaco (idespaco, espaco, ala_idala) FROM stdin;
\.
COPY public.espaco (idespaco, espaco, ala_idala) FROM '$$PATH$$/3391.dat';

--
-- Data for Name: especie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.especie (idespecie, especienome, descricao) FROM stdin;
\.
COPY public.especie (idespecie, especienome, descricao) FROM '$$PATH$$/3396.dat';

--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado (estado_nome, idestado) FROM stdin;
\.
COPY public.estado (estado_nome, idestado) FROM '$$PATH$$/3382.dat';

--
-- Data for Name: fun; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fun (nomefun, nascdata, cpf, rg, rua, numero, bairro, cargo_idcargo, idfun, cidade_idcidade) FROM stdin;
\.
COPY public.fun (nomefun, nascdata, cpf, rg, rua, numero, bairro, cargo_idcargo, idfun, cidade_idcidade) FROM '$$PATH$$/3381.dat';

--
-- Name: ala_idala_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ala_idala_seq', 4, true);


--
-- Name: cargo_idcargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cargo_idcargo_seq', 1, false);


--
-- Name: cidade_idcidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cidade_idcidade_seq', 3, true);


--
-- Name: consulta_idconsulta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consulta_idconsulta_seq', 1, false);


--
-- Name: espaco_idespaco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.espaco_idespaco_seq', 1, false);


--
-- Name: estado_idestado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_idestado_seq', 27, true);


--
-- Name: fun_idfun_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fun_idfun_seq', 6, true);


--
-- Name: ala ala_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ala
    ADD CONSTRAINT ala_pkey PRIMARY KEY (idala);


--
-- Name: animais animais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_pkey PRIMARY KEY (idanimal);


--
-- Name: cargo cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (idcargo);


--
-- Name: cidade cidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (idcidade);


--
-- Name: consulta consulta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_pkey PRIMARY KEY (idconsulta);


--
-- Name: cor cor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cor
    ADD CONSTRAINT cor_pkey PRIMARY KEY (idcor);


--
-- Name: espaco espaco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT espaco_pkey PRIMARY KEY (idespaco);


--
-- Name: especie especie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_pkey PRIMARY KEY (idespecie);


--
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (idestado);


--
-- Name: fun fun_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fun
    ADD CONSTRAINT fun_pkey PRIMARY KEY (idfun);


--
-- Name: animais animais_cor_idcor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_cor_idcor_fkey FOREIGN KEY (cor_idcor) REFERENCES public.cor(idcor);


--
-- Name: animais animais_espaco_idespaco_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_espaco_idespaco_fkey FOREIGN KEY (espaco_idespaco) REFERENCES public.espaco(idespaco);


--
-- Name: animais animais_especie_idespecie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_especie_idespecie_fkey FOREIGN KEY (especie_idespecie) REFERENCES public.especie(idespecie);


--
-- Name: cidade cidade_estado_idestado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_estado_idestado_fkey FOREIGN KEY (estado_idestado) REFERENCES public.estado(idestado);


--
-- Name: consulta consulta_animais_idanimal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_animais_idanimal_fkey FOREIGN KEY (animais_idanimal) REFERENCES public.animais(idanimal);


--
-- Name: consulta consulta_fun_idfun_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_fun_idfun_fkey FOREIGN KEY (fun_idfun) REFERENCES public.fun(idfun);


--
-- Name: espaco espaco_ala_idala_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT espaco_ala_idala_fkey FOREIGN KEY (ala_idala) REFERENCES public.ala(idala);


--
-- Name: fun fun_cargo_idcargo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fun
    ADD CONSTRAINT fun_cargo_idcargo_fkey FOREIGN KEY (cargo_idcargo) REFERENCES public.cargo(idcargo);


--
-- Name: fun fun_cidade_idcidade_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fun
    ADD CONSTRAINT fun_cidade_idcidade_fkey FOREIGN KEY (cidade_idcidade) REFERENCES public.cidade(idcidade);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                