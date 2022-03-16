create sequence firm_computer_seq start 1 increment 1;
create sequence firm_refrigerator_seq start 1 increment 1;
create sequence firm_smartphone_seq start 1 increment 1;
create sequence firm_tv_seq start 1 increment 1;
create sequence firm_vacuum_cleaner_seq start 1 increment 1;
create sequence model_computer_seq start 1 increment 1;
create sequence model_refrigerator_seq start 1 increment 1;
create sequence model_smartphone_seq start 1 increment 1;
create sequence model_tv_seq start 1 increment 1;
create sequence model_vacuum_cleaner_seq start 1 increment 1;

create table firm_computers
(
    id           int8 not null,
    country      varchar(255),
    manufacturer varchar(255),
    name         varchar(255),
    online_order boolean,
    primary key (id)
);
create table firm_refrigerators
(
    id           int8 not null,
    country      varchar(255),
    manufacturer varchar(255),
    name         varchar(255),
    online_order boolean,
    primary key (id)
);
create table firm_smartphones
(
    id           int8 not null,
    country      varchar(255),
    manufacturer varchar(255),
    name         varchar(255),
    online_order boolean,
    primary key (id)
);
create table firm_tvs
(
    id           int8 not null,
    country      varchar(255),
    manufacturer varchar(255),
    name         varchar(255),
    online_order boolean,
    primary key (id)
);
create table firm_vacuum_cleaners
(
    id           int8 not null,
    country      varchar(255),
    manufacturer varchar(255),
    name         varchar(255),
    online_order boolean,
    primary key (id)
);
create table model_computers
(
    id                  int8    not null,
    availability        boolean not null,
    color               varchar(255),
    comp_category       varchar(255),
    name                varchar(255),
    price               numeric(19, 2),
    serial_number       varchar(255),
    size                varchar(255),
    comp_type_processor varchar(255),
    firm_computer_id    int8,
    primary key (id)
);
create table model_refrigerators
(
    id                   int8    not null,
    frig_amount_doors    int4,
    availability         boolean not null,
    color                varchar(255),
    name                 varchar(255),
    price                numeric(19, 2),
    serial_number        varchar(255),
    size                 varchar(255),
    frig_type_compressor varchar(255),
    firm_refrigerator_id int8,
    primary key (id)
);
create table model_smartphones
(
    id                 int8    not null,
    sph_amount_cameras int4,
    availability       boolean not null,
    color              varchar(255),
    sph_memory         varchar(255),
    name               varchar(255),
    price              numeric(19, 2),
    serial_number      varchar(255),
    size               varchar(255),
    firm_smartphone_id int8,
    primary key (id)
);
create table model_tvs
(
    id            int8    not null,
    availability  boolean not null,
    color         varchar(255),
    name          varchar(255),
    price         numeric(19, 2),
    serial_number varchar(255),
    size          varchar(255),
    tv_technology varchar(255),
    tv_category   varchar(255),
    firm_tv_id    int8,
    primary key (id)
);
create table model_vacuum_cleaners
(
    id                     int8    not null,
    vc_amount_modes        varchar(255),
    availability           boolean not null,
    color                  varchar(255),
    name                   varchar(255),
    price                  numeric(19, 2),
    serial_number          varchar(255),
    size                   varchar(255),
    vc_size_dust_container varchar(255),
    firm_vacuum_cleaner_id int8,
    primary key (id)
);

alter table if exists model_computers
    add constraint model_computers_fk_firm_computer foreign key (firm_computer_id) references firm_computers;
alter table if exists model_refrigerators
    add constraint model_refrigerators_fk_firm_refrigerator foreign key (firm_refrigerator_id) references firm_refrigerators;
alter table if exists model_smartphones
    add constraint model_smartphones_fk_firm_smartphone foreign key (firm_smartphone_id) references firm_smartphones;
alter table if exists model_tvs
    add constraint model_tvs_fk_firm_tv foreign key (firm_tv_id) references firm_tvs;
alter table if exists model_vacuum_cleaners
    add constraint model_vacuum_cleaners_fk_firm_vacuum_cleaner foreign key (firm_vacuum_cleaner_id) references firm_vacuum_cleaners;