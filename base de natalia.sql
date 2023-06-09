PGDMP     %                    {            ventas    15.2    15.2 5    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    24781    ventas    DATABASE     y   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE ventas;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            ,           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    5            �            1259    24841    books    TABLE     i  CREATE TABLE public.books (
    idbook integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250),
    descripcion text,
    price double precision NOT NULL,
    cover_path character varying(250),
    file_path character varying(250),
    created_ad timestamp with time zone NOT NULL,
    uptade_at timestamp with time zone
);
    DROP TABLE public.books;
       public         heap    postgres    false    5            �            1259    24846    books_idbook_seq    SEQUENCE     �   CREATE SEQUENCE public.books_idbook_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.books_idbook_seq;
       public          postgres    false    5    215            -           0    0    books_idbook_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.books_idbook_seq OWNED BY public.books.idbook;
          public          postgres    false    216            �            1259    24847 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer NOT NULL,
    orden_id integer NOT NULL,
    price double precision NOT NULL,
    downs_ava integer NOT NULL
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false    5            �            1259    24850    sales_item_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sales_item_book_id_seq;
       public          postgres    false    5    217            .           0    0    sales_item_book_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sales_item_book_id_seq OWNED BY public.sales_item.book_id;
          public          postgres    false    218            �            1259    24851    sales_item_downs_ava_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_downs_ava_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.sales_item_downs_ava_seq;
       public          postgres    false    5    217            /           0    0    sales_item_downs_ava_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.sales_item_downs_ava_seq OWNED BY public.sales_item.downs_ava;
          public          postgres    false    219            �            1259    24852    sales_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sales_item_id_seq;
       public          postgres    false    217    5            0           0    0    sales_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sales_item_id_seq OWNED BY public.sales_item.id;
          public          postgres    false    220            �            1259    24853    sales_item_orden_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_orden_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sales_item_orden_id_seq;
       public          postgres    false    5    217            1           0    0    sales_item_orden_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sales_item_orden_id_seq OWNED BY public.sales_item.orden_id;
          public          postgres    false    221            �            1259    24854    sales_orden    TABLE     �   CREATE TABLE public.sales_orden (
    idorden integer NOT NULL,
    customer_id integer NOT NULL,
    total double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    payment_status character varying NOT NULL
);
    DROP TABLE public.sales_orden;
       public         heap    postgres    false    5            �            1259    24859    sales_orden_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_orden_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.sales_orden_customer_id_seq;
       public          postgres    false    5    222            2           0    0    sales_orden_customer_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.sales_orden_customer_id_seq OWNED BY public.sales_orden.customer_id;
          public          postgres    false    223            �            1259    24860    sales_orden_idorden_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_orden_idorden_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sales_orden_idorden_seq;
       public          postgres    false    222    5            3           0    0    sales_orden_idorden_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sales_orden_idorden_seq OWNED BY public.sales_orden.idorden;
          public          postgres    false    224            �            1259    24861    usuario    TABLE     �  CREATE TABLE public.usuario (
    id_user integer NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    fullname character varying(100) NOT NULL,
    email character varying(45) NOT NULL,
    "contraseña" character varying(250) NOT NULL,
    created_at timestamp with time zone,
    uptaded_at timestamp with time zone,
    rol character varying(100) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    5            �            1259    24866    usuario_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuario_id_user_seq;
       public          postgres    false    5    225            4           0    0    usuario_id_user_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuario_id_user_seq OWNED BY public.usuario.id_user;
          public          postgres    false    226            y           2604    24867    books idbook    DEFAULT     l   ALTER TABLE ONLY public.books ALTER COLUMN idbook SET DEFAULT nextval('public.books_idbook_seq'::regclass);
 ;   ALTER TABLE public.books ALTER COLUMN idbook DROP DEFAULT;
       public          postgres    false    216    215            z           2604    24868    sales_item id    DEFAULT     n   ALTER TABLE ONLY public.sales_item ALTER COLUMN id SET DEFAULT nextval('public.sales_item_id_seq'::regclass);
 <   ALTER TABLE public.sales_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    217            {           2604    24869    sales_item book_id    DEFAULT     x   ALTER TABLE ONLY public.sales_item ALTER COLUMN book_id SET DEFAULT nextval('public.sales_item_book_id_seq'::regclass);
 A   ALTER TABLE public.sales_item ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    218    217            |           2604    24870    sales_item orden_id    DEFAULT     z   ALTER TABLE ONLY public.sales_item ALTER COLUMN orden_id SET DEFAULT nextval('public.sales_item_orden_id_seq'::regclass);
 B   ALTER TABLE public.sales_item ALTER COLUMN orden_id DROP DEFAULT;
       public          postgres    false    221    217            }           2604    24871    sales_item downs_ava    DEFAULT     |   ALTER TABLE ONLY public.sales_item ALTER COLUMN downs_ava SET DEFAULT nextval('public.sales_item_downs_ava_seq'::regclass);
 C   ALTER TABLE public.sales_item ALTER COLUMN downs_ava DROP DEFAULT;
       public          postgres    false    219    217            ~           2604    24872    sales_orden idorden    DEFAULT     z   ALTER TABLE ONLY public.sales_orden ALTER COLUMN idorden SET DEFAULT nextval('public.sales_orden_idorden_seq'::regclass);
 B   ALTER TABLE public.sales_orden ALTER COLUMN idorden DROP DEFAULT;
       public          postgres    false    224    222                       2604    24873    sales_orden customer_id    DEFAULT     �   ALTER TABLE ONLY public.sales_orden ALTER COLUMN customer_id SET DEFAULT nextval('public.sales_orden_customer_id_seq'::regclass);
 F   ALTER TABLE public.sales_orden ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    24874    usuario id_user    DEFAULT     r   ALTER TABLE ONLY public.usuario ALTER COLUMN id_user SET DEFAULT nextval('public.usuario_id_user_seq'::regclass);
 >   ALTER TABLE public.usuario ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    226    225                      0    24841    books 
   TABLE DATA           v   COPY public.books (idbook, title, slug, descripcion, price, cover_path, file_path, created_ad, uptade_at) FROM stdin;
    public          postgres    false    215   =                 0    24847 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, orden_id, price, downs_ava) FROM stdin;
    public          postgres    false    217   >       !          0    24854    sales_orden 
   TABLE DATA           ^   COPY public.sales_orden (idorden, customer_id, total, created_at, payment_status) FROM stdin;
    public          postgres    false    222   Y>       $          0    24861    usuario 
   TABLE DATA           |   COPY public.usuario (id_user, firstname, lastname, fullname, email, "contraseña", created_at, uptaded_at, rol) FROM stdin;
    public          postgres    false    225   �>       5           0    0    books_idbook_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.books_idbook_seq', 3, true);
          public          postgres    false    216            6           0    0    sales_item_book_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sales_item_book_id_seq', 1, false);
          public          postgres    false    218            7           0    0    sales_item_downs_ava_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sales_item_downs_ava_seq', 1, true);
          public          postgres    false    219            8           0    0    sales_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sales_item_id_seq', 5, true);
          public          postgres    false    220            9           0    0    sales_item_orden_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sales_item_orden_id_seq', 1, false);
          public          postgres    false    221            :           0    0    sales_orden_customer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.sales_orden_customer_id_seq', 6, true);
          public          postgres    false    223            ;           0    0    sales_orden_idorden_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sales_orden_idorden_seq', 6, true);
          public          postgres    false    224            <           0    0    usuario_id_user_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuario_id_user_seq', 2, true);
          public          postgres    false    226            �           2606    24876    books books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (idbook);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    215            �           2606    24878    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    217            �           2606    24880    sales_orden sales_orden_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.sales_orden
    ADD CONSTRAINT sales_orden_pkey PRIMARY KEY (idorden);
 F   ALTER TABLE ONLY public.sales_orden DROP CONSTRAINT sales_orden_pkey;
       public            postgres    false    222            �           2606    24882    usuario usuario_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_user);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    225            �           2606    24883 "   sales_item sales_item_book_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(idbook);
 L   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_book_id_fkey;
       public          postgres    false    215    217    3202            �           2606    24888 #   sales_item sales_item_orden_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_orden_id_fkey FOREIGN KEY (orden_id) REFERENCES public.sales_orden(idorden);
 M   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_orden_id_fkey;
       public          postgres    false    217    3206    222            �           2606    24893 (   sales_orden sales_orden_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_orden
    ADD CONSTRAINT sales_orden_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.usuario(id_user);
 R   ALTER TABLE ONLY public.sales_orden DROP CONSTRAINT sales_orden_customer_id_fkey;
       public          postgres    false    222    3208    225               �   x�u�An�0E��)����=A6\�x"c����*�F���{_s�Κ�����cj�b���>�x,��L8�Ol�q%��}EtT	��.QCRP��LAth݇5�1�z:�?���Ǡ�z5�Z$��H�� �����ޒ'7l��|�DtF�v��nc��������͠�g���\	��R(��˵�~������d\��M��~�V����,�<˲o��L         <   x�˹� ��X.��}0�B�u��iM�m��J��rY֗y-�V/�Yfh�$~V�9$�Φa      !   �   x�u�1�0��>E.`�8N[z�����_(�������,(�aVbO�����̶�pׂ
ӆ&�kQ�a}\RM�:p/���H���R&�s���Ĳ��<����ǟ�f�)�V�t@�'�*2h      $     x�]�A�� E�p
.�)Pږ�d65J&j��t2s�A��Q���#�G[�����t�>oh���� �� ��>i}{�/j}癤s������@�pM�fV�6�
�΀3{ԮW�k���Cü0.�I���.��iZ�6P)���p�t�X+����"��Im��ZbiE�C�Q,Čq�����-�HO���[��Y8"������r�c^��8�����d��n��M����[��ʽ�M��>�q��3�R�}ɞ�     