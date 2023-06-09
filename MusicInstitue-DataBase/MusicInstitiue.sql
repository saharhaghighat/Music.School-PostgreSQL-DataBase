PGDMP                          {            MusicInstitiue    15.1    15.1 v    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    MusicInstitiue    DATABASE     �   CREATE DATABASE "MusicInstitiue" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
     DROP DATABASE "MusicInstitiue";
                postgres    false            a           1247    16403    address    TYPE     o   CREATE TYPE public.address AS (
	city character varying(30),
	street character varying(30),
	number integer
);
    DROP TYPE public.address;
       public          postgres    false            ^           1247    16400    date    TYPE     L   CREATE TYPE public.date AS (
	day integer,
	month integer,
	year integer
);
    DROP TYPE public.date;
       public          postgres    false            �            1259    16512 
   apointment    TABLE     y   CREATE TABLE public.apointment (
    stid character varying(10) NOT NULL,
    studioid character varying(10) NOT NULL
);
    DROP TABLE public.apointment;
       public         heap    postgres    false            �            1259    16444    bill    TABLE       CREATE TABLE public.bill (
    billdate date NOT NULL,
    billid character varying(10) NOT NULL,
    amount character varying(20) NOT NULL,
    institutename character varying(50) NOT NULL,
    payer character varying(15),
    section character varying(20)
);
    DROP TABLE public.bill;
       public         heap    postgres    false            �            1259    16429    book    TABLE     �   CREATE TABLE public.book (
    bname character varying(50),
    publisher character varying(60),
    bid character varying(10) NOT NULL,
    price character varying(20),
    edition integer,
    buyer character varying(10)
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16449    course    TABLE     �   CREATE TABLE public.course (
    courseid character varying(10) NOT NULL,
    coursename character varying(20),
    cost character varying(10)
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    16547    coursegroup    TABLE     �   CREATE TABLE public.coursegroup (
    cgid character varying(10) NOT NULL,
    courseid character varying(10) NOT NULL,
    teacher character varying(10)
);
    DROP TABLE public.coursegroup;
       public         heap    postgres    false            �            1259    16764    employe    TABLE     k  CREATE TABLE public.employe (
    ename character varying(30),
    elastname character varying(50),
    eid character varying(10) NOT NULL,
    email character varying(100),
    nationalcode character varying(15),
    birthday date,
    education character varying(20),
    dateofemployeement date,
    address public.address,
    salary character varying(20)
);
    DROP TABLE public.employe;
       public         heap    postgres    false    865            �            1259    16896    familymember    TABLE     �   CREATE TABLE public.familymember (
    fid character varying(10) NOT NULL,
    eid character varying(10) NOT NULL,
    fname character varying(20)
);
     DROP TABLE public.familymember;
       public         heap    postgres    false            �            1259    16932    harmony    TABLE       CREATE TABLE public.harmony (
    mid character varying(10) NOT NULL,
    mname character varying(50),
    swing character varying(50),
    artists character varying(100),
    album character varying(50),
    ageofmusic character varying(50),
    subject character varying(50)
);
    DROP TABLE public.harmony;
       public         heap    postgres    false            �            1259    16634    havebook    TABLE     q   CREATE TABLE public.havebook (
    bid character varying(10) NOT NULL,
    mid character varying(10) NOT NULL
);
    DROP TABLE public.havebook;
       public         heap    postgres    false            �            1259    16846    haveroom    TABLE     w   CREATE TABLE public.haveroom (
    rid character varying(10) NOT NULL,
    teacherid character varying(10) NOT NULL
);
    DROP TABLE public.haveroom;
       public         heap    postgres    false            �            1259    16434 
   instrument    TABLE     l   CREATE TABLE public.instrument (
    iname character varying(50),
    iid character varying(20) NOT NULL
);
    DROP TABLE public.instrument;
       public         heap    postgres    false            �            1259    16479    music    TABLE     �   CREATE TABLE public.music (
    mid character varying(10) NOT NULL,
    mname character varying(50),
    artists character varying(100),
    album character varying(50)
);
    DROP TABLE public.music;
       public         heap    postgres    false            �            1259    16916    phonenumberem    TABLE     ~   CREATE TABLE public.phonenumberem (
    phonenumber character varying(15) NOT NULL,
    eid character varying(10) NOT NULL
);
 !   DROP TABLE public.phonenumberem;
       public         heap    postgres    false            �            1259    16650    phonenumberst    TABLE        CREATE TABLE public.phonenumberst (
    phonenumber character varying(15) NOT NULL,
    stid character varying(10) NOT NULL
);
 !   DROP TABLE public.phonenumberst;
       public         heap    postgres    false            �            1259    16670    phonenumberstudio    TABLE     �   CREATE TABLE public.phonenumberstudio (
    phonenumber character varying(15) NOT NULL,
    studioid character varying(10) NOT NULL
);
 %   DROP TABLE public.phonenumberstudio;
       public         heap    postgres    false            �            1259    16439    room    TABLE     �   CREATE TABLE public.room (
    rid character varying(20) NOT NULL,
    cgid character varying(10),
    courseid character varying(10),
    instrument character varying(10)
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    16527    search    TABLE     p   CREATE TABLE public.search (
    stid character varying(10) NOT NULL,
    mid character varying(10) NOT NULL
);
    DROP TABLE public.search;
       public         heap    postgres    false            �            1259    16773    secratry    TABLE     �  CREATE TABLE public.secratry (
    ename character varying(30),
    elastname character varying(50),
    eid character varying(10) NOT NULL,
    email character varying(100),
    nationalcode character varying(15),
    birthday date,
    education character varying(20),
    dateofemployeement date,
    address public.address,
    salary character varying(20),
    sectionname character varying(10) NOT NULL
);
    DROP TABLE public.secratry;
       public         heap    postgres    false    865            �            1259    16927    solfege    TABLE     M  CREATE TABLE public.solfege (
    mid character varying(10) NOT NULL,
    mname character varying(50),
    swing character varying(50),
    artists character varying(100),
    album character varying(50),
    note character varying(5),
    "interval" character varying(10),
    rythem character varying(10),
    poliphone integer
);
    DROP TABLE public.solfege;
       public         heap    postgres    false            �            1259    16404    student    TABLE     �  CREATE TABLE public.student (
    sname character varying(30),
    slastname character varying(30),
    stid character varying(10) NOT NULL,
    nationalcode character varying(15),
    education character varying(20),
    tuition character varying(20),
    address public.address,
    birthday date,
    email character varying(100),
    signupdate date,
    signup character varying(10)
);
    DROP TABLE public.student;
       public         heap    postgres    false    865            �            1259    16422    studio    TABLE     �   CREATE TABLE public.studio (
    studioname character varying(30),
    manager character varying(40),
    studioid character varying(10) NOT NULL,
    address public.address,
    dateofcontract date,
    cost character varying(20)
);
    DROP TABLE public.studio;
       public         heap    postgres    false    865            �            1259    16582    take    TABLE     �   CREATE TABLE public.take (
    stid character varying(10) NOT NULL,
    cgid character varying(10) NOT NULL,
    courseid character varying(10) NOT NULL
);
    DROP TABLE public.take;
       public         heap    postgres    false            �            1259    16787    teacheer    TABLE     �  CREATE TABLE public.teacheer (
    ename character varying(30),
    elastname character varying(50),
    eid character varying(10) NOT NULL,
    email character varying(100),
    nationalcode character varying(15),
    birthday date,
    education character varying(20),
    dateofemployeement date,
    address public.address,
    salary character varying(20),
    dgree character varying(200),
    instrumenttype character varying(50),
    proficiency character varying(50)
);
    DROP TABLE public.teacheer;
       public         heap    postgres    false    865            �            1259    16886    teachertime    TABLE     }   CREATE TABLE public.teachertime (
    eid character varying(10) NOT NULL,
    "time" timestamp without time zone NOT NULL
);
    DROP TABLE public.teachertime;
       public         heap    postgres    false            �          0    16512 
   apointment 
   TABLE DATA           4   COPY public.apointment (stid, studioid) FROM stdin;
    public          postgres    false    224   �       �          0    16444    bill 
   TABLE DATA           W   COPY public.bill (billdate, billid, amount, institutename, payer, section) FROM stdin;
    public          postgres    false    221   ;�       �          0    16429    book 
   TABLE DATA           L   COPY public.book (bname, publisher, bid, price, edition, buyer) FROM stdin;
    public          postgres    false    218   ��       �          0    16449    course 
   TABLE DATA           <   COPY public.course (courseid, coursename, cost) FROM stdin;
    public          postgres    false    222   3�       �          0    16547    coursegroup 
   TABLE DATA           >   COPY public.coursegroup (cgid, courseid, teacher) FROM stdin;
    public          postgres    false    226   x�       �          0    16764    employe 
   TABLE DATA           �   COPY public.employe (ename, elastname, eid, email, nationalcode, birthday, education, dateofemployeement, address, salary) FROM stdin;
    public          postgres    false    231   ��       �          0    16896    familymember 
   TABLE DATA           7   COPY public.familymember (fid, eid, fname) FROM stdin;
    public          postgres    false    236   ��       �          0    16932    harmony 
   TABLE DATA           Y   COPY public.harmony (mid, mname, swing, artists, album, ageofmusic, subject) FROM stdin;
    public          postgres    false    239   ��       �          0    16634    havebook 
   TABLE DATA           ,   COPY public.havebook (bid, mid) FROM stdin;
    public          postgres    false    228   r�       �          0    16846    haveroom 
   TABLE DATA           2   COPY public.haveroom (rid, teacherid) FROM stdin;
    public          postgres    false    234   ��       �          0    16434 
   instrument 
   TABLE DATA           0   COPY public.instrument (iname, iid) FROM stdin;
    public          postgres    false    219   �       �          0    16479    music 
   TABLE DATA           ;   COPY public.music (mid, mname, artists, album) FROM stdin;
    public          postgres    false    223   Q�       �          0    16916    phonenumberem 
   TABLE DATA           9   COPY public.phonenumberem (phonenumber, eid) FROM stdin;
    public          postgres    false    237   �       �          0    16650    phonenumberst 
   TABLE DATA           :   COPY public.phonenumberst (phonenumber, stid) FROM stdin;
    public          postgres    false    229   u�       �          0    16670    phonenumberstudio 
   TABLE DATA           B   COPY public.phonenumberstudio (phonenumber, studioid) FROM stdin;
    public          postgres    false    230   ��       �          0    16439    room 
   TABLE DATA           ?   COPY public.room (rid, cgid, courseid, instrument) FROM stdin;
    public          postgres    false    220   	�       �          0    16527    search 
   TABLE DATA           +   COPY public.search (stid, mid) FROM stdin;
    public          postgres    false    225   V�       �          0    16773    secratry 
   TABLE DATA           �   COPY public.secratry (ename, elastname, eid, email, nationalcode, birthday, education, dateofemployeement, address, salary, sectionname) FROM stdin;
    public          postgres    false    232   ��       �          0    16927    solfege 
   TABLE DATA           i   COPY public.solfege (mid, mname, swing, artists, album, note, "interval", rythem, poliphone) FROM stdin;
    public          postgres    false    238   t�       �          0    16404    student 
   TABLE DATA           �   COPY public.student (sname, slastname, stid, nationalcode, education, tuition, address, birthday, email, signupdate, signup) FROM stdin;
    public          postgres    false    216   �       �          0    16422    studio 
   TABLE DATA           ^   COPY public.studio (studioname, manager, studioid, address, dateofcontract, cost) FROM stdin;
    public          postgres    false    217   ��       �          0    16582    take 
   TABLE DATA           4   COPY public.take (stid, cgid, courseid) FROM stdin;
    public          postgres    false    227   ��       �          0    16787    teacheer 
   TABLE DATA           �   COPY public.teacheer (ename, elastname, eid, email, nationalcode, birthday, education, dateofemployeement, address, salary, dgree, instrumenttype, proficiency) FROM stdin;
    public          postgres    false    233   �       �          0    16886    teachertime 
   TABLE DATA           2   COPY public.teachertime (eid, "time") FROM stdin;
    public          postgres    false    235   ��       �           2606    16516    apointment apointment_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.apointment
    ADD CONSTRAINT apointment_pkey PRIMARY KEY (stid, studioid);
 D   ALTER TABLE ONLY public.apointment DROP CONSTRAINT apointment_pkey;
       public            postgres    false    224    224            �           2606    16448    bill bill_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_pkey PRIMARY KEY (billid);
 8   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_pkey;
       public            postgres    false    221            �           2606    16433    book book_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (bid);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    218            �           2606    16453    course course_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (courseid);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public            postgres    false    222            �           2606    16551    coursegroup coursegroup_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_pkey PRIMARY KEY (cgid, courseid);
 F   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_pkey;
       public            postgres    false    226    226            �           2606    16772     employe employe_nationalcode_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.employe
    ADD CONSTRAINT employe_nationalcode_key UNIQUE (nationalcode);
 J   ALTER TABLE ONLY public.employe DROP CONSTRAINT employe_nationalcode_key;
       public            postgres    false    231            �           2606    16770    employe employe_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.employe
    ADD CONSTRAINT employe_pkey PRIMARY KEY (eid);
 >   ALTER TABLE ONLY public.employe DROP CONSTRAINT employe_pkey;
       public            postgres    false    231            �           2606    16900    familymember familymember_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.familymember
    ADD CONSTRAINT familymember_pkey PRIMARY KEY (eid, fid);
 H   ALTER TABLE ONLY public.familymember DROP CONSTRAINT familymember_pkey;
       public            postgres    false    236    236            �           2606    16936    harmony harmony_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.harmony
    ADD CONSTRAINT harmony_pkey PRIMARY KEY (mid);
 >   ALTER TABLE ONLY public.harmony DROP CONSTRAINT harmony_pkey;
       public            postgres    false    239            �           2606    16638    havebook havebook_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.havebook
    ADD CONSTRAINT havebook_pkey PRIMARY KEY (bid, mid);
 @   ALTER TABLE ONLY public.havebook DROP CONSTRAINT havebook_pkey;
       public            postgres    false    228    228            �           2606    16850    haveroom haveroom_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.haveroom
    ADD CONSTRAINT haveroom_pkey PRIMARY KEY (rid, teacherid);
 @   ALTER TABLE ONLY public.haveroom DROP CONSTRAINT haveroom_pkey;
       public            postgres    false    234    234            �           2606    16438    instrument instrument_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.instrument
    ADD CONSTRAINT instrument_pkey PRIMARY KEY (iid);
 D   ALTER TABLE ONLY public.instrument DROP CONSTRAINT instrument_pkey;
       public            postgres    false    219            �           2606    16483    music music_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.music
    ADD CONSTRAINT music_pkey PRIMARY KEY (mid);
 :   ALTER TABLE ONLY public.music DROP CONSTRAINT music_pkey;
       public            postgres    false    223            �           2606    16920     phonenumberem phonenumberem_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.phonenumberem
    ADD CONSTRAINT phonenumberem_pkey PRIMARY KEY (eid, phonenumber);
 J   ALTER TABLE ONLY public.phonenumberem DROP CONSTRAINT phonenumberem_pkey;
       public            postgres    false    237    237            �           2606    16654     phonenumberst phonenumberst_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.phonenumberst
    ADD CONSTRAINT phonenumberst_pkey PRIMARY KEY (stid, phonenumber);
 J   ALTER TABLE ONLY public.phonenumberst DROP CONSTRAINT phonenumberst_pkey;
       public            postgres    false    229    229            �           2606    16674 (   phonenumberstudio phonenumberstudio_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.phonenumberstudio
    ADD CONSTRAINT phonenumberstudio_pkey PRIMARY KEY (studioid, phonenumber);
 R   ALTER TABLE ONLY public.phonenumberstudio DROP CONSTRAINT phonenumberstudio_pkey;
       public            postgres    false    230    230            �           2606    16443    room room_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (rid);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    220            �           2606    16531    search search_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_pkey PRIMARY KEY (stid, mid);
 <   ALTER TABLE ONLY public.search DROP CONSTRAINT search_pkey;
       public            postgres    false    225    225            �           2606    16781 "   secratry secratry_nationalcode_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.secratry
    ADD CONSTRAINT secratry_nationalcode_key UNIQUE (nationalcode);
 L   ALTER TABLE ONLY public.secratry DROP CONSTRAINT secratry_nationalcode_key;
       public            postgres    false    232            �           2606    16779    secratry secratry_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.secratry
    ADD CONSTRAINT secratry_pkey PRIMARY KEY (eid);
 @   ALTER TABLE ONLY public.secratry DROP CONSTRAINT secratry_pkey;
       public            postgres    false    232            �           2606    16931    solfege solfege_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.solfege
    ADD CONSTRAINT solfege_pkey PRIMARY KEY (mid);
 >   ALTER TABLE ONLY public.solfege DROP CONSTRAINT solfege_pkey;
       public            postgres    false    238            �           2606    16412     student student_nationalcode_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_nationalcode_key UNIQUE (nationalcode);
 J   ALTER TABLE ONLY public.student DROP CONSTRAINT student_nationalcode_key;
       public            postgres    false    216            �           2606    16410    student student_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (stid);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    216            �           2606    16428    studio studio_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.studio
    ADD CONSTRAINT studio_pkey PRIMARY KEY (studioid);
 <   ALTER TABLE ONLY public.studio DROP CONSTRAINT studio_pkey;
       public            postgres    false    217            �           2606    16586    take take_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.take
    ADD CONSTRAINT take_pkey PRIMARY KEY (stid, cgid, courseid);
 8   ALTER TABLE ONLY public.take DROP CONSTRAINT take_pkey;
       public            postgres    false    227    227    227            �           2606    16795 "   teacheer teacheer_nationalcode_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.teacheer
    ADD CONSTRAINT teacheer_nationalcode_key UNIQUE (nationalcode);
 L   ALTER TABLE ONLY public.teacheer DROP CONSTRAINT teacheer_nationalcode_key;
       public            postgres    false    233            �           2606    16793    teacheer teacheer_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.teacheer
    ADD CONSTRAINT teacheer_pkey PRIMARY KEY (eid);
 @   ALTER TABLE ONLY public.teacheer DROP CONSTRAINT teacheer_pkey;
       public            postgres    false    233            �           2606    16890    teachertime teachertime_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.teachertime
    ADD CONSTRAINT teachertime_pkey PRIMARY KEY (eid, "time");
 F   ALTER TABLE ONLY public.teachertime DROP CONSTRAINT teachertime_pkey;
       public            postgres    false    235    235                       2606    16517    apointment apointment_stid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.apointment
    ADD CONSTRAINT apointment_stid_fkey FOREIGN KEY (stid) REFERENCES public.student(stid) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.apointment DROP CONSTRAINT apointment_stid_fkey;
       public          postgres    false    224    216    3275                       2606    16522 #   apointment apointment_studioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.apointment
    ADD CONSTRAINT apointment_studioid_fkey FOREIGN KEY (studioid) REFERENCES public.studio(studioid) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.apointment DROP CONSTRAINT apointment_studioid_fkey;
       public          postgres    false    3277    217    224                       2606    16507    bill bill_payer_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_payer_fkey FOREIGN KEY (payer) REFERENCES public.student(stid);
 >   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_payer_fkey;
       public          postgres    false    221    3275    216                       2606    16542    book book_buyer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_buyer_fkey FOREIGN KEY (buyer) REFERENCES public.student(stid) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.book DROP CONSTRAINT book_buyer_fkey;
       public          postgres    false    216    218    3275                       2606    16734 %   coursegroup coursegroup_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_courseid_fkey FOREIGN KEY (courseid) REFERENCES public.course(courseid);
 O   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_courseid_fkey;
       public          postgres    false    226    3287    222                       2606    16724 &   coursegroup coursegroup_courseid_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_courseid_fkey1 FOREIGN KEY (courseid) REFERENCES public.course(courseid);
 P   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_courseid_fkey1;
       public          postgres    false    226    3287    222                       2606    16729 &   coursegroup coursegroup_courseid_fkey2    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_courseid_fkey2 FOREIGN KEY (courseid) REFERENCES public.course(courseid);
 P   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_courseid_fkey2;
       public          postgres    false    226    222    3287                       2606    16811 $   coursegroup coursegroup_teacher_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_teacher_fkey FOREIGN KEY (teacher) REFERENCES public.teacheer(eid);
 N   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_teacher_fkey;
       public          postgres    false    233    3315    226                       2606    16816 %   coursegroup coursegroup_teacher_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_teacher_fkey1 FOREIGN KEY (teacher) REFERENCES public.teacheer(eid);
 O   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_teacher_fkey1;
       public          postgres    false    233    226    3315                       2606    16821 %   coursegroup coursegroup_teacher_fkey2    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_teacher_fkey2 FOREIGN KEY (teacher) REFERENCES public.teacheer(eid);
 O   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_teacher_fkey2;
       public          postgres    false    3315    233    226                       2606    16826 %   coursegroup coursegroup_teacher_fkey3    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_teacher_fkey3 FOREIGN KEY (teacher) REFERENCES public.teacheer(eid);
 O   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_teacher_fkey3;
       public          postgres    false    226    3315    233                       2606    16831 %   coursegroup coursegroup_teacher_fkey4    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_teacher_fkey4 FOREIGN KEY (teacher) REFERENCES public.teacheer(eid);
 O   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_teacher_fkey4;
       public          postgres    false    226    3315    233                       2606    16836 %   coursegroup coursegroup_teacher_fkey5    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_teacher_fkey5 FOREIGN KEY (teacher) REFERENCES public.teacheer(eid) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_teacher_fkey5;
       public          postgres    false    226    233    3315                       2606    16841 %   coursegroup coursegroup_teacher_fkey6    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursegroup
    ADD CONSTRAINT coursegroup_teacher_fkey6 FOREIGN KEY (teacher) REFERENCES public.teacheer(eid) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.coursegroup DROP CONSTRAINT coursegroup_teacher_fkey6;
       public          postgres    false    226    233    3315                       2606    16901 "   familymember familymember_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.familymember
    ADD CONSTRAINT familymember_eid_fkey FOREIGN KEY (eid) REFERENCES public.employe(eid) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.familymember DROP CONSTRAINT familymember_eid_fkey;
       public          postgres    false    236    231    3307            #           2606    16937    harmony harmony_mid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.harmony
    ADD CONSTRAINT harmony_mid_fkey FOREIGN KEY (mid) REFERENCES public.music(mid) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.harmony DROP CONSTRAINT harmony_mid_fkey;
       public          postgres    false    239    3289    223                       2606    16639    havebook havebook_bid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.havebook
    ADD CONSTRAINT havebook_bid_fkey FOREIGN KEY (bid) REFERENCES public.book(bid) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.havebook DROP CONSTRAINT havebook_bid_fkey;
       public          postgres    false    218    3279    228                       2606    16644    havebook havebook_mid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.havebook
    ADD CONSTRAINT havebook_mid_fkey FOREIGN KEY (mid) REFERENCES public.music(mid) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.havebook DROP CONSTRAINT havebook_mid_fkey;
       public          postgres    false    223    3289    228                       2606    16851     haveroom haveroom_teacherid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.haveroom
    ADD CONSTRAINT haveroom_teacherid_fkey FOREIGN KEY (teacherid) REFERENCES public.teacheer(eid) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.haveroom DROP CONSTRAINT haveroom_teacherid_fkey;
       public          postgres    false    234    3315    233                        2606    16921 $   phonenumberem phonenumberem_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phonenumberem
    ADD CONSTRAINT phonenumberem_eid_fkey FOREIGN KEY (eid) REFERENCES public.employe(eid) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.phonenumberem DROP CONSTRAINT phonenumberem_eid_fkey;
       public          postgres    false    237    3307    231                       2606    16655 %   phonenumberst phonenumberst_stid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phonenumberst
    ADD CONSTRAINT phonenumberst_stid_fkey FOREIGN KEY (stid) REFERENCES public.student(stid) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.phonenumberst DROP CONSTRAINT phonenumberst_stid_fkey;
       public          postgres    false    3275    216    229                       2606    16675 1   phonenumberstudio phonenumberstudio_studioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phonenumberstudio
    ADD CONSTRAINT phonenumberstudio_studioid_fkey FOREIGN KEY (studioid) REFERENCES public.studio(studioid) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.phonenumberstudio DROP CONSTRAINT phonenumberstudio_studioid_fkey;
       public          postgres    false    3277    217    230                       2606    16609    room room_cgid_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_cgid_courseid_fkey FOREIGN KEY (cgid, courseid) REFERENCES public.coursegroup(cgid, courseid) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.room DROP CONSTRAINT room_cgid_courseid_fkey;
       public          postgres    false    226    226    220    220    3295                       2606    16614    room room_cgid_courseid_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_cgid_courseid_fkey1 FOREIGN KEY (cgid, courseid) REFERENCES public.coursegroup(cgid, courseid) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.room DROP CONSTRAINT room_cgid_courseid_fkey1;
       public          postgres    false    3295    226    220    220    226                       2606    16629    room room_instrument_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_instrument_fkey FOREIGN KEY (instrument) REFERENCES public.instrument(iid) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.room DROP CONSTRAINT room_instrument_fkey;
       public          postgres    false    219    220    3281            	           2606    16537    search search_mid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_mid_fkey FOREIGN KEY (mid) REFERENCES public.music(mid) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.search DROP CONSTRAINT search_mid_fkey;
       public          postgres    false    225    3289    223            
           2606    16532    search search_stid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_stid_fkey FOREIGN KEY (stid) REFERENCES public.student(stid) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.search DROP CONSTRAINT search_stid_fkey;
       public          postgres    false    225    3275    216                       2606    16782    secratry secratry_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.secratry
    ADD CONSTRAINT secratry_eid_fkey FOREIGN KEY (eid) REFERENCES public.employe(eid) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.secratry DROP CONSTRAINT secratry_eid_fkey;
       public          postgres    false    3307    231    232            !           2606    16942    solfege solfege_mid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.solfege
    ADD CONSTRAINT solfege_mid_fkey FOREIGN KEY (mid) REFERENCES public.music(mid) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.solfege DROP CONSTRAINT solfege_mid_fkey;
       public          postgres    false    238    3289    223            "           2606    16947    solfege solfege_mid_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.solfege
    ADD CONSTRAINT solfege_mid_fkey1 FOREIGN KEY (mid) REFERENCES public.music(mid) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.solfege DROP CONSTRAINT solfege_mid_fkey1;
       public          postgres    false    238    3289    223                        2606    16856    student student_signup_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_signup_fkey FOREIGN KEY (signup) REFERENCES public.secratry(eid);
 E   ALTER TABLE ONLY public.student DROP CONSTRAINT student_signup_fkey;
       public          postgres    false    3311    232    216                       2606    16861    student student_signup_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_signup_fkey1 FOREIGN KEY (signup) REFERENCES public.secratry(eid) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_signup_fkey1;
       public          postgres    false    3311    216    232                       2606    16592    take take_cgid_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.take
    ADD CONSTRAINT take_cgid_courseid_fkey FOREIGN KEY (cgid, courseid) REFERENCES public.coursegroup(cgid, courseid) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.take DROP CONSTRAINT take_cgid_courseid_fkey;
       public          postgres    false    227    227    3295    226    226                       2606    16587    take take_stid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.take
    ADD CONSTRAINT take_stid_fkey FOREIGN KEY (stid) REFERENCES public.student(stid) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.take DROP CONSTRAINT take_stid_fkey;
       public          postgres    false    227    3275    216                       2606    16796    teacheer teacheer_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacheer
    ADD CONSTRAINT teacheer_eid_fkey FOREIGN KEY (eid) REFERENCES public.employe(eid) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.teacheer DROP CONSTRAINT teacheer_eid_fkey;
       public          postgres    false    231    3307    233                       2606    16891     teachertime teachertime_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.teachertime
    ADD CONSTRAINT teachertime_eid_fkey FOREIGN KEY (eid) REFERENCES public.teacheer(eid) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.teachertime DROP CONSTRAINT teachertime_eid_fkey;
       public          postgres    false    235    233    3315            �   (   x�+.Q00�,.)M������|#8��7��b���� ��k      �   f   x�34�4�50�52�t���Q00�440���/I�,.��2s2��Mu���Ҙ�� E�1gpb^I~~������A��LEVk�Y��������� {� �      �   r   x�5�1�0Cg�S��$�
0u�����$Iz��Jx���=}�r7cxs)fLL/MO�;�;�ڪl�貪�yfd�-���ળ���зTx�_x��o���'��_V��� �1#)      �   5   x�+�,�L���4400�*�,�����s��t���̒�"N30(����� �9�      �   3   x�30�,�IML�H-R00�20���!��\Fh|C�t�$����� @t�      �   �  x������0E��W�l@\�)J]�"��Ha�[̒�(-$Å�>C���T�`tp���~@��#vFwθ�)e���[�о���+m#U	BY΄d���7PR�9�`sp���Wl�C.�4�����c�:�-���Tc�R�ز��2DaBA��>b"U�k&ă�u�!bb�|ǋ���.8��kI��%Sآ��_�W�ݛ������R��<Y���J[U����[&4|{M��q��͏��Nظ��IətLG�`�k:Ճ�`�E�(I
�T�26��P���HdZ��Z��o|�bh��:��t-w8���N�L	�6\�IMz�҉IW�L��ʊ	��g����&zɍ��8�}K5^���'��a-�
k��M=�b�?�Fga�����F��А@.K^V�"v�?|�J�p����E���%���Ы�6�G�.4>K��ֹ�w*y�yY�V� x��%      �   J   x�KS00�IML�H-1�RS�������E��� ac��1gbvRbHԄ�85�0;#��*?�+F��� ��]      �   i   x�u˻�0E�ڙ� >KP�@IcR���P�= �
Q��t�5�&al)�3O;���ja&��%���8,�W����Todi&�4�`�(�dI�>l,�1��6X      �   +   x�KR00�,\I V�ebCX�P�!�eae�X1z\\\ ��      �   2   x�+R00�IML�H-R00��)�o�����&h�M��͐���qqq h Z      �   R   x�+�L��WHLN�/-.�L�T�T00�*��������B���Alc���̒�"ۄ+ ��4�
N�+����q��qqq �\      �   �   x�u�1
�0�Y>�NP���کK�.Y\[�"�\,��C��ˇ����3(�B[<	�_��[�٪Fq�`ɑp�������
%��}1B���\\�7|r�l��A�'o�U�fK�Ҏz����K��:��1�V?�      �   �   x�m�=�0��� �َ�{0vAU$f��D��?=�q�3DO϶�Y����m� �%&i҈$]�m����<�� �`D]�`���'�#���(_��ܬD�l�{%	�&�>/dJټ��^���9�      �   :   x�3�4024433�4�,.Q00�2�465702��0�E�\Scs3��!W� o��      �   :   x�37715�44�,.)M��W00�202461217�4��s��Y�Z�b���� ��      �   =   x�+R00���LS�"c7�5q�@�2��5�� d�@\��	�5*F��� h��      �   /   x�+.Q00��P00�*3�aLc��1�	53A�F��\1z\\\ B/      �   �   x����j�0E积�e޳,�ڒ%t�L��#Vk�e9t��GNBH�N\瓇���3Of{ΐ`Y��~<��8��jj]�H5(���B����D����M�)�����Ro�B�\OAta`���7��Z���:U�5��trIRл�<�>#��D/�~�m��c��2�_��t.���Y�	�uS�h��_��$c`      �   �   x�M�;�0���{06��� ih��J��#y-�ܞ Q�L5B�@�7�4�� ����J�u���`�gh\��sML;��#�Xh\\��a����R}3I�m�P�FSL)�,�����oZ=J���(�      �   �   x�}��J�0����S�TH�{�Զ;\2"إ��44���iʀ>�i������㼹�g�)��تFjjc	�p�Sb ��9�G��ȷ �y 2)Ԋ�5�4$�p�R��J��ٝKX|�/�>�βq��ђ!8q^ܼZ+�9?�#'�5�
[E-�5��ŉ�/N��9��_3`-�m�Fû�A�ҕ�oa��˃QR�{�+H[�/e�lF��)#>B�l�Y$      �   �   x�E�1� �Y�dJA˩�1J(t���Ġ-FP��ߐ�t{p���'�#��0��&�]����|d I�[�p�U��r)>U\���iH�`� �S��l��Zc0��Q�.?f^~���+ !�D��v,h���n8����}�+���m8	؈�R�;1=S      �   )   x�+.Q00���bӐ��4D���Qc3�+F��� ��]      �   �  x�m��n�0Eף��r 1�K�]�E��P8BA7�6	Id *^��;T��n�p���s��-t��:�>[3�\@\&_�#���9���.ۦn���j�k&4�?ҪmWLq�~s�����7�B݀�����C�s
�c�������7.{B;a;s>���P0��.1�ҥ����pY��	�վ��\$*:����M���.]<��Bp��.Fg��Bd�H��Y����v�G{�%a|^鑚�TJ'��q�䪧i��L�X��c_}�Ϳr^� 1s4�cet�>�ete��K%xS����e����LIg�(��D�q��w�l��$��o�㛣Mkɾ��ွ�>AJp�]�WF�Һ,�*��dD���E�ԩ��a;�e\o�d��)�\���;9��ג��Ͳ���ת      �   p   x�}�=
�0��ٞ"�|_���9]Dg�?X�(J+d{x�dږu�詞��F ��
l�Xa�\�7�]�������8~�X��YM3��Tj���k��7����b�<�ιd�M7     