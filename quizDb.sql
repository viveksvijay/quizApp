PGDMP                         |            quizdb    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24693    quizdb    DATABASE     y   CREATE DATABASE quizdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE quizdb;
                postgres    false            �            1259    24695    quiz    TABLE     X   CREATE TABLE public.quiz (
    id integer NOT NULL,
    title character varying(255)
);
    DROP TABLE public.quiz;
       public         heap    postgres    false            �            1259    24694    quiz_id_seq    SEQUENCE     �   ALTER TABLE public.quiz ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    24700    quiz_question_ids    TABLE     b   CREATE TABLE public.quiz_question_ids (
    quiz_id integer NOT NULL,
    question_ids integer
);
 %   DROP TABLE public.quiz_question_ids;
       public         heap    postgres    false            �          0    24695    quiz 
   TABLE DATA           )   COPY public.quiz (id, title) FROM stdin;
    public          postgres    false    215   �       �          0    24700    quiz_question_ids 
   TABLE DATA           B   COPY public.quiz_question_ids (quiz_id, question_ids) FROM stdin;
    public          postgres    false    216   �                  0    0    quiz_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.quiz_id_seq', 1, true);
          public          postgres    false    214            j           2606    24699    quiz quiz_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.quiz DROP CONSTRAINT quiz_pkey;
       public            postgres    false    215            k           2606    24703 -   quiz_question_ids fks0d7k0yq779g15wmctr0tlnbi    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_question_ids
    ADD CONSTRAINT fks0d7k0yq779g15wmctr0tlnbi FOREIGN KEY (quiz_id) REFERENCES public.quiz(id);
 W   ALTER TABLE ONLY public.quiz_question_ids DROP CONSTRAINT fks0d7k0yq779g15wmctr0tlnbi;
       public          postgres    false    216    3178    215            �      x�3�.(��KW,ͬR0����� E7z      �      x�3�4�2�4bc�=... &     