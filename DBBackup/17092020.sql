PGDMP     5                    x            BloodBankAPP    12.3    12.3 �    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    25337    BloodBankAPP    DATABASE     �   CREATE DATABASE "BloodBankAPP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "BloodBankAPP";
                postgres    false            �            1259    25471    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    25469    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    219            /           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    218            �            1259    25481    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    25479     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    221            0           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    220            �            1259    25413    accounts_customuser    TABLE     �  CREATE TABLE public.accounts_customuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    full_name character varying(100) NOT NULL
);
 '   DROP TABLE public.accounts_customuser;
       public         heap    postgres    false            �            1259    25426    accounts_customuser_groups    TABLE     �   CREATE TABLE public.accounts_customuser_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);
 .   DROP TABLE public.accounts_customuser_groups;
       public         heap    postgres    false            �            1259    25424 !   accounts_customuser_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_customuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.accounts_customuser_groups_id_seq;
       public          postgres    false    215            1           0    0 !   accounts_customuser_groups_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.accounts_customuser_groups_id_seq OWNED BY public.accounts_customuser_groups.id;
          public          postgres    false    214            �            1259    25411    accounts_customuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.accounts_customuser_id_seq;
       public          postgres    false    213            2           0    0    accounts_customuser_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.accounts_customuser_id_seq OWNED BY public.accounts_customuser.id;
          public          postgres    false    212            �            1259    25434 $   accounts_customuser_user_permissions    TABLE     �   CREATE TABLE public.accounts_customuser_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);
 8   DROP TABLE public.accounts_customuser_user_permissions;
       public         heap    postgres    false            �            1259    25432 +   accounts_customuser_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_customuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.accounts_customuser_user_permissions_id_seq;
       public          postgres    false    217            3           0    0 +   accounts_customuser_user_permissions_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.accounts_customuser_user_permissions_id_seq OWNED BY public.accounts_customuser_user_permissions.id;
          public          postgres    false    216            �            1259    25369 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25367    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            4           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    25379    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25377    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            5           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    25361    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25359    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            6           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    25530    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    25550    blood_bank_bloodrequest    TABLE     3  CREATE TABLE public.blood_bank_bloodrequest (
    id integer NOT NULL,
    patient_id character varying(10) NOT NULL,
    patient_name character varying(100) NOT NULL,
    blood_group character varying(5) NOT NULL,
    plasma character varying(5) NOT NULL,
    platelet character varying(5) NOT NULL,
    rbc character varying(5) NOT NULL,
    whole_blood character varying(5) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_by character varying(2),
    updated_by character varying(2)
);
 +   DROP TABLE public.blood_bank_bloodrequest;
       public         heap    postgres    false            �            1259    25548    blood_bank_bloodrequest_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_bank_bloodrequest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.blood_bank_bloodrequest_id_seq;
       public          postgres    false    226            7           0    0    blood_bank_bloodrequest_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.blood_bank_bloodrequest_id_seq OWNED BY public.blood_bank_bloodrequest.id;
          public          postgres    false    225            �            1259    25558    blood_bank_bloodstore    TABLE     %  CREATE TABLE public.blood_bank_bloodstore (
    id integer NOT NULL,
    donor character varying(100) NOT NULL,
    hb character varying(10) NOT NULL,
    blood_group character varying(5) NOT NULL,
    blood_component character varying(20) NOT NULL,
    unit character varying(10) NOT NULL,
    bag character varying(20) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_by character varying(2),
    updated_by character varying(2),
    status character varying(7) NOT NULL
);
 )   DROP TABLE public.blood_bank_bloodstore;
       public         heap    postgres    false            �            1259    25556    blood_bank_bloodstore_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_bank_bloodstore_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.blood_bank_bloodstore_id_seq;
       public          postgres    false    228            8           0    0    blood_bank_bloodstore_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.blood_bank_bloodstore_id_seq OWNED BY public.blood_bank_bloodstore.id;
          public          postgres    false    227            �            1259    25566    blood_bank_bloodtaking    TABLE     �  CREATE TABLE public.blood_bank_bloodtaking (
    id integer NOT NULL,
    plasma character varying(250),
    platelet character varying(250),
    rbc character varying(250),
    whole_blood character varying(250),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_by character varying(2),
    updated_by character varying(2),
    patient_id_id integer NOT NULL
);
 *   DROP TABLE public.blood_bank_bloodtaking;
       public         heap    postgres    false            �            1259    25564    blood_bank_bloodtaking_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_bank_bloodtaking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.blood_bank_bloodtaking_id_seq;
       public          postgres    false    230            9           0    0    blood_bank_bloodtaking_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.blood_bank_bloodtaking_id_seq OWNED BY public.blood_bank_bloodtaking.id;
          public          postgres    false    229            �            1259    25508    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    25506    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    223            :           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    222            �            1259    25351    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25349    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            ;           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    25340    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25338    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            <           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    25631    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25643    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    25641    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    233            =           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    232            �            1259    25654    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false            �            1259    25652 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    235            >           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    234            �            1259    25665    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false            �            1259    25663    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    237            ?           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    236            �            1259    25673    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    postgres    false            �            1259    25671 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          postgres    false    239            @           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          postgres    false    238            �            1259    25681    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false            �            1259    25679     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    241            A           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    240                       2604    25474    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    25484    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                        2604    25416    accounts_customuser id    DEFAULT     �   ALTER TABLE ONLY public.accounts_customuser ALTER COLUMN id SET DEFAULT nextval('public.accounts_customuser_id_seq'::regclass);
 E   ALTER TABLE public.accounts_customuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    25429    accounts_customuser_groups id    DEFAULT     �   ALTER TABLE ONLY public.accounts_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_customuser_groups_id_seq'::regclass);
 L   ALTER TABLE public.accounts_customuser_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    25437 '   accounts_customuser_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_customuser_user_permissions_id_seq'::regclass);
 V   ALTER TABLE public.accounts_customuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    25372    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    25382    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    25364    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                       2604    25553    blood_bank_bloodrequest id    DEFAULT     �   ALTER TABLE ONLY public.blood_bank_bloodrequest ALTER COLUMN id SET DEFAULT nextval('public.blood_bank_bloodrequest_id_seq'::regclass);
 I   ALTER TABLE public.blood_bank_bloodrequest ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226                       2604    25561    blood_bank_bloodstore id    DEFAULT     �   ALTER TABLE ONLY public.blood_bank_bloodstore ALTER COLUMN id SET DEFAULT nextval('public.blood_bank_bloodstore_id_seq'::regclass);
 G   ALTER TABLE public.blood_bank_bloodstore ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            	           2604    25569    blood_bank_bloodtaking id    DEFAULT     �   ALTER TABLE ONLY public.blood_bank_bloodtaking ALTER COLUMN id SET DEFAULT nextval('public.blood_bank_bloodtaking_id_seq'::regclass);
 H   ALTER TABLE public.blood_bank_bloodtaking ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230                       2604    25511    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    25354    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    25343    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            
           2604    25646    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                       2604    25657    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                       2604    25668    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237                       2604    25676     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239                       2604    25684    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                      0    25471    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    219   �                0    25481    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    221                   0    25413    accounts_customuser 
   TABLE DATA           �   COPY public.accounts_customuser (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, email, full_name) FROM stdin;
    public          postgres    false    213                   0    25426    accounts_customuser_groups 
   TABLE DATA           Q   COPY public.accounts_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          postgres    false    215   �                 0    25434 $   accounts_customuser_user_permissions 
   TABLE DATA           `   COPY public.accounts_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          postgres    false    217   �                 0    25369 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   !      
          0    25379    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   5!                0    25361    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   R!                0    25530    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    224   �#                0    25550    blood_bank_bloodrequest 
   TABLE DATA           �   COPY public.blood_bank_bloodrequest (id, patient_id, patient_name, blood_group, plasma, platelet, rbc, whole_blood, created_at, updated_at, created_by, updated_by) FROM stdin;
    public          postgres    false    226   �$                0    25558    blood_bank_bloodstore 
   TABLE DATA           �   COPY public.blood_bank_bloodstore (id, donor, hb, blood_group, blood_component, unit, bag, created_at, updated_at, created_by, updated_by, status) FROM stdin;
    public          postgres    false    228   )                0    25566    blood_bank_bloodtaking 
   TABLE DATA           �   COPY public.blood_bank_bloodtaking (id, plasma, platelet, rbc, whole_blood, created_at, updated_at, created_by, updated_by, patient_id_id) FROM stdin;
    public          postgres    false    230   &/                0    25508    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   �1                0    25351    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   j2                0    25340    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   63                0    25631    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    231   .6                 0    25643    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    233   �9      "          0    25654    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    235   �9      $          0    25665    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    237   :      &          0    25673    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    239   .:      (          0    25681    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    241   K:      B           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 4, true);
          public          postgres    false    218            C           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    220            D           0    0 !   accounts_customuser_groups_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.accounts_customuser_groups_id_seq', 1, false);
          public          postgres    false    214            E           0    0    accounts_customuser_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.accounts_customuser_id_seq', 4, true);
          public          postgres    false    212            F           0    0 +   accounts_customuser_user_permissions_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.accounts_customuser_user_permissions_id_seq', 1, false);
          public          postgres    false    216            G           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            H           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            I           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          postgres    false    206            J           0    0    blood_bank_bloodrequest_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.blood_bank_bloodrequest_id_seq', 26, true);
          public          postgres    false    225            K           0    0    blood_bank_bloodstore_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.blood_bank_bloodstore_id_seq', 40, true);
          public          postgres    false    227            L           0    0    blood_bank_bloodtaking_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.blood_bank_bloodtaking_id_seq', 32, true);
          public          postgres    false    229            M           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 34, true);
          public          postgres    false    222            N           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    204            O           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 38, true);
          public          postgres    false    202            P           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    232            Q           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    234            R           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    236            S           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          postgres    false    238            T           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    240            8           2606    25504 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    219            :           2606    25476 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    219            ?           2606    25488 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    221            A           2606    25486 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    221            '           2606    25423 1   accounts_customuser accounts_customuser_email_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.accounts_customuser
    ADD CONSTRAINT accounts_customuser_email_key UNIQUE (email);
 [   ALTER TABLE ONLY public.accounts_customuser DROP CONSTRAINT accounts_customuser_email_key;
       public            postgres    false    213            ,           2606    25442 Z   accounts_customuser_groups accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq UNIQUE (customuser_id, group_id);
 �   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq;
       public            postgres    false    215    215            /           2606    25431 :   accounts_customuser_groups accounts_customuser_groups_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_pkey;
       public            postgres    false    215            )           2606    25421 ,   accounts_customuser accounts_customuser_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.accounts_customuser
    ADD CONSTRAINT accounts_customuser_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.accounts_customuser DROP CONSTRAINT accounts_customuser_pkey;
       public            postgres    false    213            1           2606    25456 d   accounts_customuser_user_permissions accounts_customuser_user_customuser_id_permission_9632a709_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser_user_customuser_id_permission_9632a709_uniq UNIQUE (customuser_id, permission_id);
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser_user_customuser_id_permission_9632a709_uniq;
       public            postgres    false    217    217            5           2606    25439 N   accounts_customuser_user_permissions accounts_customuser_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser_user_permissions_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser_user_permissions_pkey;
       public            postgres    false    217                       2606    25409    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            !           2606    25395 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            $           2606    25384 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    25374    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    25386 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    25366 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            H           2606    25534 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    224            J           2606    25536 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    224            M           2606    25615 H   blood_bank_bloodrequest blood_bank_bloodrequest_patient_id_2bda9ae1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.blood_bank_bloodrequest
    ADD CONSTRAINT blood_bank_bloodrequest_patient_id_2bda9ae1_uniq UNIQUE (patient_id);
 r   ALTER TABLE ONLY public.blood_bank_bloodrequest DROP CONSTRAINT blood_bank_bloodrequest_patient_id_2bda9ae1_uniq;
       public            postgres    false    226            O           2606    25555 4   blood_bank_bloodrequest blood_bank_bloodrequest_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.blood_bank_bloodrequest
    ADD CONSTRAINT blood_bank_bloodrequest_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.blood_bank_bloodrequest DROP CONSTRAINT blood_bank_bloodrequest_pkey;
       public            postgres    false    226            Q           2606    25563 0   blood_bank_bloodstore blood_bank_bloodstore_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.blood_bank_bloodstore
    ADD CONSTRAINT blood_bank_bloodstore_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.blood_bank_bloodstore DROP CONSTRAINT blood_bank_bloodstore_pkey;
       public            postgres    false    228            T           2606    25574 2   blood_bank_bloodtaking blood_bank_bloodtaking_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.blood_bank_bloodtaking
    ADD CONSTRAINT blood_bank_bloodtaking_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.blood_bank_bloodtaking DROP CONSTRAINT blood_bank_bloodtaking_pkey;
       public            postgres    false    230            D           2606    25517 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    223                       2606    25358 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    25356 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    25348 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            W           2606    25638 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    231            [           2606    25650 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    233            ]           2606    25648    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    233            _           2606    25662 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    235            a           2606    25693 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    235    235            f           2606    25701 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            postgres    false    239    239            d           2606    25670 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    237            h           2606    25678 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            postgres    false    239            n           2606    25691 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    241    241            p           2606    25689 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    241            6           1259    25505 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    219            ;           1259    25495 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    219            <           1259    25502 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    221            =           1259    25501 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    221            %           1259    25440 '   accounts_customuser_email_4fd8e7ce_like    INDEX     |   CREATE INDEX accounts_customuser_email_4fd8e7ce_like ON public.accounts_customuser USING btree (email varchar_pattern_ops);
 ;   DROP INDEX public.accounts_customuser_email_4fd8e7ce_like;
       public            postgres    false    213            *           1259    25453 1   accounts_customuser_groups_customuser_id_bc55088e    INDEX     �   CREATE INDEX accounts_customuser_groups_customuser_id_bc55088e ON public.accounts_customuser_groups USING btree (customuser_id);
 E   DROP INDEX public.accounts_customuser_groups_customuser_id_bc55088e;
       public            postgres    false    215            -           1259    25454 ,   accounts_customuser_groups_group_id_86ba5f9e    INDEX     w   CREATE INDEX accounts_customuser_groups_group_id_86ba5f9e ON public.accounts_customuser_groups USING btree (group_id);
 @   DROP INDEX public.accounts_customuser_groups_group_id_86ba5f9e;
       public            postgres    false    215            2           1259    25467 ;   accounts_customuser_user_permissions_customuser_id_0deaefae    INDEX     �   CREATE INDEX accounts_customuser_user_permissions_customuser_id_0deaefae ON public.accounts_customuser_user_permissions USING btree (customuser_id);
 O   DROP INDEX public.accounts_customuser_user_permissions_customuser_id_0deaefae;
       public            postgres    false    217            3           1259    25468 ;   accounts_customuser_user_permissions_permission_id_aea3d0e5    INDEX     �   CREATE INDEX accounts_customuser_user_permissions_permission_id_aea3d0e5 ON public.accounts_customuser_user_permissions USING btree (permission_id);
 O   DROP INDEX public.accounts_customuser_user_permissions_permission_id_aea3d0e5;
       public            postgres    false    217                       1259    25410    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    25406 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            "           1259    25407 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    25392 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            F           1259    25542 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    224            K           1259    25616 0   blood_bank_bloodrequest_patient_id_2bda9ae1_like    INDEX     �   CREATE INDEX blood_bank_bloodrequest_patient_id_2bda9ae1_like ON public.blood_bank_bloodrequest USING btree (patient_id varchar_pattern_ops);
 D   DROP INDEX public.blood_bank_bloodrequest_patient_id_2bda9ae1_like;
       public            postgres    false    226            R           1259    25580 -   blood_bank_bloodtaking_patient_id_id_2b8e7be2    INDEX     y   CREATE INDEX blood_bank_bloodtaking_patient_id_id_2b8e7be2 ON public.blood_bank_bloodtaking USING btree (patient_id_id);
 A   DROP INDEX public.blood_bank_bloodtaking_patient_id_id_2b8e7be2;
       public            postgres    false    230            B           1259    25528 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    223            E           1259    25529 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    223            U           1259    25640 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    231            X           1259    25639 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    231            Y           1259    25651     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    233            b           1259    25699 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    235            i           1259    25713 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            postgres    false    239            j           1259    25712 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     �   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            postgres    false    239            k           1259    25724 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    241            l           1259    25725 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    241            x           2606    25489 T   account_emailaddress account_emailaddress_user_id_2c513194_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_accounts_customuser_id FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_accounts_customuser_id;
       public          postgres    false    213    219    2857            y           2606    25496 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    219    221    2874            v           2606    25457 ]   accounts_customuser_user_permissions accounts_customuser__customuser_id_0deaefae_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser__customuser_id_0deaefae_fk_accounts_ FOREIGN KEY (customuser_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser__customuser_id_0deaefae_fk_accounts_;
       public          postgres    false    2857    213    217            t           2606    25443 S   accounts_customuser_groups accounts_customuser__customuser_id_bc55088e_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser__customuser_id_bc55088e_fk_accounts_ FOREIGN KEY (customuser_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser__customuser_id_bc55088e_fk_accounts_;
       public          postgres    false    215    213    2857            w           2606    25462 ]   accounts_customuser_user_permissions accounts_customuser__permission_id_aea3d0e5_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser__permission_id_aea3d0e5_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser__permission_id_aea3d0e5_fk_auth_perm;
       public          postgres    false    217    2841    207            u           2606    25448 X   accounts_customuser_groups accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id;
       public          postgres    false    215    2846    209            s           2606    25401 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    2841    211            r           2606    25396 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2846    209    211            q           2606    25387 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2836    207    205            |           2606    25543 J   authtoken_token authtoken_token_user_id_35299eff_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_accounts_customuser_id FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_accounts_customuser_id;
       public          postgres    false    2857    224    213            }           2606    25575 O   blood_bank_bloodtaking blood_bank_bloodtaki_patient_id_id_2b8e7be2_fk_blood_ban    FK CONSTRAINT     �   ALTER TABLE ONLY public.blood_bank_bloodtaking
    ADD CONSTRAINT blood_bank_bloodtaki_patient_id_id_2b8e7be2_fk_blood_ban FOREIGN KEY (patient_id_id) REFERENCES public.blood_bank_bloodrequest(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.blood_bank_bloodtaking DROP CONSTRAINT blood_bank_bloodtaki_patient_id_id_2b8e7be2_fk_blood_ban;
       public          postgres    false    230    2895    226            z           2606    25518 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2836    223            {           2606    25523 L   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_customuser_id FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_customuser_id;
       public          postgres    false    2857    223    213            �           2606    25714 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    241    235    2911            �           2606    25719 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    237    2916    241            �           2606    25707 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          postgres    false    233    239    2909                       2606    25702 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          postgres    false    237    239    2916            ~           2606    25694 N   socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_accounts_ FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_social_user_id_8146e70c_fk_accounts_;
       public          postgres    false    235    213    2857               R   x�]�1
� ����B��Ҧ�D��A�?I-�͌
��S��ksw7�?
/��������e�r�W)mK�Rh���8�O""�            x������ � �         �  x�u�Mo�@�3�>pCA;�²+U*q����Z���/Ƅ�]'���ReK�a#��<�Z�[R��:(���#8��/���?�C�Y�2��7o���s5z��Hئ$>E��H� &#��|i��hH��~�O�(��6�8ubi��us��"���� n"�sj)e�7����R�{sS�ZoK�{gS��^��DOa������o#k�vn4�簋��6���Ĉ�r���3ض ��m��K-. L��O�s��J����U��%ns]Ɏ������Hm��w㱅h?�Hy'vh�,�"]��O0e5߭.�v�0��Lj��p�5O�/�6N��ۯ�TP&�g�R�R�_j�mm�>�X�]yn8�=��-�6�5���������q9�+�0Y=��BUWZ�E�B�,��O�CZ&aܥ�)%�T^*��^��{��            x������ � �            x������ � �            x������ � �      
      x������ � �         �  x�}�K��0���)|�A�wֽB�
�QSc��c��}m�2Ii�]L}?�Q!m��uc��n���3;��2j��?ã���t��
ʗ, �ه]%�K� ~����A�i6��9,��F��t���v�m��`Q��-)
w=-��&U� ������9z!b�S@P��T x\������s��,mJ��h%���E<*
�&ш_�6��b��V �Oڴ\��<�+w$��_H� �:s}w�vT5���o���肈����"l� xL��U������Ř�i�
 �l#. 6�x�ۇC�b����k��E�� 5,�Bu���L��()l�c�%]D�����g��Z�u]�iQ�7#�U�Q��m�l�%�A�c�������6�j���@�����$��Ȑܦ$J�J�[I�����iz�� cx7Ӥ���NdBvs���:�!��*�Nd�ws��d������e��#J��0ܼ�¢?��:�(����;+�s����yTt%�
�Ɖ�A���q�(�am���s�l�7���~PĚ���'<�ʈ��$��2��;	��ě�����*S�?Ttզ�'�����'ν=^_b�&gDMd�v��xW�&e_�u�:ͥC�H�)��C���	'q��i����         �   x�E�A�1D�u|�އ4%�d[>K6v�u�#$���(�s��wfZ��'`B��dudk�A}(/���6`ߝ͌-������br����$��oV�~{�����P��ݢ�d��.�!�����dJtM�Y���?���ተ����}�R>�3         l  x���Mo9���н�@�����8��v��7(�E�v�i��a��K�&�zƋ�%���$�B���e�ۍL�Vv��6b�A���!~/�60����> �O�����<X����g��Z����W ��A�Q�� �A�xl��|�2��i�����*�;%g�x�?
��/H��u��ʓ�ˊj�7&�h	AWN��3Fܽ���]+��k��?ڂr��Ð����7�cJ0:����\�_m'�����
��Dc�0���W���y���x��^~>�n��B�!B�W(�hG	LA@�"�"�Ŧ�C;�WMa��͕>q#�k¹O�����7g{���J)��c�����EK)�c��o��i���Yܹc�.��_��,7��ޅ��j�P���M�	�x��8��}�G)g��q����9/:��t��j}d��+�R�� ���W�������3�ȧXJ��F�P���r�G�Tuh����j+����r%׳��T.W��|��9�=����XT>�h/lV��!����sN�~��Ow�u����z:����H7uPK(*7`Ut�_ڠ���Q��>�L-	ynjn�nn�i�L��?~Z��F��/�7�{ �4�C�Xo�=�tG3��b��"����bZ�O�wd�^	^8QS�b|��1Na�7��jQ���"������z�q]�}��8~�=���u�gu �Wg��$9���͗r��Vs�zOIT�)zC�W�x#�3�VH �|�O���z��]
\��F��m�A�!�9�k�Ѽx�Y'~����$�b�������AS�զ�Ǡcp���(��w�G�x.�n����oӛ&gSU������px�����`���OtU%8'v�狔/��*��\�o�[\f��� .�Z��)b��f���xr�9oN��rY���y��vF�)�5F�A��M��� ��Z�x��C�)h�rs���v�r�D,ˋ�q�S����w�n0� ��i�˙���?KÆ'�>U�2�=6��s7��g$O��(SɎ |;_��9sǾ��P��x��T�f���Q-����4���U��]U��\�)A�>��\l�����R�W ,*>��(0䫚L&� <�"�         �  x���KO�8���S�>��\�Gn�fģG��j���]�t�a���~�I?�@Q�?��_e@5ϛ�Uu��}~�T��_
�����|~]?U���וbcԕA��4�M�l|\���t�>8�d�VP�o�����?Np�y}n��f��T@��ҽc�ϧ��l��zf�Y����}{~��H��h`5��pʷ�f9�P����[P��M��j�/զ�Ir��i���W&�j��v��	k��;��������m��:!��~k7m�}���O�����Z��A�_h�����;�h�{y�n�8��F�3l�|t�xz���k+�7!d��[)���;����>��T5��)��( s�3G�P�o�����`jT_8T�E��&��v�>�C���kdm��<񿳲�&FK��`Twxu����c~Y�o�V!��`v�d2�d���, ��cF�� ?�Rɲ7�cd5y+e��$������vU-D�Dʢ���Y�0 �K� ��!w�`<&p��F53U|�ϵ�6A��q�d�A[�����Ͻ�V튧i�?Zq9h�)�w�g]��ϙ:��k�B�����)�:u��hn��<�˻�⦹�v�R�u,p���,�t����Z�\�W�j�`u�\7��欹��	�D���@������j@�,����v��>y���3���X��5��6,�#��.�5��8�����N�q�P	v��c���d��r#V�:�2�!�g,�*�&�Q�x�䗾@�Y�9�C��(�+(��<�.��@
�(��9Y��Ѫ�R|۾m�JȘ�SB�a���O����8."YD�q�)�1s�^�f�Ræ�Ё[�r��$���A�G0�j�/�����V5u��I#��Q�+e$UIZb�4�@o�_$&BkĢf\��-���k`�k�Vv��(���qz	��Jr�_��>h��4q8j�)�+������f/;uʑ(A#Eu]�<����{S�ɪ�T)՝6*�����!%�P��e_2H�=�l�C&���W�v�2}r��){삥l❺jwM��Es��vk��˞29ݥ,�b0��������{ְ�dù^.�is{�n�e9?:�K(����$�}��f���+j|��z}}�\\����:[vyw���ĩ�� �A���*7�=x�;	=�֨U�֬��u���{���)��K�����#�*s^^h8֕��������iw��*��|>�@9 vO��Dq>����̧��	e�z薾�uZ����y�)��1-�b��<��d�i�&��n0d҈�^�3Tv��@[yP�h�C�*�u���˪}Xm����c���M`�s}�s��<��1�h\r\�2-�~�+85�r�"�<B��hJ󑜧�0������y�N�4�ro�<��&Y�qJeۭy�ظIq�!u�A��O���ad��B��)O���w�x�c��%r�(��v�k�����{=Xy�G�w��:hhْ?��/���>ui� �]�N���X4`����ONN�!�>�         �  x���M��0���)f_���Z������?G){�D���=��$-����|B|B����:hE������׃�@��!�Ъ� �?yr��^��7k��5�ж*��&bs��<>�Q�H�+���>~M��Q;C����ZՃ�Œ�{W���Y��7�]����sz���6\�;u�?���rg��ƶS��bp~�V���HG:R5A��p{�P� ��E �z��VƠqQ"RA��E��B�a�*�4]��x�� ����0��y�I�6�E��| ���X�a�.�E��r �L�H�.Z�a�#W�B�\A� �Wˑ1��z����P��P��̈jQ/��_��B�����rQ�g��7��t�(�|D]��WO��[��S;�2W�]=QZv(�oA��d���ڛIF&��*���M�U&A!zΨ,��ɕ�� ����le��3�(���n��:`mhLmA��'�4�-L�[�*&2��(G�XH�D5_M��T��I7�E���Zm���;���
٫�DW�v�\<Y�0�d�} �5�\9�UHl窞L)��щ�����m˜�'��b栘�z�<�4�f�o��7�ɤ�oM.��;xm�۲���<����q�3�O*�ᖹ�'���ZJ��Z��         �   x�uͱ�0й����Ҽׂ�����dx�$a#��%�����;��L��\V`����ؼ�xÐQ�Vt�.�0�f�i�6I!�Az��{�J�\�RڛR]ڋ�K�jz��&�C;�%�Jކײ��b+�B��[����s��2�         �   x�m���0���a���w11l��l-���޺e�Fop�8����#��s���P�;$���z���;}��p�D���L���Ay"tI�0�&G�"A�U��ԶR��#u]� ������s {otkPi=���W����SB��+�g���Y*j�rF��f��aN3?
ku��Hˌ��#>�xY!�e��"         �  x����n�0���S������,+Y.qST�S0U��;BRpEn�"2����ohQ�6�6���B�u[��5 O�<���g��)/()�_�����s��v~a�7�ug�G	���(V�!��Υ�#��5�w��s��uhӉ��l���+��X�#J,(6�����f�"�4)!�P�=e|�t�%�� �4lD�!���m©�&�)�4i*z�H���Pw�8Ҝ�ز<�a`d����D>]S]]o��h}ׅΞ}߻���,�$%Ng[��cC�(]HfӡGP
�bLB�EɌ:ua�<����DY�K�.�!o/]���Sc�=
�"SQ��)��Zw�V��<|�Z��0��M�Z`kS����E�R�k3������V��t(*�x���#�a�����N�����`�(�D�D!��n�Q׮���6�d��PWYq˒.&֤���n!�%W�- ~���<*	��Tq�E�4��`�K�Ѿ��}�l��8��W���{�-���,��VB'�X1ؚ!�/�L��o4�Ub�9K"�b�~�hU����!7AUR�T���+����4��2�ɦq�Cm:���H���Ȋ���g0Tv�FW�a�e ���f�1�㚑�@F�R+z?�ߎ2��4͒���7�Bã�LɊ[��=����C[��7LL7
�E*<�A��%&�dj6�����K�q�����R��_�s�|�W74��*fYx�L��<�����         �  x���َ�X��SOQ�̆�f��DP&�tb�I�a�O�V�I�B'�r%+��%5�G���ϸO ��I��ʸ���N��E����\`XEuU��~y��18WX+�)>�ؐ������V��Z��R}C0
u�'I��0�ZU�u_3w}��+j�m�O��~Q��	��$���� 
q���2D��3˺G�L�0q\Z�=��_�D��b��^�x��Q<��Ⱈ�jk���J卦��;1��3MR��u_�I͵au��Z��=��`	�C<��Ǳ#�ǜ`	�"i"�@�b	�O%b��=7�s�����_��]�K�d�K�b�Q��x�s����-/�VW�L<�B;�lw�XA
p�7����Z�lh�Ӯ�!�>IV �=B�忉:5��m�s�\����G-�D��D�7Q.���*S�g�m�r��苠�|�2�q;�ĕ�^9=8>>:�#lv����H�Q=5=���K���l� �[�$$w䭥6V�޵Q�R.j�����$��^�����38ˑ��RZ
vY����rz�)�%A��ގ�	l?���4Ĺ�
 ��S�2�ӿ� �?D�'`�(z�X�g�-�a��,r��la6��w�:^�*k��-R��(`�|G.c?r�M�7q�g�VRɸk��
�70��O���!$�hó,�7ь1� _��	����ѣ`�И��H�&:��Z�_��p�0���^_r�����Ĵ޻Ӑ�F5S��S䐛;!��a����7w�,6�#��qX�p�	pP�M4���J��^� �rǳW#���w~��.�dj�C䇯Zf�=n��mm�Γ���[{�o"MTk�,��w׈������b�7s�%E��#�~O��$hJ �	 âo��7� G��             x�3�L�H�-�I�K��Efs��qqq �<	�      "      x������ � �      $      x������ � �      &      x������ � �      (      x������ � �     