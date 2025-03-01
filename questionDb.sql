PGDMP     3                    |         
   questionDb    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16428 
   questionDb    DATABASE        CREATE DATABASE "questionDb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "questionDb";
                postgres    false            �            1259    16430    question    TABLE     o  CREATE TABLE public.question (
    id integer NOT NULL,
    category character varying(255),
    difficultylevel character varying(255),
    option1 character varying(255),
    option2 character varying(255),
    option3 character varying(255),
    option4 character varying(255),
    question_title character varying(255),
    right_answer character varying(255)
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    16429    question_id_seq    SEQUENCE     �   ALTER TABLE public.question ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16493    question_seq    SEQUENCE     v   CREATE SEQUENCE public.question_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.question_seq;
       public          postgres    false            �            1259    16502    quiz    TABLE     X   CREATE TABLE public.quiz (
    id integer NOT NULL,
    title character varying(255)
);
    DROP TABLE public.quiz;
       public         heap    postgres    false            �            1259    16501    quiz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.quiz_id_seq;
       public          postgres    false    218                       0    0    quiz_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.quiz_id_seq OWNED BY public.quiz.id;
          public          postgres    false    217            �            1259    16508    quiz_questions    TABLE     h   CREATE TABLE public.quiz_questions (
    quiz_id integer NOT NULL,
    questions_id integer NOT NULL
);
 "   DROP TABLE public.quiz_questions;
       public         heap    postgres    false            o           2604    16505    quiz id    DEFAULT     b   ALTER TABLE ONLY public.quiz ALTER COLUMN id SET DEFAULT nextval('public.quiz_id_seq'::regclass);
 6   ALTER TABLE public.quiz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                      0    16430    question 
   TABLE DATA           �   COPY public.question (id, category, difficultylevel, option1, option2, option3, option4, question_title, right_answer) FROM stdin;
    public          postgres    false    215   �                 0    16502    quiz 
   TABLE DATA           )   COPY public.quiz (id, title) FROM stdin;
    public          postgres    false    218   �       	          0    16508    quiz_questions 
   TABLE DATA           ?   COPY public.quiz_questions (quiz_id, questions_id) FROM stdin;
    public          postgres    false    219                     0    0    question_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.question_id_seq', 9, true);
          public          postgres    false    214                       0    0    question_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.question_seq', 51, true);
          public          postgres    false    216                       0    0    quiz_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.quiz_id_seq', 1, true);
          public          postgres    false    217            q           2606    16436    question question_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            postgres    false    215            s           2606    16507    quiz quiz_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.quiz DROP CONSTRAINT quiz_pkey;
       public            postgres    false    218            t           2606    16516 *   quiz_questions fkcgp9e1c6ww3t383aui4w8feae    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_questions
    ADD CONSTRAINT fkcgp9e1c6ww3t383aui4w8feae FOREIGN KEY (quiz_id) REFERENCES public.quiz(id);
 T   ALTER TABLE ONLY public.quiz_questions DROP CONSTRAINT fkcgp9e1c6ww3t383aui4w8feae;
       public          postgres    false    218    219    3187            u           2606    16511 *   quiz_questions fkpmfvwer12y1nrjc0efm04dq16    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_questions
    ADD CONSTRAINT fkpmfvwer12y1nrjc0efm04dq16 FOREIGN KEY (questions_id) REFERENCES public.question(id);
 T   ALTER TABLE ONLY public.quiz_questions DROP CONSTRAINT fkpmfvwer12y1nrjc0efm04dq16;
       public          postgres    false    215    219    3185               G  x��TOoS1?�}
A��uM���Є���e�4�k�%v��{��i�v�@Hܒ�����W?�J�o:��x��rT0�ڠ§�d�$D��d�k���
<��d�e2Z(&�.�0o`[���͹����CtS�$��T��D�ġ ��]����Ѣ���\�XfpO"��L/e	wc.&0�I��<����T��぀+�"�L�Z*���NN�E�h0L�h*�y˒-M0��`���N�E��~U�6 wZ-^��*q���\h�&Qp�`pŭ$>F��
Z�VC�/��{P$;�M����\݌�H����y����ԭ�a�p��r����Y>��O��pW8��+�����M�E�!Tך�^��������򎓀��� *�4�2���@�8&폎��;�u$A�Ӧ�ֽ�n�U��9�٫�ő`b5bV�Y:���X�<B I?�p��1:K��r{�%�\׾ʩ-Wq\�0�Ye�>QǶ�^V*n���v6�$�m5��]�VL/#=����Nj^A���2���I>���ĄҬ�Ʉb�s>q�S>��ɯ/Ա��I�9f�䠻�t]��r�            x�3��
,ͬ����� �      	      x�3�4�2�4bC�=... .     