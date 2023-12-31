toc.dat                                                                                             0000600 0004000 0002000 00000053156 14537562224 0014463 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   0                    {         
   veterinary    16.1    16.1 L    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         W           1262    34816 
   veterinary    DATABASE     l   CREATE DATABASE veterinary WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE veterinary;
                postgres    false         �            1259    60086    animal    TABLE     �  CREATE TABLE public.animal (
    id bigint NOT NULL,
    breed character varying(100),
    colour character varying(255),
    date_of_birth date,
    gender character varying(255),
    name character varying(100),
    species character varying(255),
    customer_id integer NOT NULL,
    CONSTRAINT animal_gender_check CHECK (((gender)::text = ANY ((ARRAY['MALE'::character varying, 'FEMALE'::character varying])::text[])))
);
    DROP TABLE public.animal;
       public         heap    postgres    false         �            1259    60085    animal_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animal_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.animal_customer_id_seq;
       public          postgres    false    217         X           0    0    animal_customer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.animal_customer_id_seq OWNED BY public.animal.customer_id;
          public          postgres    false    216         �            1259    60084    animal_id_seq    SEQUENCE     v   CREATE SEQUENCE public.animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.animal_id_seq;
       public          postgres    false    217         Y           0    0    animal_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;
          public          postgres    false    215         �            1259    60099    appointment    TABLE     �   CREATE TABLE public.appointment (
    id bigint NOT NULL,
    appointment_date timestamp(6) without time zone,
    animal_id integer NOT NULL,
    doctor_id integer NOT NULL
);
    DROP TABLE public.appointment;
       public         heap    postgres    false         �            1259    60097    appointment_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.appointment_animal_id_seq;
       public          postgres    false    221         Z           0    0    appointment_animal_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.appointment_animal_id_seq OWNED BY public.appointment.animal_id;
          public          postgres    false    219         �            1259    60098    appointment_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.appointment_doctor_id_seq;
       public          postgres    false    221         [           0    0    appointment_doctor_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.appointment_doctor_id_seq OWNED BY public.appointment.doctor_id;
          public          postgres    false    220         �            1259    60096    appointment_id_seq    SEQUENCE     {   CREATE SEQUENCE public.appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.appointment_id_seq;
       public          postgres    false    221         \           0    0    appointment_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;
          public          postgres    false    218         �            1259    60109    availabledate    TABLE     w   CREATE TABLE public.availabledate (
    id bigint NOT NULL,
    available_date date,
    doctor_id integer NOT NULL
);
 !   DROP TABLE public.availabledate;
       public         heap    postgres    false         �            1259    60108    availabledate_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.availabledate_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.availabledate_doctor_id_seq;
       public          postgres    false    224         ]           0    0    availabledate_doctor_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.availabledate_doctor_id_seq OWNED BY public.availabledate.doctor_id;
          public          postgres    false    223         �            1259    60107    availabledate_id_seq    SEQUENCE     }   CREATE SEQUENCE public.availabledate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.availabledate_id_seq;
       public          postgres    false    224         ^           0    0    availabledate_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.availabledate_id_seq OWNED BY public.availabledate.id;
          public          postgres    false    222         �            1259    60117 	   customers    TABLE     �   CREATE TABLE public.customers (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(100),
    phone character varying(100)
);
    DROP TABLE public.customers;
       public         heap    postgres    false         �            1259    60116    customers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    226         _           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    225         �            1259    60126    doctor    TABLE     �   CREATE TABLE public.doctor (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(100),
    phone character varying(255)
);
    DROP TABLE public.doctor;
       public         heap    postgres    false         �            1259    60125    doctor_id_seq    SEQUENCE     v   CREATE SEQUENCE public.doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.doctor_id_seq;
       public          postgres    false    228         `           0    0    doctor_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;
          public          postgres    false    227         �            1259    60136    vaccine    TABLE     �   CREATE TABLE public.vaccine (
    id bigint NOT NULL,
    code character varying(100),
    name character varying(100),
    vaccine_finish_date date,
    vaccine_start_date date,
    animal_id integer NOT NULL
);
    DROP TABLE public.vaccine;
       public         heap    postgres    false         �            1259    60135    vaccine_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vaccine_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vaccine_animal_id_seq;
       public          postgres    false    231         a           0    0    vaccine_animal_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vaccine_animal_id_seq OWNED BY public.vaccine.animal_id;
          public          postgres    false    230         �            1259    60134    vaccine_id_seq    SEQUENCE     w   CREATE SEQUENCE public.vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.vaccine_id_seq;
       public          postgres    false    231         b           0    0    vaccine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.vaccine_id_seq OWNED BY public.vaccine.id;
          public          postgres    false    229         �           2604    60089 	   animal id    DEFAULT     f   ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);
 8   ALTER TABLE public.animal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    215    217         �           2604    60090    animal customer_id    DEFAULT     x   ALTER TABLE ONLY public.animal ALTER COLUMN customer_id SET DEFAULT nextval('public.animal_customer_id_seq'::regclass);
 A   ALTER TABLE public.animal ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    216    217    217         �           2604    60102    appointment id    DEFAULT     p   ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);
 =   ALTER TABLE public.appointment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    218    221         �           2604    60103    appointment animal_id    DEFAULT     ~   ALTER TABLE ONLY public.appointment ALTER COLUMN animal_id SET DEFAULT nextval('public.appointment_animal_id_seq'::regclass);
 D   ALTER TABLE public.appointment ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    221    219    221         �           2604    60104    appointment doctor_id    DEFAULT     ~   ALTER TABLE ONLY public.appointment ALTER COLUMN doctor_id SET DEFAULT nextval('public.appointment_doctor_id_seq'::regclass);
 D   ALTER TABLE public.appointment ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    220    221    221         �           2604    60112    availabledate id    DEFAULT     t   ALTER TABLE ONLY public.availabledate ALTER COLUMN id SET DEFAULT nextval('public.availabledate_id_seq'::regclass);
 ?   ALTER TABLE public.availabledate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    222    224         �           2604    60113    availabledate doctor_id    DEFAULT     �   ALTER TABLE ONLY public.availabledate ALTER COLUMN doctor_id SET DEFAULT nextval('public.availabledate_doctor_id_seq'::regclass);
 F   ALTER TABLE public.availabledate ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    223    224    224         �           2604    60120    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226         �           2604    60129 	   doctor id    DEFAULT     f   ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);
 8   ALTER TABLE public.doctor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228         �           2604    60139 
   vaccine id    DEFAULT     h   ALTER TABLE ONLY public.vaccine ALTER COLUMN id SET DEFAULT nextval('public.vaccine_id_seq'::regclass);
 9   ALTER TABLE public.vaccine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    231    231         �           2604    60140    vaccine animal_id    DEFAULT     v   ALTER TABLE ONLY public.vaccine ALTER COLUMN animal_id SET DEFAULT nextval('public.vaccine_animal_id_seq'::regclass);
 @   ALTER TABLE public.vaccine ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    231    230    231         C          0    60086    animal 
   TABLE DATA           f   COPY public.animal (id, breed, colour, date_of_birth, gender, name, species, customer_id) FROM stdin;
    public          postgres    false    217       3651.dat G          0    60099    appointment 
   TABLE DATA           Q   COPY public.appointment (id, appointment_date, animal_id, doctor_id) FROM stdin;
    public          postgres    false    221       3655.dat J          0    60109    availabledate 
   TABLE DATA           F   COPY public.availabledate (id, available_date, doctor_id) FROM stdin;
    public          postgres    false    224       3658.dat L          0    60117 	   customers 
   TABLE DATA           I   COPY public.customers (id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    226       3660.dat N          0    60126    doctor 
   TABLE DATA           F   COPY public.doctor (id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    228       3662.dat Q          0    60136    vaccine 
   TABLE DATA           e   COPY public.vaccine (id, code, name, vaccine_finish_date, vaccine_start_date, animal_id) FROM stdin;
    public          postgres    false    231       3665.dat c           0    0    animal_customer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.animal_customer_id_seq', 1, false);
          public          postgres    false    216         d           0    0    animal_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.animal_id_seq', 5, true);
          public          postgres    false    215         e           0    0    appointment_animal_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.appointment_animal_id_seq', 1, false);
          public          postgres    false    219         f           0    0    appointment_doctor_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.appointment_doctor_id_seq', 1, false);
          public          postgres    false    220         g           0    0    appointment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.appointment_id_seq', 6, true);
          public          postgres    false    218         h           0    0    availabledate_doctor_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.availabledate_doctor_id_seq', 1, false);
          public          postgres    false    223         i           0    0    availabledate_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.availabledate_id_seq', 5, true);
          public          postgres    false    222         j           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 5, true);
          public          postgres    false    225         k           0    0    doctor_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.doctor_id_seq', 8, true);
          public          postgres    false    227         l           0    0    vaccine_animal_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vaccine_animal_id_seq', 1, false);
          public          postgres    false    230         m           0    0    vaccine_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.vaccine_id_seq', 5, true);
          public          postgres    false    229         �           2606    60095    animal animal_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.animal DROP CONSTRAINT animal_pkey;
       public            postgres    false    217         �           2606    60106    appointment appointment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_pkey;
       public            postgres    false    221         �           2606    60115     availabledate availabledate_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.availabledate
    ADD CONSTRAINT availabledate_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.availabledate DROP CONSTRAINT availabledate_pkey;
       public            postgres    false    224         �           2606    60124    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    226         �           2606    60133    doctor doctor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    228         �           2606    60144 &   customers uk_2hxsqcqvp2pjgxw00gn7inubj 
   CONSTRAINT     a   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT uk_2hxsqcqvp2pjgxw00gn7inubj UNIQUE (mail);
 P   ALTER TABLE ONLY public.customers DROP CONSTRAINT uk_2hxsqcqvp2pjgxw00gn7inubj;
       public            postgres    false    226         �           2606    60152 #   doctor uk_2ow2k8dbvtnp7wfc8ywo8fg2e 
   CONSTRAINT     _   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_2ow2k8dbvtnp7wfc8ywo8fg2e UNIQUE (phone);
 M   ALTER TABLE ONLY public.doctor DROP CONSTRAINT uk_2ow2k8dbvtnp7wfc8ywo8fg2e;
       public            postgres    false    228         �           2606    60148 #   doctor uk_mgice7bignm8rjsk0w3cga550 
   CONSTRAINT     ^   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_mgice7bignm8rjsk0w3cga550 UNIQUE (city);
 M   ALTER TABLE ONLY public.doctor DROP CONSTRAINT uk_mgice7bignm8rjsk0w3cga550;
       public            postgres    false    228         �           2606    60150 #   doctor uk_n301mmkjvy2j0d4fk4q1xexc3 
   CONSTRAINT     ^   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_n301mmkjvy2j0d4fk4q1xexc3 UNIQUE (mail);
 M   ALTER TABLE ONLY public.doctor DROP CONSTRAINT uk_n301mmkjvy2j0d4fk4q1xexc3;
       public            postgres    false    228         �           2606    60146 #   doctor uk_osi1ogxfa8gs0ntux26q6lv8r 
   CONSTRAINT     a   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_osi1ogxfa8gs0ntux26q6lv8r UNIQUE (address);
 M   ALTER TABLE ONLY public.doctor DROP CONSTRAINT uk_osi1ogxfa8gs0ntux26q6lv8r;
       public            postgres    false    228         �           2606    60142    vaccine vaccine_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT vaccine_pkey;
       public            postgres    false    231         �           2606    60158 '   appointment fk2kkeptdxfuextg5ch7xp3ytie    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie FOREIGN KEY (animal_id) REFERENCES public.animal(id);
 Q   ALTER TABLE ONLY public.appointment DROP CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie;
       public          postgres    false    3480    221    217         �           2606    60168 )   availabledate fkhu8hgwckw7dxr5cn07lorpcx8    FK CONSTRAINT     �   ALTER TABLE ONLY public.availabledate
    ADD CONSTRAINT fkhu8hgwckw7dxr5cn07lorpcx8 FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);
 S   ALTER TABLE ONLY public.availabledate DROP CONSTRAINT fkhu8hgwckw7dxr5cn07lorpcx8;
       public          postgres    false    228    3490    224         �           2606    60173 #   vaccine fkne3kmh8y5pcyxwl4u2w9prw6j    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j FOREIGN KEY (animal_id) REFERENCES public.animal(id);
 M   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j;
       public          postgres    false    3480    217    231         �           2606    60163 '   appointment fkoeb98n82eph1dx43v3y2bcmsl    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);
 Q   ALTER TABLE ONLY public.appointment DROP CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl;
       public          postgres    false    3490    228    221         �           2606    60153 "   animal fkrngyfo2ullq7o29cp4dq9jk93    FK CONSTRAINT     �   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fkrngyfo2ullq7o29cp4dq9jk93 FOREIGN KEY (customer_id) REFERENCES public.customers(id);
 L   ALTER TABLE ONLY public.animal DROP CONSTRAINT fkrngyfo2ullq7o29cp4dq9jk93;
       public          postgres    false    217    226    3486                                                                                                                                                                                                                                                                                                                                                                                                                          3651.dat                                                                                            0000600 0004000 0002000 00000000425 14537562224 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Sokak kedisi	Beyaz	2023-01-01	MALE	Cakıl	Kedi	1
2	Sokak kedisi	Siyah	2022-01-01	FEMALE	Mia	Kedi	2
3	Norveç orman kedisi	Beyaz	2021-01-01	FEMALE	Sanslı	Kedi	3
4	Birman kedisi	Siyah	2020-01-01	MALE	Busbus	Kedi	4
5	Persian kedisi	Turuncu	2001-01-01	FEMALE	tostos	Kedi	5
\.


                                                                                                                                                                                                                                           3655.dat                                                                                            0000600 0004000 0002000 00000000241 14537562224 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2024-05-05 16:00:00	5	8
2	2024-04-04 15:00:00	4	7
3	2024-03-03 14:00:00	3	5
4	2024-02-02 12:00:00	2	6
5	2024-01-01 10:00:00	1	4
6	2024-01-05 16:00:00	5	8
\.


                                                                                                                                                                                                                                                                                                                                                               3658.dat                                                                                            0000600 0004000 0002000 00000000120 14537562224 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-02-02	8
2	2023-01-01	7
3	2023-04-04	6
4	2023-05-05	5
5	2023-10-10	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                3660.dat                                                                                            0000600 0004000 0002000 00000000461 14537562224 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Dikmen cad.\n	Ankara	ib@gmail.com	İbrahim	0545 344 12 12
2	Çankaya Cad.	Ankara	adnan@gmail.com	Adnan	0542 123 44 22
3	Üsküdar mah.	İstanbul	busra@gmail.com	Busra	0543 345 33 22
4	Akyurt mah.	İstanbul	leman@gmail.com	Leman	0542 553 23 32
5	Sinan cad.	Ankara	elif@gmail.com	Elif	0545 443 23 45
\.


                                                                                                                                                                                                               3662.dat                                                                                            0000600 0004000 0002000 00000000465 14537562224 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Mamak mah.	Ankara	boz@gmail.com	busra	0544 112 23 55
5	Kolej mah.	İstanbul	kolej@gmail.com	elif	0546 345 55 23
6	Kızılay mah.	Mugla	kızılay@gmail.com	sema	0543  444 12 23
7	Dikmen cad.	Eskisehir	dikmen@gmail.com	adnan	0511 234 55 23
8	Pursaklar mah.	İzmir	pursak@gmail.com	ramazan	0546 444 12 32
\.


                                                                                                                                                                                                           3665.dat                                                                                            0000600 0004000 0002000 00000000300 14537562224 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	14	aşı 5	2023-08-08	2023-06-06	5
2	13	aşı 4	2023-09-09	2023-07-07	4
3	12	aşı 3	2023-10-10	2023-08-08	3
4	11	aşı 2	2023-11-11	2023-09-09	2
5	10\n	aşı 1	2023-12-12	2023-10-10	1
\.


                                                                                                                                                                                                                                                                                                                                restore.sql                                                                                         0000600 0004000 0002000 00000041571 14537562224 0015406 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

DROP DATABASE veterinary;
--
-- Name: veterinary; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE veterinary WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE veterinary OWNER TO postgres;

\connect veterinary

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
-- Name: animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal (
    id bigint NOT NULL,
    breed character varying(100),
    colour character varying(255),
    date_of_birth date,
    gender character varying(255),
    name character varying(100),
    species character varying(255),
    customer_id integer NOT NULL,
    CONSTRAINT animal_gender_check CHECK (((gender)::text = ANY ((ARRAY['MALE'::character varying, 'FEMALE'::character varying])::text[])))
);


ALTER TABLE public.animal OWNER TO postgres;

--
-- Name: animal_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_customer_id_seq OWNER TO postgres;

--
-- Name: animal_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_customer_id_seq OWNED BY public.animal.customer_id;


--
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_id_seq OWNER TO postgres;

--
-- Name: animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;


--
-- Name: appointment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointment (
    id bigint NOT NULL,
    appointment_date timestamp(6) without time zone,
    animal_id integer NOT NULL,
    doctor_id integer NOT NULL
);


ALTER TABLE public.appointment OWNER TO postgres;

--
-- Name: appointment_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_animal_id_seq OWNER TO postgres;

--
-- Name: appointment_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_animal_id_seq OWNED BY public.appointment.animal_id;


--
-- Name: appointment_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_doctor_id_seq OWNER TO postgres;

--
-- Name: appointment_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_doctor_id_seq OWNED BY public.appointment.doctor_id;


--
-- Name: appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_id_seq OWNER TO postgres;

--
-- Name: appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;


--
-- Name: availabledate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.availabledate (
    id bigint NOT NULL,
    available_date date,
    doctor_id integer NOT NULL
);


ALTER TABLE public.availabledate OWNER TO postgres;

--
-- Name: availabledate_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.availabledate_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.availabledate_doctor_id_seq OWNER TO postgres;

--
-- Name: availabledate_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.availabledate_doctor_id_seq OWNED BY public.availabledate.doctor_id;


--
-- Name: availabledate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.availabledate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.availabledate_id_seq OWNER TO postgres;

--
-- Name: availabledate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.availabledate_id_seq OWNED BY public.availabledate.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(100),
    phone character varying(100)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(100),
    phone character varying(255)
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- Name: doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctor_id_seq OWNER TO postgres;

--
-- Name: doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;


--
-- Name: vaccine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vaccine (
    id bigint NOT NULL,
    code character varying(100),
    name character varying(100),
    vaccine_finish_date date,
    vaccine_start_date date,
    animal_id integer NOT NULL
);


ALTER TABLE public.vaccine OWNER TO postgres;

--
-- Name: vaccine_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccine_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccine_animal_id_seq OWNER TO postgres;

--
-- Name: vaccine_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vaccine_animal_id_seq OWNED BY public.vaccine.animal_id;


--
-- Name: vaccine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccine_id_seq OWNER TO postgres;

--
-- Name: vaccine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vaccine_id_seq OWNED BY public.vaccine.id;


--
-- Name: animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);


--
-- Name: animal customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN customer_id SET DEFAULT nextval('public.animal_customer_id_seq'::regclass);


--
-- Name: appointment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);


--
-- Name: appointment animal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN animal_id SET DEFAULT nextval('public.appointment_animal_id_seq'::regclass);


--
-- Name: appointment doctor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN doctor_id SET DEFAULT nextval('public.appointment_doctor_id_seq'::regclass);


--
-- Name: availabledate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.availabledate ALTER COLUMN id SET DEFAULT nextval('public.availabledate_id_seq'::regclass);


--
-- Name: availabledate doctor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.availabledate ALTER COLUMN doctor_id SET DEFAULT nextval('public.availabledate_doctor_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: doctor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);


--
-- Name: vaccine id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine ALTER COLUMN id SET DEFAULT nextval('public.vaccine_id_seq'::regclass);


--
-- Name: vaccine animal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine ALTER COLUMN animal_id SET DEFAULT nextval('public.vaccine_animal_id_seq'::regclass);


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animal (id, breed, colour, date_of_birth, gender, name, species, customer_id) FROM stdin;
\.
COPY public.animal (id, breed, colour, date_of_birth, gender, name, species, customer_id) FROM '$$PATH$$/3651.dat';

--
-- Data for Name: appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointment (id, appointment_date, animal_id, doctor_id) FROM stdin;
\.
COPY public.appointment (id, appointment_date, animal_id, doctor_id) FROM '$$PATH$$/3655.dat';

--
-- Data for Name: availabledate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.availabledate (id, available_date, doctor_id) FROM stdin;
\.
COPY public.availabledate (id, available_date, doctor_id) FROM '$$PATH$$/3658.dat';

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, address, city, mail, name, phone) FROM stdin;
\.
COPY public.customers (id, address, city, mail, name, phone) FROM '$$PATH$$/3660.dat';

--
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctor (id, address, city, mail, name, phone) FROM stdin;
\.
COPY public.doctor (id, address, city, mail, name, phone) FROM '$$PATH$$/3662.dat';

--
-- Data for Name: vaccine; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vaccine (id, code, name, vaccine_finish_date, vaccine_start_date, animal_id) FROM stdin;
\.
COPY public.vaccine (id, code, name, vaccine_finish_date, vaccine_start_date, animal_id) FROM '$$PATH$$/3665.dat';

--
-- Name: animal_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_customer_id_seq', 1, false);


--
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_id_seq', 5, true);


--
-- Name: appointment_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_animal_id_seq', 1, false);


--
-- Name: appointment_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_doctor_id_seq', 1, false);


--
-- Name: appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_id_seq', 6, true);


--
-- Name: availabledate_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.availabledate_doctor_id_seq', 1, false);


--
-- Name: availabledate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.availabledate_id_seq', 5, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 5, true);


--
-- Name: doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_seq', 8, true);


--
-- Name: vaccine_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccine_animal_id_seq', 1, false);


--
-- Name: vaccine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccine_id_seq', 5, true);


--
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);


--
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);


--
-- Name: availabledate availabledate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.availabledate
    ADD CONSTRAINT availabledate_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);


--
-- Name: customers uk_2hxsqcqvp2pjgxw00gn7inubj; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT uk_2hxsqcqvp2pjgxw00gn7inubj UNIQUE (mail);


--
-- Name: doctor uk_2ow2k8dbvtnp7wfc8ywo8fg2e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_2ow2k8dbvtnp7wfc8ywo8fg2e UNIQUE (phone);


--
-- Name: doctor uk_mgice7bignm8rjsk0w3cga550; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_mgice7bignm8rjsk0w3cga550 UNIQUE (city);


--
-- Name: doctor uk_n301mmkjvy2j0d4fk4q1xexc3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_n301mmkjvy2j0d4fk4q1xexc3 UNIQUE (mail);


--
-- Name: doctor uk_osi1ogxfa8gs0ntux26q6lv8r; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT uk_osi1ogxfa8gs0ntux26q6lv8r UNIQUE (address);


--
-- Name: vaccine vaccine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (id);


--
-- Name: appointment fk2kkeptdxfuextg5ch7xp3ytie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- Name: availabledate fkhu8hgwckw7dxr5cn07lorpcx8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.availabledate
    ADD CONSTRAINT fkhu8hgwckw7dxr5cn07lorpcx8 FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


--
-- Name: vaccine fkne3kmh8y5pcyxwl4u2w9prw6j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- Name: appointment fkoeb98n82eph1dx43v3y2bcmsl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


--
-- Name: animal fkrngyfo2ullq7o29cp4dq9jk93; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fkrngyfo2ullq7o29cp4dq9jk93 FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       