PGDMP                     	    w         	   messenger    9.4.24    9.4.24 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �	           1262    16394 	   messenger    DATABASE     g   CREATE DATABASE messenger WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE messenger;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �	           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12123    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16426 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    6            �            1259    16424    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    6    180            �	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    179            �            1259    16436    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    6            �            1259    16434    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    182    6            �	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    181            �            1259    16418    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    6            �            1259    16416    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    178    6            �	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    177            �            1259    16444 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    6            �            1259    16454    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    6            �            1259    16452    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    186    6            �	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    185            �            1259    16442    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    6    184            �	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    183            �            1259    16462    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    6            �            1259    16460 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    6    188            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    187            �            1259    16522    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false    6            �            1259    16520    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    190    6            �	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    189            �            1259    16408    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    6            �            1259    16406    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    6    176            �	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    175            �            1259    16397    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    6            �            1259    16395    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    6    174            �	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    173            �            1259    16553    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    6            �            1259    16577    manager_author    TABLE       CREATE TABLE public.manager_author (
    id integer NOT NULL,
    status boolean NOT NULL,
    create_date date NOT NULL,
    modify_date date NOT NULL,
    delete_date date NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(150) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    facebook character varying(200),
    twitter character varying(200),
    instagram character varying(200),
    web character varying(200)
);
 "   DROP TABLE public.manager_author;
       public         postgres    false    6            �            1259    16575    manager_author_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.manager_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.manager_author_id_seq;
       public       postgres    false    6    195            �	           0    0    manager_author_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.manager_author_id_seq OWNED BY public.manager_author.id;
            public       postgres    false    194            �            1259    16566    manager_category    TABLE       CREATE TABLE public.manager_category (
    id integer NOT NULL,
    status boolean NOT NULL,
    create_date date NOT NULL,
    modify_date date NOT NULL,
    delete_date date NOT NULL,
    name character varying(100) NOT NULL,
    image character varying(100) NOT NULL
);
 $   DROP TABLE public.manager_category;
       public         postgres    false    6            �            1259    16564    manager_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.manager_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.manager_category_id_seq;
       public       postgres    false    193    6            �	           0    0    manager_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.manager_category_id_seq OWNED BY public.manager_category.id;
            public       postgres    false    192            �            1259    16639    manager_contact    TABLE     �  CREATE TABLE public.manager_contact (
    id integer NOT NULL,
    status boolean NOT NULL,
    create_date date NOT NULL,
    modify_date date NOT NULL,
    delete_date date NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(150) NOT NULL,
    subject character varying(100) NOT NULL,
    message text NOT NULL
);
 #   DROP TABLE public.manager_contact;
       public         postgres    false    6            �            1259    16637    manager_contact_id_seq    SEQUENCE        CREATE SEQUENCE public.manager_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.manager_contact_id_seq;
       public       postgres    false    203    6            �	           0    0    manager_contact_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.manager_contact_id_seq OWNED BY public.manager_contact.id;
            public       postgres    false    202            �            1259    16588    manager_post    TABLE     �  CREATE TABLE public.manager_post (
    id integer NOT NULL,
    status boolean NOT NULL,
    create_date date NOT NULL,
    modify_date date NOT NULL,
    delete_date date NOT NULL,
    title character varying(100) NOT NULL,
    slug character varying(150) NOT NULL,
    description text NOT NULL,
    image character varying(150) NOT NULL,
    published boolean NOT NULL,
    published_date date NOT NULL,
    content text NOT NULL,
    id_author_id integer NOT NULL,
    id_category_id integer NOT NULL
);
     DROP TABLE public.manager_post;
       public         postgres    false    6            �            1259    16586    manager_post_id_seq    SEQUENCE     |   CREATE SEQUENCE public.manager_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.manager_post_id_seq;
       public       postgres    false    6    197            �	           0    0    manager_post_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.manager_post_id_seq OWNED BY public.manager_post.id;
            public       postgres    false    196            �            1259    16617    manager_social    TABLE     m  CREATE TABLE public.manager_social (
    id integer NOT NULL,
    status boolean NOT NULL,
    create_date date NOT NULL,
    modify_date date NOT NULL,
    delete_date date NOT NULL,
    facebook character varying(200) NOT NULL,
    twitter character varying(200) NOT NULL,
    instagram character varying(200) NOT NULL,
    web character varying(200) NOT NULL
);
 "   DROP TABLE public.manager_social;
       public         postgres    false    6            �            1259    16615    manager_social_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.manager_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.manager_social_id_seq;
       public       postgres    false    6    199            �	           0    0    manager_social_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.manager_social_id_seq OWNED BY public.manager_social.id;
            public       postgres    false    198            �            1259    16650    manager_suscriber    TABLE     �   CREATE TABLE public.manager_suscriber (
    id integer NOT NULL,
    status boolean NOT NULL,
    create_date date NOT NULL,
    modify_date date NOT NULL,
    delete_date date NOT NULL,
    email character varying(150) NOT NULL
);
 %   DROP TABLE public.manager_suscriber;
       public         postgres    false    6            �            1259    16648    manager_suscriber_id_seq    SEQUENCE     �   CREATE SEQUENCE public.manager_suscriber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.manager_suscriber_id_seq;
       public       postgres    false    6    205            �	           0    0    manager_suscriber_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.manager_suscriber_id_seq OWNED BY public.manager_suscriber.id;
            public       postgres    false    204            �            1259    16628    manager_web    TABLE     U  CREATE TABLE public.manager_web (
    id integer NOT NULL,
    status boolean NOT NULL,
    create_date date NOT NULL,
    modify_date date NOT NULL,
    delete_date date NOT NULL,
    about_us text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(150) NOT NULL,
    address character varying(200) NOT NULL
);
    DROP TABLE public.manager_web;
       public         postgres    false    6            �            1259    16626    manager_web_id_seq    SEQUENCE     {   CREATE SEQUENCE public.manager_web_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.manager_web_id_seq;
       public       postgres    false    201    6            �	           0    0    manager_web_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.manager_web_id_seq OWNED BY public.manager_web.id;
            public       postgres    false    200            �           2604    16429    id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    180    179    180            �           2604    16439    id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    182    181    182            �           2604    16421    id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    177    178    178            �           2604    16447    id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    184    184            �           2604    16457    id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            �           2604    16465    id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            �           2604    16525    id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            �           2604    16411    id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    176    175    176            �           2604    16400    id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    173    174            �           2604    16580    id    DEFAULT     v   ALTER TABLE ONLY public.manager_author ALTER COLUMN id SET DEFAULT nextval('public.manager_author_id_seq'::regclass);
 @   ALTER TABLE public.manager_author ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    195    195            �           2604    16569    id    DEFAULT     z   ALTER TABLE ONLY public.manager_category ALTER COLUMN id SET DEFAULT nextval('public.manager_category_id_seq'::regclass);
 B   ALTER TABLE public.manager_category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    193    193            �           2604    16642    id    DEFAULT     x   ALTER TABLE ONLY public.manager_contact ALTER COLUMN id SET DEFAULT nextval('public.manager_contact_id_seq'::regclass);
 A   ALTER TABLE public.manager_contact ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �           2604    16591    id    DEFAULT     r   ALTER TABLE ONLY public.manager_post ALTER COLUMN id SET DEFAULT nextval('public.manager_post_id_seq'::regclass);
 >   ALTER TABLE public.manager_post ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �           2604    16620    id    DEFAULT     v   ALTER TABLE ONLY public.manager_social ALTER COLUMN id SET DEFAULT nextval('public.manager_social_id_seq'::regclass);
 @   ALTER TABLE public.manager_social ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �           2604    16653    id    DEFAULT     |   ALTER TABLE ONLY public.manager_suscriber ALTER COLUMN id SET DEFAULT nextval('public.manager_suscriber_id_seq'::regclass);
 C   ALTER TABLE public.manager_suscriber ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            �           2604    16631    id    DEFAULT     p   ALTER TABLE ONLY public.manager_web ALTER COLUMN id SET DEFAULT nextval('public.manager_web_id_seq'::regclass);
 =   ALTER TABLE public.manager_web ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �	          0    16426 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    180   �       �	           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    179            �	          0    16436    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    182   %�       �	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    181            �	          0    16418    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    178   B�       �	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
            public       postgres    false    177            �	          0    16444 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    184   [�       �	          0    16454    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    186   i�       �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    185            �	           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    183            �	          0    16462    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    188   ��       �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    187            �	          0    16522    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    190   ��       �	           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);
            public       postgres    false    189            �	          0    16408    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    176   b�       �	           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
            public       postgres    false    175            �	          0    16397    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    174    �       �	           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
            public       postgres    false    173            �	          0    16553    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    191   �       �	          0    16577    manager_author 
   TABLE DATA               �   COPY public.manager_author (id, status, create_date, modify_date, delete_date, first_name, last_name, email, description, image, facebook, twitter, instagram, web) FROM stdin;
    public       postgres    false    195   b�       �	           0    0    manager_author_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.manager_author_id_seq', 1, true);
            public       postgres    false    194            �	          0    16566    manager_category 
   TABLE DATA               j   COPY public.manager_category (id, status, create_date, modify_date, delete_date, name, image) FROM stdin;
    public       postgres    false    193   ��       �	           0    0    manager_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.manager_category_id_seq', 1, false);
            public       postgres    false    192            �	          0    16639    manager_contact 
   TABLE DATA               �   COPY public.manager_contact (id, status, create_date, modify_date, delete_date, first_name, last_name, email, subject, message) FROM stdin;
    public       postgres    false    203   ��       �	           0    0    manager_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.manager_contact_id_seq', 1, false);
            public       postgres    false    202            �	          0    16588    manager_post 
   TABLE DATA               �   COPY public.manager_post (id, status, create_date, modify_date, delete_date, title, slug, description, image, published, published_date, content, id_author_id, id_category_id) FROM stdin;
    public       postgres    false    197   	�       �	           0    0    manager_post_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.manager_post_id_seq', 1, false);
            public       postgres    false    196            �	          0    16617    manager_social 
   TABLE DATA               ~   COPY public.manager_social (id, status, create_date, modify_date, delete_date, facebook, twitter, instagram, web) FROM stdin;
    public       postgres    false    199   &�       �	           0    0    manager_social_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.manager_social_id_seq', 1, false);
            public       postgres    false    198            �	          0    16650    manager_suscriber 
   TABLE DATA               e   COPY public.manager_suscriber (id, status, create_date, modify_date, delete_date, email) FROM stdin;
    public       postgres    false    205   C�       �	           0    0    manager_suscriber_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.manager_suscriber_id_seq', 1, false);
            public       postgres    false    204            �	          0    16628    manager_web 
   TABLE DATA               y   COPY public.manager_web (id, status, create_date, modify_date, delete_date, about_us, phone, email, address) FROM stdin;
    public       postgres    false    201   `�       �	           0    0    manager_web_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.manager_web_id_seq', 1, false);
            public       postgres    false    200            �           2606    16551    auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    180    180            �           2606    16488 ;   auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    182    182    182            �           2606    16441    auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    182    182            �           2606    16431    auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    180    180            �           2606    16474 6   auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    178    178    178            �           2606    16423    auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    178    178            �           2606    16459    auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    186    186            �           2606    16503 /   auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    186    186    186            �           2606    16449    auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    184    184            �           2606    16467    auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    188    188            	           2606    16517 >   auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    188    188    188            �           2606    16545    auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    184    184            	           2606    16531    django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    190    190            �           2606    16415 1   django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    176    176    176            �           2606    16413    django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    176    176            �           2606    16405    django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    174    174            	           2606    16560    django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    191    191            	           2606    16585    manager_author_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.manager_author
    ADD CONSTRAINT manager_author_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.manager_author DROP CONSTRAINT manager_author_pkey;
       public         postgres    false    195    195            	           2606    16573    manager_category_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.manager_category
    ADD CONSTRAINT manager_category_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.manager_category DROP CONSTRAINT manager_category_name_key;
       public         postgres    false    193    193            	           2606    16571    manager_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.manager_category
    ADD CONSTRAINT manager_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.manager_category DROP CONSTRAINT manager_category_pkey;
       public         postgres    false    193    193             	           2606    16647    manager_contact_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.manager_contact
    ADD CONSTRAINT manager_contact_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.manager_contact DROP CONSTRAINT manager_contact_pkey;
       public         postgres    false    203    203            	           2606    16596    manager_post_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.manager_post
    ADD CONSTRAINT manager_post_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.manager_post DROP CONSTRAINT manager_post_pkey;
       public         postgres    false    197    197            	           2606    16600    manager_post_slug_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.manager_post
    ADD CONSTRAINT manager_post_slug_key UNIQUE (slug);
 L   ALTER TABLE ONLY public.manager_post DROP CONSTRAINT manager_post_slug_key;
       public         postgres    false    197    197            	           2606    16598    manager_post_title_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.manager_post
    ADD CONSTRAINT manager_post_title_key UNIQUE (title);
 M   ALTER TABLE ONLY public.manager_post DROP CONSTRAINT manager_post_title_key;
       public         postgres    false    197    197            	           2606    16625    manager_social_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.manager_social
    ADD CONSTRAINT manager_social_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.manager_social DROP CONSTRAINT manager_social_pkey;
       public         postgres    false    199    199            "	           2606    16655    manager_suscriber_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.manager_suscriber
    ADD CONSTRAINT manager_suscriber_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.manager_suscriber DROP CONSTRAINT manager_suscriber_pkey;
       public         postgres    false    205    205            	           2606    16636    manager_web_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.manager_web
    ADD CONSTRAINT manager_web_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.manager_web DROP CONSTRAINT manager_web_pkey;
       public         postgres    false    201    201            �           1259    16552    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    180            �           1259    16489 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    182            �           1259    16490 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    182            �           1259    16475 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    178            �           1259    16505 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    186            �           1259    16504 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    186            �           1259    16519 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    188            �           1259    16518 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    188            �           1259    16546     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    184            	           1259    16542 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    190            	           1259    16543 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    190            	           1259    16562 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    191            		           1259    16561 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    191            
	           1259    16574 #   manager_category_name_b65ac0c7_like    INDEX     t   CREATE INDEX manager_category_name_b65ac0c7_like ON public.manager_category USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.manager_category_name_b65ac0c7_like;
       public         postgres    false    193            	           1259    16613 "   manager_post_id_author_id_aa9b741b    INDEX     c   CREATE INDEX manager_post_id_author_id_aa9b741b ON public.manager_post USING btree (id_author_id);
 6   DROP INDEX public.manager_post_id_author_id_aa9b741b;
       public         postgres    false    197            	           1259    16614 $   manager_post_id_category_id_5b5a013d    INDEX     g   CREATE INDEX manager_post_id_category_id_5b5a013d ON public.manager_post USING btree (id_category_id);
 8   DROP INDEX public.manager_post_id_category_id_5b5a013d;
       public         postgres    false    197            	           1259    16612    manager_post_slug_b58379fd_like    INDEX     l   CREATE INDEX manager_post_slug_b58379fd_like ON public.manager_post USING btree (slug varchar_pattern_ops);
 3   DROP INDEX public.manager_post_slug_b58379fd_like;
       public         postgres    false    197            	           1259    16611     manager_post_title_b2840408_like    INDEX     n   CREATE INDEX manager_post_title_b2840408_like ON public.manager_post USING btree (title varchar_pattern_ops);
 4   DROP INDEX public.manager_post_title_b2840408_like;
       public         postgres    false    197            %	           2606    16482 8   auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    178    182    2277            $	           2606    16477 9   auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    182    2282    180            #	           2606    16468 5   auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    176    2272    178            '	           2606    16497 3   auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2282    186    180            &	           2606    16492 1   auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    186    184    2290            )	           2606    16511 8   auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2277    188    178            (	           2606    16506 ;   auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    184    188    2290            *	           2606    16532 6   django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2272    176    190            +	           2606    16537 1   django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    184    2290    190            ,	           2606    16601 7   manager_post_id_author_id_aa9b741b_fk_manager_author_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.manager_post
    ADD CONSTRAINT manager_post_id_author_id_aa9b741b_fk_manager_author_id FOREIGN KEY (id_author_id) REFERENCES public.manager_author(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.manager_post DROP CONSTRAINT manager_post_id_author_id_aa9b741b_fk_manager_author_id;
       public       postgres    false    195    197    2320            -	           2606    16606 ;   manager_post_id_category_id_5b5a013d_fk_manager_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.manager_post
    ADD CONSTRAINT manager_post_id_category_id_5b5a013d_fk_manager_category_id FOREIGN KEY (id_category_id) REFERENCES public.manager_category(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.manager_post DROP CONSTRAINT manager_post_id_category_id_5b5a013d_fk_manager_category_id;
       public       postgres    false    2318    197    193            �	      x������ � �      �	      x������ � �      �	   	  x�e�Kj�0���)|���kYr�B����4���4��UF�y$;k�����3�n��á:�c��8�g��+��hk@�S7��r����?���\b��w�7��-��⧟a��0�Ը`WRN�h'ص�S,

vÊ�G�m��8���4 ��-�\�"N:u�Y� `�����L�O�Z9�8>K9����6���5M��ӭU�����t�X��"0
)~+�x��|�`�t��z��VW �'[��3�����3�z���3V�p�w]�ǐ�a��!m�b.���T`�k��,�.�8ݯ�x
�ـWۨ|�NR	'}
$2N��S��h��H��Q)�nY~ T�(�H9��C�S���;W���0}��ސ��Fe�-�AZ%��.)�t+����0!����{��S~�{۪Xc����}Ԁ�2va0�D�Ӫu}4��W m�̐�~�t~�[��/S���pz߯s?���@ϥ`�*�
,WƬʲb˅1+"��|]�}�Xk�`��      �	   �   x�m�Mo�@���+<p3��,�W�D*m���ؔ�(��"(H��[zu&����} ��!� j��*�y��:,��e��u"Z�!�i�>uA�gg_�GZ��[k_�}[�Y}+���=�U|�"��~ ����������Q��7`bHؐ(� 6�b*L�L �AN��6�|ɇ�Z���ϖI��f�{Ռ�u���궭�S��$�;ms��2!�	`b* �qZ�O���89��e$&�eP)P�G�ɂ ��UXz      �	      x������ � �      �	      x������ � �      �	   �   x�m���0F��)Hg �?W�n����F@1a1�w$&Ƹ�o9�L�t�LC����s�:�2�nw�C��$+&AUUW�'�<��0�կ ���@�+P��|���)D�ֱ,|c詫E��H_�+�CFjQ~�z�K��$�yD�&�n���d�%�����(N9��<	BL      �	   �   x�M�K�0D��a)���q�"�qd'B�=�����Io��1��NE�jyBf��Y�������j�x/�4�,��?�������L�+x*�m];���⭃,V��{6�&t���膭���o�as�y�c���C�7N�      �	      x���ݒ� F��S�bu�'�,[E1�M�RqAg'o���Θ��pߡ94`Ѹa��4�F
 @��Ԛ� ���D�`M�&��@�'�R�y�� !��-̹o��N$�y��ݹK,�ߴ��{�:��9���p.�?���9m��u��ݙ�n��m��]� �X�.�Y�}B�=���$��$T��#�t��z��oCH%���͇��p���QR�\�\Q�Clo��%E	�ٓZ)lKIC.ǍӾ�p�+�o�	SR�Ɠ������� ����[����ur���$Ͻ������=����/�z��m����A	KMt��]9/,���բ��$�MяP\p�3��w��3�`pǈ�z�"�G�>n��|⧊��U�}���-*Q-Oeћ!���)
G5�5#%����2�6E�?pu��� j�^."�o��6D����%ªd	P�nL����_���N���j�5�%aJ��g$� Ͻ�������/�xDĲR�Us�Wy8�����      �	   B  x����n�0 �ky�����2��.A�JvÏЖV��<�ԋ=�r�NNr�20�s/0��rR}�Q��tX]U5#�[M$f<���D�Bv��D|B"�<B�w#�j���K����g�dʳ�)�=�����gpc�[����Ĝ�䜧V狞�ہ��������.R�Y������EJx��0
/�T{�[�k��f�A�*�>?5��q%'��q �4�T�(L7<w�;�~!"X�ha�R�-�O�c���&����X�,{� k��9���ܴ��k���k�����>�6��{�9o&^A��[`����^��^�Џ      �	   ]   x�3�,�420��54�50����O��t�L�I��2RR����9=s�KK2��8!t�����e�n�cAAN��^A^:g�q��qqq �tb      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �     