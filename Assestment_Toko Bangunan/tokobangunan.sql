PGDMP  3    !                {            tokobangunan    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16429    tokobangunan    DATABASE     �   CREATE DATABASE tokobangunan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE tokobangunan;
                postgres    false            �            1259    16430    barang    TABLE     �   CREATE TABLE public.barang (
    "seqId" character varying NOT NULL,
    "namaBarang" character varying NOT NULL,
    "hargaBarang" double precision NOT NULL,
    "jumlahStock" integer NOT NULL
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16435    seqid_barang    SEQUENCE     u   CREATE SEQUENCE public.seqid_barang
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.seqid_barang;
       public          postgres    false    215            �           0    0    seqid_barang    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.seqid_barang OWNED BY public.barang."seqId";
          public          postgres    false    216            �            1259    16436    user    TABLE     �   CREATE TABLE public."user" (
    "userId" integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(64) NOT NULL,
    role integer NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16439    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false    217            �           0    0    user_user_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user"."userId";
          public          postgres    false    218            U           2604    16440    barang seqId    DEFAULT     j   ALTER TABLE ONLY public.barang ALTER COLUMN "seqId" SET DEFAULT nextval('public.seqid_barang'::regclass);
 =   ALTER TABLE public.barang ALTER COLUMN "seqId" DROP DEFAULT;
       public          postgres    false    216    215            V           2604    16441    user userId    DEFAULT     o   ALTER TABLE ONLY public."user" ALTER COLUMN "userId" SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 >   ALTER TABLE public."user" ALTER COLUMN "userId" DROP DEFAULT;
       public          postgres    false    218    217            �          0    16430    barang 
   TABLE DATA           U   COPY public.barang ("seqId", "namaBarang", "hargaBarang", "jumlahStock") FROM stdin;
    public          postgres    false    215   o       �          0    16436    user 
   TABLE DATA           D   COPY public."user" ("userId", username, password, role) FROM stdin;
    public          postgres    false    217   �       �           0    0    seqid_barang    SEQUENCE SET     :   SELECT pg_catalog.setval('public.seqid_barang', 9, true);
          public          postgres    false    216            �           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
          public          postgres    false    218            X           2606    16443    barang barang_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY ("seqId");
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            Z           2606    16445    user user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY ("userId");
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    217            \           2606    16447    user user_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_username_key;
       public            postgres    false    217            �      x�3�H�.�44 NCS�=... 6�      �      x�3�LL��̃��\1z\\\ B�B     