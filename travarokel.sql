PGDMP                         z         
   travarokel    14.5    14.5 {    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16632 
   travarokel    DATABASE     e   CREATE DATABASE travarokel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Thai_Thailand.874';
    DROP DATABASE travarokel;
                postgres    false            �            1259    16633 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16636    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    210            �            1259    16637    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16640    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    212            �            1259    16641    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16644    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    213            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    214            �            1259    16645 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    16650    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16653    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    216            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    217            �            1259    16654    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    215            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    218            �            1259    16655    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16658 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    220            �            1259    16659    city    TABLE     �   CREATE TABLE public.city (
    city_id character(5) NOT NULL,
    city_name character varying(50),
    airport character varying(100)
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    16662    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    16668    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    222            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    223            �            1259    16669    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16672    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    224            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    225            �            1259    16673    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16678    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    226            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    227            �            1259    16679    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16684    flight    TABLE     D  CREATE TABLE public.flight (
    flight_id character(5) NOT NULL,
    airline character varying(100),
    path_id character(5) NOT NULL,
    departure_time time without time zone,
    arrival_time time without time zone,
    duration time without time zone,
    arrival_date date,
    departure_date date,
    id integer
);
    DROP TABLE public.flight;
       public         heap    postgres    false            �            1259    16687    flight_class    TABLE     �   CREATE TABLE public.flight_class (
    flight_id character(5) NOT NULL,
    seat_class character varying(10),
    price integer
);
     DROP TABLE public.flight_class;
       public         heap    postgres    false            �            1259    16690 	   passenger    TABLE       CREATE TABLE public.passenger (
    id_no character varying(20) NOT NULL,
    ticket_id character varying(10),
    first_name character varying(100),
    last_name character varying(100),
    email character varying(30),
    phone_no character varying(10)
);
    DROP TABLE public.passenger;
       public         heap    postgres    false            �            1259    16693    path    TABLE     z   CREATE TABLE public.path (
    path_id character(5) NOT NULL,
    departure character(5),
    destination character(5)
);
    DROP TABLE public.path;
       public         heap    postgres    false            �            1259    16696    payment    TABLE     �   CREATE TABLE public.payment (
    card_no character varying(20) NOT NULL,
    username character varying(100),
    holder_name character varying(100),
    ticket_id character varying(10)
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    16699    ticket    TABLE     5  CREATE TABLE public.ticket (
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
       public         heap    postgres    false            �           2604    16702    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16703    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16704    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16705    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    215            �           2604    16706    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16707    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16708    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16709    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16710    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �          0    16633 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ğ       �          0    16637    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    16641    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    213   ��       �          0    16645 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    215   �       �          0    16650    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    216   ;�       �          0    16655    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    219   X�       �          0    16659    city 
   TABLE DATA           ;   COPY public.city (city_id, city_name, airport) FROM stdin;
    public          postgres    false    221   u�       �          0    16662    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    222   $�       �          0    16669    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    224   ~�       �          0    16673    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    226   �       �          0    16679    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    228   ��       �          0    16684    flight 
   TABLE DATA           �   COPY public.flight (flight_id, airline, path_id, departure_time, arrival_time, duration, arrival_date, departure_date, id) FROM stdin;
    public          postgres    false    229   K�       �          0    16687    flight_class 
   TABLE DATA           D   COPY public.flight_class (flight_id, seat_class, price) FROM stdin;
    public          postgres    false    230   ��       �          0    16690 	   passenger 
   TABLE DATA           ]   COPY public.passenger (id_no, ticket_id, first_name, last_name, email, phone_no) FROM stdin;
    public          postgres    false    231   T�       �          0    16693    path 
   TABLE DATA           ?   COPY public.path (path_id, departure, destination) FROM stdin;
    public          postgres    false    232   ��       �          0    16696    payment 
   TABLE DATA           L   COPY public.payment (card_no, username, holder_name, ticket_id) FROM stdin;
    public          postgres    false    233   a�       �          0    16699    ticket 
   TABLE DATA           �   COPY public.ticket (ticket_id, flight_id, seat_class, total_amount, username, booking_date, departure_date, status) FROM stdin;
    public          postgres    false    234   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    212            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);
          public          postgres    false    214            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);
          public          postgres    false    218            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    220            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public          postgres    false    223            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);
          public          postgres    false    225            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    227            �           2606    16712    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �           2606    16714 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �           2606    16716 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �           2606    16718    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �           2606    16720 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    213    213            �           2606    16722 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    213            �           2606    16724 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    216            �           2606    16726 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    216    216            �           2606    16728    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    215            �           2606    16730 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    219            �           2606    16732 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    219    219            �           2606    16734     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    215            �           2606    16736    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    221            �           2606    16738 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    222            �           2606    16740 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    224    224            �           2606    16742 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    224            �           2606    16744 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    226            �           2606    16746 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    228            �           2606    16748    flight_class flight_class_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.flight_class
    ADD CONSTRAINT flight_class_pkey PRIMARY KEY (flight_id);
 H   ALTER TABLE ONLY public.flight_class DROP CONSTRAINT flight_class_pkey;
       public            postgres    false    230            �           2606    16750    flight flight_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT flight_pkey PRIMARY KEY (flight_id);
 <   ALTER TABLE ONLY public.flight DROP CONSTRAINT flight_pkey;
       public            postgres    false    229            �           2606    16752    passenger passenger_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (id_no);
 B   ALTER TABLE ONLY public.passenger DROP CONSTRAINT passenger_pkey;
       public            postgres    false    231            �           2606    16754    path path_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.path
    ADD CONSTRAINT path_pkey PRIMARY KEY (path_id);
 8   ALTER TABLE ONLY public.path DROP CONSTRAINT path_pkey;
       public            postgres    false    232            �           2606    16756    payment payment_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (card_no);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    233            �           2606    16758    ticket ticket_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (ticket_id);
 <   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_pkey;
       public            postgres    false    234            �           1259    16759    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �           1259    16760 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �           1259    16761 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �           1259    16762 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    213            �           1259    16763 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    216            �           1259    16764 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    216            �           1259    16765 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    219            �           1259    16766 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    219            �           1259    16767     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    215            �           1259    16768 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    222            �           1259    16769 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    222            �           1259    16770 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    228            �           1259    16771 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    228            �           2606    16772 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3261    211    213            �           2606    16777 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3250    209    211            �           2606    16782 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3288    224    213            �           2606    16787 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    209    3250            �           2606    16792 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    216    215    3263            �           2606    16797 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    213    219    3261            �           2606    16802 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3263    215    219            �           2606    16807 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    224    3288    222            �           2606    16812 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3263    215    222            �           2606    16817    ticket fkey_flight_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT fkey_flight_id FOREIGN KEY (flight_id) REFERENCES public.flight(flight_id) NOT VALID;
 ?   ALTER TABLE ONLY public.ticket DROP CONSTRAINT fkey_flight_id;
       public          postgres    false    3296    234    229            �           2606    16822    flight fkey_path_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT fkey_path_id FOREIGN KEY (path_id) REFERENCES public.path(path_id) NOT VALID;
 =   ALTER TABLE ONLY public.flight DROP CONSTRAINT fkey_path_id;
       public          postgres    false    232    3302    229            �           2606    16827    passenger fkey_ticket_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT fkey_ticket_id FOREIGN KEY (ticket_id) REFERENCES public.ticket(ticket_id) NOT VALID;
 B   ALTER TABLE ONLY public.passenger DROP CONSTRAINT fkey_ticket_id;
       public          postgres    false    231    3306    234            �      x������ � �      �      x������ � �      �     x�]�K��0��ur
N0j£�z�Q�B�b�:�h�����I�%��o��i�g�f��c�Y����G�<��ЂRq�0G��f�a����[�m��Le���4u}0�x`+� �	{�}�R��NT����v�����֝d�~O]D�l�	�����<,�����ӺB�[ZA)���T���qu�<�͏>��_��� ��m�.2�)H���:x�ޟ8�1WY��'���`:Y��;�LL�vf���x댰j'�k�2�      �     x���͎�6���)X��&c;�G�4��| ��1@���$�$�!���v_�	���]�V���Q����FܪQtr��}���؁P��+�}J<�tRC�O-v��v�ڦ8�d�\QZ�>^�^�vك7�r{7�+�o9���X$�`v=2�����+ t�ҫ�@7��B�A��H'� �>_�Uȗ���q���Ա�1#T����o.���9	J�u��>�5�����5o�0V�M��q����r;d��Y�E��G���]��
�	��i�u��j��R)���"���+�K[Jy^俟����d�*���"��\[.��t�_yB����!�]ӎ����liVk�#�a���CM�,�Ip0=4����pkJצּs�o]�Fz7ֺӏ�����j`��ᦑ����H�g"��F8Q���4���U�J��E���;f�*���q����lI�o�ݑsc2"c�vio�� �����*�ѯV��k�cK��k϶�ȧGԼs��**CS�*c����ȃ����(�-G.<�Tⓤ���Ұ	�� �O{Wa�4v�Z_�}wّ� ƾ3O�Q���l����I�3�fݧ�G�H�}��a}��ۗ1���O���#a���*J�PD%���.��(�_������w	T����7�B�g��ol]$�����q͏�7mYb6IfV�7�Nw��`�񢁬���Z|fA��"d"z�D	#��"��O�˾�(e鱈\5�~�Y�9i�=�"�ĺ��jP�������V*��Z��      �      x������ � �      �      x������ � �      �   �   x�u�A
�0E��)�z�*)5�X܌��v"!��& օY�0�������� � ����RP�0G������W]�#�1-���q5_L4S��V/������&x�Ѫ��>���%�JTpB�/;�^��Ff�*A�Y�8U����{���bm      �   J   x�m˱�0��==J�lEI��d�9 !:�;B.�(�#bD���m���܏��h������o��jf���      �   W   x�M�K
�0�y����M�P�C�.z{E��LOn�!љ='���\��
K�!'�o�k��JU̴�d�f���)?�~��pM^%�      �   �  x���M�� F��)f?j�*��,#!��n$�x0nun?@�$R�I6l���zU2t�0'7�t^��B���'o�	���_ޑ�#�h%�7���>�%x�%D���i����iQ"�A3�!�&�)|9��ƞN�-9���ozc䜱���l>F;��g��l��%z@*A�xЅ?�\/L�1���.�rAP�l���1�h'�����7��6������3B��TC�+j[��&��g�Y�nvO)G-',i_��L\� i~�횊z�;�ƽ�˞p�4�h����|lz�wS��B0_����S^K���?��Z��b�Ln]��;x�S&���hé];��,󰄼h�H���+(�$V�A�����%��X��F�-ِ3K�绅�ӣz"���3��̀�M}��RW�ǼC��Vw}�ɟB�\RJ��?��p�nX�      �   �  x���َ�H��뮧���SA@��1�l��%�}�l����̙�j��J�'���s�|��4�Y�-d�:���"J�r�`�I�����T�0���
�2L��fǄ��Q�w�w�K�8\��Z����[�r=^Ѿ��k��ao~���R�'\�s�v1-ڲV���{�}���T�Ͻ��{�[]I��$f��������t�ll�Jz�����L|^{�c42Kd�k>N���O1^yܚw�i���wn�'�h����1��Il���+
� �AQ@�>)��8�? �h|��"v�\�{d�(��>ա(A��K�����b��j�U�v��t���xO��rKImM�lU�l;Ҏd�ʄ?�9�n۰���q��`��}y*���<�ۯc�_�q�ј%S�)S�g�.OF?(z��T�6��˅c�s��ә��-�l��k��\�}]>�S�r�_�~i��8�f��I����o!
~  P���IC�`�K�n@�	������
XVY��j3/���.����e��1]X�߶W���s�/���i������q<3�b?�����%���!�t[�,S7��t��B�z�qg�+��=��4�b���K�V_Z��`���=gh��Ҫm�ֲ��{��|;�8��*��q���css�y�S��P�Պ�G_���26[��z+{_*QC�_s7p����:
�mp�e�=↮]��Ѥ�'����z�Ӱ>�7)Y��r��:�)T�*��7��>����9f�`�~BS�{�|��x0�¬�Y��Ka�C�a��#zU�Px�j�͑��}�#5�z���V
z�j�/)�f긟� ' �������7A jк 	l�$I�����b�x��"R�Ø�')|�ZQ��ǟ �wE���&�7k[�C��
z���M�4e��gW's3�1p�FNѥ��)xK#����>oW}�<��ݟ�s?R1SM��~e������;�Ǔ�h��X�~P�^S��?c��Q{�ED�{��Y�Һ�5`���wK���b�Si�i��z�y��� �(����D34�����i�­���:X���i9'4��Q��6=�[YlM�L�J���0=Ǹ�ԅ*�\�<��M�z�gD�@�_B��/�*i��h2�"�����8���)��JH{ɾ�(�u�އ��i3�D�ϋ��,�f�J*[ne�2k��� �Gs�˼�f�7�\_ggu;=i<K�L{O��Sx���4>y�S6��"���R�Sf�0nd�[�]ݐ�`����H �.}zڸ����MY:�JUY� ҭ�&ZL��%��+"��Đg��e�5yX�]�4�W���3*	P�3%_fs����#D�̳�b�%ek`�1ڻf�j:���x][a��AJ�P��O��ރ�%�T4[%E]%i�]�A���4h��5���Z�⻱���i� ���,ړ^�Փ/�����?��dT�e����,h�]6�����"�C�ŶK�-��Fw�sZp�#N�;7���ߋ�N�Kv�*��/����fSe�S3�X+*�9����MDk�,�ކu�:z���+�\����2�N��Ƕ�\��QG�o"?�k��d ���5���EX��ԣ8���ve�����[�U*���W6���œ���:�ٽ<z�|Z������G�9������S!��������Ǐ� � ;      �   O  x����j�@���S�Z�+��s�$nui��\|D�M�9��k�$﮼��x ��<?�>��(
���|�o����[Xa?���(����Ӈ�Lla�s������(fW��Ak�9}ݘw锧��~��6��_5�������U������ti���iuԸq���aRbMn��ź�վ��>�j%���<%m�~1��5i���*֤1��U�Kc��F9�K���KH��KH��K(��K(��o�9��aS_FɰF1fX�t�8�C��5.��`9��F7��Nj���(c�R��u�K��.IE�z�.�����䗳?{��9���+���GɥU�Qc��U�E�p�GHq�T�8B�#�8B�#D8B�#�8�d3�:6�.�Q�ٱ�w��B*:6�.�F�X�F%��&d�cS����ج�\utlV]���7��j2a��eV�I�1
%G�r)G��9��#�8����=��J��d����9���Ç~c~�:�|Lj��X��}֠�E����xX\@�s���RZ/V�A�۶��,;�n׾=�aq�v�{#����:i�<>����cRc,B!�fV�+ �B� �B� �B� ��&��]�&�ɬש��acF�,�fP�T77I݌:��G�9x�Ԉ�&�������WN:,�!�	���hR�LFyt輟����h{>z�t�P�l(ש�P�E�P��\�"�(B�"�(B�b�V��p��9��z�����j}�DS����EJU⏋z�x��۳aos��g���މ�q9o��~�ܷ۳QoG��=�6�zlG�)��w�aq��f��}��B� �B� DB�`�ox!BJ!C0�f�G�-��;v\ny�E+=~\���}�B      �   �  x�e��r1Ek��d|��V��2)R�.<)�����՞!�8�%���ݞ???>��������(OD�'J���JJ��DuC���D,~V�H�" 2D	�ʶ���*d��m��ص�{p�T|�VMG�MGΣ��̃MGq�Cӑ�6�����ܵ���(����r��X�q\�!�}2��>W=�LT6$8�nhO���y<5���x���<�FI��H]'t,_,�ͱ��L1�lWs`h�}S����(3��2N��0��ua0�|�1�g�������`�a��eh�X��B
�D�{�K��2�^��5툣�����ə�kp�!��"��Z�a�1�o���k�G�*_a�WT^7��t��q��X��{�v�������___7ѱ��J���5�+�4Q�
2��'��H�5`�gc�h�݁l�7tz�դ���Q����q�e�G�Ѓ��+�fg�!�{�G��z�ׇ��d��|���`6��c葇�C���X��p��S`=��1����@�Zlo���m_<��t_<H��}�(�Y�К���y_<򵮅�Tc���1�H��}���^s5�1�h�����g��K����Ր�j=z#c����C�r��Ѵǚ+}��ţ��y�<D�{���r�E��Ps2<���籽�ض�?���      �   N   x�3720��t�v14 2}�B�<�9C�C�=���9K�K�3
���ML�s3s���s9̌MMLM�b���� ���      �   �   x�M��� Dѵ��
"� c�������g�<)�\~u��{�cĸl�'�PI.�+ɒ�.Iq�#ێ�$i�K�XR\�3���ޙ�Pԙ�Pԙ옰�t8_��$��%ցvzC��:$I��.,C�����bl�I�h_^be����~�B?:�T-      �   0   x�345615D����^�A�����^�A���!��ޮ!��\1z\\\ :��      �   S   x��t�v1400�tq200�t*-��K-.�41�4�30��M�*���4202�5"C+0B��q:�������p��qqq �[�     