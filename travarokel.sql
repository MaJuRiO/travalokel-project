PGDMP     .    '                z            CPE231 PRoject    15.1    15.1 |    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16642    CPE231 PRoject    DATABASE     �   CREATE DATABASE "CPE231 PRoject" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Thai_Thailand.874';
     DROP DATABASE "CPE231 PRoject";
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   pg_database_owner    false    5            �            1259    16643 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16646    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    214            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    16647    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16650    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    216            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    16651    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16654    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    218            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    219            �            1259    16655 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16660    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16663    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    221            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    222            �            1259    16664    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    223            �            1259    16665    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16668 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    225            �            1259    16669    city    TABLE     �   CREATE TABLE public.city (
    city_id character(5) NOT NULL,
    city_name character varying(50),
    airport character varying(100)
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    16672    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16678    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    228            �            1259    16679    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16682    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    229            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    230            �            1259    16683    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16688    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    231            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    232            �            1259    16689    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16694    flight    TABLE     4  CREATE TABLE public.flight (
    flight_id character(5) NOT NULL,
    airline character varying(100),
    path_id character(5) NOT NULL,
    departure_time time without time zone,
    arrival_time time without time zone,
    duration time without time zone,
    arrival_date date,
    departure_date date
);
    DROP TABLE public.flight;
       public         heap    postgres    false            �            1259    16697    flight_class    TABLE     �   CREATE TABLE public.flight_class (
    flight_id character(5) NOT NULL,
    seat_class character varying(10),
    price integer
);
     DROP TABLE public.flight_class;
       public         heap    postgres    false            �            1259    16700 	   passenger    TABLE       CREATE TABLE public.passenger (
    id_no character varying(20) NOT NULL,
    ticket_id character varying(10),
    first_name character varying(100),
    last_name character varying(100),
    email character varying(30),
    phone_no character varying(10)
);
    DROP TABLE public.passenger;
       public         heap    postgres    false            �            1259    16703    path    TABLE     z   CREATE TABLE public.path (
    path_id character(5) NOT NULL,
    departure character(5),
    destination character(5)
);
    DROP TABLE public.path;
       public         heap    postgres    false            �            1259    16706    payment    TABLE     �   CREATE TABLE public.payment (
    card_no character varying(20) NOT NULL,
    username character varying(100),
    holder_name character varying(100),
    ticket_id character varying(10)
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    16709    ticket    TABLE     5  CREATE TABLE public.ticket (
    ticket_id character(10) NOT NULL,
    flight_id character(5),
    seat_class character varying(10),
    total_amount numeric(18,2),
    username character varying(100),
    booking_date timestamp without time zone,
    departure_date date,
    status character varying(10)
);
    DROP TABLE public.ticket;
       public         heap    postgres    false            �           2604    16712    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16713    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16714    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16715    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    220            �           2604    16716    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    16717    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16718    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    16719    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    16720    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �          0    16643 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    214   ��       �          0    16647    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    216   Р       �          0    16651    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    218   ��       �          0    16655 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   
�       �          0    16660    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    221   (�       �          0    16665    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   E�       �          0    16669    city 
   TABLE DATA           ;   COPY public.city (city_id, city_name, airport) FROM stdin;
    public          postgres    false    226   b�       �          0    16672    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   �       �          0    16679    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    229   k�       �          0    16683    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    231   Ҧ       �          0    16689    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    233   ��       �          0    16694    flight 
   TABLE DATA           �   COPY public.flight (flight_id, airline, path_id, departure_time, arrival_time, duration, arrival_date, departure_date) FROM stdin;
    public          postgres    false    234   �       �          0    16697    flight_class 
   TABLE DATA           D   COPY public.flight_class (flight_id, seat_class, price) FROM stdin;
    public          postgres    false    235   ��       �          0    16700 	   passenger 
   TABLE DATA           ]   COPY public.passenger (id_no, ticket_id, first_name, last_name, email, phone_no) FROM stdin;
    public          postgres    false    236   A�       �          0    16703    path 
   TABLE DATA           ?   COPY public.path (path_id, departure, destination) FROM stdin;
    public          postgres    false    237   ˲       �          0    16706    payment 
   TABLE DATA           L   COPY public.payment (card_no, username, holder_name, ticket_id) FROM stdin;
    public          postgres    false    238   z�       �          0    16709    ticket 
   TABLE DATA           �   COPY public.ticket (ticket_id, flight_id, seat_class, total_amount, username, booking_date, departure_date, status) FROM stdin;
    public          postgres    false    239   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);
          public          postgres    false    219            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    222            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);
          public          postgres    false    223            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public          postgres    false    228            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);
          public          postgres    false    230            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    232            �           2606    16722    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    214            �           2606    16724 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    216    216            �           2606    16726 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    216            �           2606    16728    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    214            �           2606    16730 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    218    218            �           2606    16732 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    218            �           2606    16734 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    221            �           2606    16736 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    221    221            �           2606    16738    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    16740 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    16742 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    16744     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    16746    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    226            �           2606    16748 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227            �           2606    16750 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    229    229            �           2606    16752 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    229            �           2606    16754 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    231            �           2606    16756 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    233            �           2606    16758    flight_class flight_class_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.flight_class
    ADD CONSTRAINT flight_class_pkey PRIMARY KEY (flight_id);
 H   ALTER TABLE ONLY public.flight_class DROP CONSTRAINT flight_class_pkey;
       public            postgres    false    235            �           2606    16760    flight flight_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT flight_pkey PRIMARY KEY (flight_id);
 <   ALTER TABLE ONLY public.flight DROP CONSTRAINT flight_pkey;
       public            postgres    false    234            �           2606    16762    passenger passenger_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (id_no);
 B   ALTER TABLE ONLY public.passenger DROP CONSTRAINT passenger_pkey;
       public            postgres    false    236            �           2606    16764    path path_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.path
    ADD CONSTRAINT path_pkey PRIMARY KEY (path_id);
 8   ALTER TABLE ONLY public.path DROP CONSTRAINT path_pkey;
       public            postgres    false    237            �           2606    16766    payment payment_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (card_no);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    238            �           2606    16768    ticket ticket_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (ticket_id);
 <   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_pkey;
       public            postgres    false    239            �           1259    16769    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    214            �           1259    16770 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    216            �           1259    16771 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    216            �           1259    16772 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    218            �           1259    16773 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    221            �           1259    16774 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    221            �           1259    16775 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    16776 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    16777     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    16778 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            �           1259    16779 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            �           1259    16780 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    233            �           1259    16781 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    233            �           2606    16782 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    218    216    3270            �           2606    16787 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    214    3259    216            �           2606    16792 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    229    3297    218            �           2606    16797 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    221    214    3259            �           2606    16802 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3272    221    220            �           2606    16807 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    218    3270    224            �           2606    16812 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    220    224    3272            �           2606    16817 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    227    3297    229            �           2606    16822 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3272    220    227            �           2606    16827    ticket fkey_flight_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT fkey_flight_id FOREIGN KEY (flight_id) REFERENCES public.flight(flight_id) NOT VALID;
 ?   ALTER TABLE ONLY public.ticket DROP CONSTRAINT fkey_flight_id;
       public          postgres    false    239    3305    234            �           2606    16832    flight fkey_path_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT fkey_path_id FOREIGN KEY (path_id) REFERENCES public.path(path_id) NOT VALID;
 =   ALTER TABLE ONLY public.flight DROP CONSTRAINT fkey_path_id;
       public          postgres    false    234    237    3311            �           2606    16837    passenger fkey_ticket_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT fkey_ticket_id FOREIGN KEY (ticket_id) REFERENCES public.ticket(ticket_id) NOT VALID;
 B   ALTER TABLE ONLY public.passenger DROP CONSTRAINT fkey_ticket_id;
       public          postgres    false    236    239    3315            �      x������ � �      �      x������ � �      �     x�]�K��0��ur
N0j£�z�Q�B�b�:�h�����I�%��o��i�g�f��c�Y����G�<��ЂRq�0G��f�a����[�m��Le���4u}0�x`+� �	{�}�R��NT����v�����֝d�~O]D�l�	�����<,�����ӺB�[ZA)���T���qu�<�͏>��_��� ��m�.2�)H���:x�ޟ8�1WY��'���`:Y��;�LL�vf���x댰j'�k�2�      �     x���Ko�F���Sd�]2/�R�L�8~ı�JWcCx�c ۻ�j�U?AU���J|>J1ɽ7�ܪht��s���Bi���W�i�p��*��x�kkE-cO'IL��`I����U�#���٧��t����|qhY/�,��ռ9�X�h��%���)W�@с&C��F���*	k' *�o�6��J^F���DW��&)*�r���55���J�5��>t���>��5�@���M���8}X�7�|��Fwَ��7z'W ���
T{�}m�0R���g��/y�k�}.l�#ϲ<�������g?���y�w����	)D�u"q��KY�dJ�O��H5MT��&��A�a����cU6,�ۑ��X�'�儴f�än݇�{����wƸ7;�ETǊ� *~ǍC�����O�����
S.�.���~!�e�@w�Bd)a%�v��ڍ�U�g��u�tD�N��L�E;��z~x�4�*�I�0��SL��jt�x�
���@�1�����W��G��H�(uw�X:ܕ�eH>��C���� R�oWagT��T���>�ܮ8��ĳf��<E��n>m�hkŏ�_����ءZo��-�K�f�����\4���(�oTaQX ���E�k@V5vk���;�2��};�W���6d���U��\U�_����f�֩��6�vss��όD	��3"zɦ�X�!Ӿ��k K������h�BB2�C<t��$���Ж��[��I9�tX'�N�������� W*� �{��      �      x������ � �      �      x������ � �      �   �   x�u�A
�0E��)�z�*)5�X܌��v"!��& օY�0�������� � ����RP�0G������W]�#�1-���q5_L4S��V/������&x�Ѫ��>���%�JTpB�/;�^��Ff�*A�Y�8U����{���bm      �   J   x�m˱�0��==J�lEI��d�9 !:�;B.�(�#bD���m���܏��h������o��jf���      �   W   x�M�K
�0�y����M�P�C�.z{E��LOn�!љ='���\��
K�!'�o�k��JU̴�d�f���)?�~��pM^%�      �   �  x���M�� F��)f?j�*��,#!��n$�x0nun?@�$R�I6l���zU2t�0'7�t^��B���'o�	���_ޑ�#�h%�7���>�%x�%D���i����iQ"�A3�!�&�)|9��ƞN�-9���ozc䜱���l>F;��g��l��%z@*A�xЅ?�\/L�1���.�rAP�l���1�h'�����7��6������3B��TC�+j[��&��g�Y�nvO)G-',i_��L\� i~�횊z�;�ƽ�˞p�4�h����|lz�wS��B0_����S^K���?��Z��b�Ln]��;x�S&���hé];��,󰄼h�H���+(�$V�A�����%��X��F�-ِ3K�绅�ӣz"���3��̀�M}��RW�ǼC��Vw}�ɟB�\RJ��?��p�nX�      �   }  x���Y��J���{F��WNE���p��N�dћ�tA7��LUU^���>�{��5�Ӑfy�й���^�8R�J�&��=2&7S��J�=��)�4'�̍j�wwzW���Gī�!|qs��/�����s&\��X�.�g���۞r�i3��ܵ?���^���{�>a��P��J~�d)K�g:jirN����T��=���[�i h/a�Gv�����Y�����oW�vn`����&�L�;��L�O�!��
�� �9��߀�j��bn&|.�t��O� v8~����(���
s��j�]�N��L��������rKimO�l�T��:ڎt�ʧ`x�iۨ�p�q��pCȹ}�*ߒ��p=�?l5X���јeSҡ)��֑Տ�iN�T���r�9�܂�t�d}
-��V�mS�̭�)?B+��!���4t���T�o��hCI��� z@���A�%�K�x^��ye��L*���uY��O�?SHSm���Z�����m���r_zC��>]�������F�{g�}	=GiC4L��dY�$i� ��?B�zLioG+��=��2�b��[�`������N͏���𠣥U�(q�es��}���x��K����O,z'�����D�����\!�el�@��N26�T�
��t��^��#үuI��"���懮]�Ѥy�X�^u��iT[�M~.��r��:�!�_ ȟ��r����8#q�H �Y�va>S%|�	�Ёv)��t�;�4bD�J_ZM�9	�����fY�z���a�^M
��o�����yDdy�,,⾄�	CP��ϐ�Vx>�C&0~9!��;DJw3ɒ�G�U;��h�/���[���n=b��kH+䗃{6�Ҕ�ǥ8{:���L����n�:r�)�C �-���{��S���8w�`����*��4]�ʖR����~-I�y�K��>�����z8I��	�"���H�wi]9��Sw�%���뫌�д��V=���,�� � 2�;Ƅe�wD]Ǥl�^]����R�X�N���`��y��}q�C��{�gx+�*s���]��,w|����|�4��"�o �,�"�C�|	U�6����#-"�Y<å$Q�/AI�;����΍d@)���=|%fĘ�6�>~�sx��*=�\�[��Y��@:�CT_��85�p�%��:����`�,+3�=+:�Y���4���cm*5%0���p���qܮ��*����'����Q�E��Ӈ��K��]lm�1_��j��n��f�.���"b���;A�}�5��Q�uی~%�#��3�I��B��Q�'F�;�8P�2�fK���m�Y&����_��\xg�o�uc7��F������?�K�_�~��7v�F�      �   �  x��X�n�0�u_q?���b��(�&Ҥ�"���6`W��H��%)�g�B�;����#!�ms~�}4�K�9!t#�g1�5R�"|(�ԍ�7�}��6��{�.��*�j�]�	xB^������x�2>?��f(�H�� ��@�jB�q���6n��E�M���Y7��ʘu�Y4f�3�&�J��V�ڮ�HbA��8���E1?�n(qW�!~�!ϐ!�T���!ߺx@��7-��q׶�;�i�DiU?h3��h�W��)�|���H�)��H��S$�
�����nl�,�^�8� �m!�f���(���x	HHQ"a�b���i,�?ekMc���6�c-H׃�,P(�~�R���>+Lm8��=4C���@Hu���l�P��mR����>���֩@KA�#��1Z:�U���0���)��G��r���2�++T����0��?��.�\D�f&��<3�q%l\�� ��+@'b��
q�Nق�:���`p�K�N5�S�d�Ft�G��4@��$�q�8o�̖HQ!~@Pq�����q�EZ�)gw�;�K佴{v���[��"�kv	�jV����,tf9o�h�Z��s<l�~��$:H\�&ZAfm&p����F��P��d�o�&��� ����?�*      �   s  x�e�Kr�0���a:B�,-�8>Ev]�Y���A��~��ù����~���n�,-�*�����,�q΂�P�]Pu������j�h�A�ݮ"�]_	��{[�5�q�4bf�B��iD��4b�U�iD� �4"���2����5h�Jr�ӈm��%�G�HGh��ch�q`͂��Y�7��z�:QQ�� [� [�.�ڢ��C�����FB��Yec��q.&	r�\�9.4(:�I�SΜ��b6�
��)_Lл|1�~m��G�h4k��c� ���5�ֵ��\�>i�N�Nq4�km����|}��9�~��{H$�V�rq��{<�y�~���,^_���z�c��#E%z��J)�̰Y�      �   z   x�3720��t�v14 2s2K9���3�SK�339�Bz �!713G/;���D/1Y�$����������Ĕ����a�gAtv~gFJEgA6�<�t�!����&��f&�&\1z\\\ ��)�      �   �   x�M��� Dѵ��
"� c�������g�<)�\~u��{�cĸl�'�PI.�+ɒ�.Iq�#ێ�$i�K�XR\�3���ޙ�Pԙ�Pԙ옰�t8_��$��%ցvzC��:$I��.,C�����bl�I�h_^be����~�B?:�T-      �   \   x��t�v1400�H��,I�J�28C�R\�F& F&FƦ�&f���^�A�����^�A����@�ƦF�&PF���pA� #|���qqq ��,x      �   m   x��t�v1400�tF����y�������z��9�%�U��FFF����F�
V`�3�t���qqu�
�i��l```	7���Ē#\�\<�ܹb���� j�&�     