-- Computers
INSERT INTO firm_computers (id, country, manufacturer, name, online_order)
VALUES (1, 'China', 'HP', 'ProDesk', true),
       (2, 'China', 'ASUS', 'ExpertCenter', false),
       (3, 'China', 'HP', 'Slim Desktop', true);
INSERT INTO model_computers (id, availability, color, comp_category, name, price, serial_number, size,
                             comp_type_processor, firm_computer_id)
VALUES (1, true, 'black', 'PC', 'HP ProDesk 400 G7 MT', 105000.0, '[11M72EA]', '303x155x337', 'Core i5-10500', 1),
       (2, true, 'black', 'Mini PC', 'HP ProDesk 260 G4 DM', 50000.0, '[4U608ES]', '175x177x34', 'Core i3-10110U', 1),
       (3, false, 'black', 'PC', 'ASUS ExpertCenter D5 SFF D500SC', 65000.0, '[90PF02K1-M00CU0]', '320x95x320',
        'Core i3-10105', 2),
       (4, true, 'black', 'PC', 'ASUS ExpertCenter D5 SFF D600SC', 75000.0, '[90PF02K2-M00CU0]', '320x95x320',
        'Core i3-10105', 2),
       (5, true, 'black', 'PC', 'HP Slim Desktop S01-aF1000ur', 26000.0, '[304N3EA]', '270x95x300', 'Celeron J4025', 3),
       (6, false, 'black', 'PC', 'HP Slim Desktop S01-aF0038ur', 36000.0, '[4D8N4EA]', '270x95x300', 'Ryzen 3 325OU',
        3);
ALTER SEQUENCE firm_computer_seq RESTART WITH 4;
ALTER SEQUENCE model_computer_seq RESTART WITH 7;

-- Refrigerators
INSERT INTO firm_refrigerators (id, country, manufacturer, name, online_order)
VALUES (1, 'Russia', 'Bosch', 'Serie 4 NatureCool', true),
       (2, 'Russia', 'Indesit', 'RTM', true),
       (3, 'Russia', 'LG', 'GA-B459', true);
INSERT INTO model_refrigerators (id, frig_amount_doors, availability, color, name, price, serial_number, size,
                                 frig_type_compressor, firm_refrigerator_id)
VALUES (1, 2, true, 'beige', 'Bosch Serie 4 NatureCool KGV36XK2AR', 46000.0, 'KGV36XK2AR', '60x180x59', 'Rotary', 1),
       (2, 2, true, 'silver', 'Bosch Serie 4 NatureCool KGV39XL22R', 53000.0, 'KGV39XL22R', '60x200x63', 'Rotary', 1),
       (3, 2, false, 'white', 'Indesit RTM 16', 32300.00, '19516049400', '60x167x63', 'Rotary', 2),
       (4, 2, false, 'gray', 'Indesit RTM 16 S', 33300.00, '19516049405', '60x167x63', 'Rotary', 2),
       (5, 2, true, 'black', 'LG GA-B459CBTL', 68000.0, 'GA-B459CBTL', '60x186x68', 'Invert', 3),
       (6, 2, true, 'white', 'LG GA-B459MQSL', 70000.0, 'GA-B459MQSL', '60x186x68', 'Invert', 3);
ALTER SEQUENCE firm_refrigerator_seq RESTART WITH 4;
ALTER SEQUENCE model_refrigerator_seq RESTART WITH 7;

-- Smartphone
INSERT INTO firm_smartphones (id, country, manufacturer, name, online_order)
VALUES (1, 'India', 'Samsung', 'Galaxy A32', true),
       (2, 'China', 'HUAWEI', 'nova 9', true),
       (3, 'China', 'Apple', 'iPhone 11', false);
INSERT INTO model_smartphones (id, sph_amount_cameras, availability, color, sph_memory, name, price, serial_number,
                               size, firm_smartphone_id)
VALUES (1, 4, true, 'blue', '64Gb', 'Samsung Galaxy A32', 25500.0, '[SM-A325FZBDSER]', '73x158x8', 1),
       (2, 4, true, 'purple', '64Gb', 'Samsung Galaxy A32', 25500.0, '[SM-A325FLVDSER]', '73x158x8',
        1),
       (3, 4, true, 'blue', '128Gb', 'HUAWEI nova 9', 40000.0, '[51096UCY]', '74x160x8', 2),
       (4, 4, true, 'black', '128Gb', 'HUAWEI nova 9', 40000.0, '[51096UDB]', '74x160x8', 2),
       (5, 4, false, 'white', '128Gb', 'Apple iPhone 11', 68000.0, '[MHDC3RU/A]', '75x151x8', 2),
       (6, 4, false, 'green', '128Gb', 'Apple iPhone 11', 68000.0, '[MHDG3RU/A]', '75x151x8', 2);
ALTER SEQUENCE firm_smartphone_seq RESTART WITH 4;
ALTER SEQUENCE model_smartphone_seq RESTART WITH 7;

-- TVs
INSERT INTO firm_tvs (id, country, manufacturer, name, online_order)
VALUES (1, 'Russia', 'LG', 'LED LG 55U', true),
       (2, 'Malaysia', 'Sony', 'KD43X', true),
       (3, 'Hungary', 'Samsung', 'The Serif', true);
INSERT INTO model_tvs (id, availability, color, name, price, serial_number, size, tv_technology, tv_category,
                       firm_tv_id)
VALUES (1, true, 'gray', 'LG 55UP76506LD', 70000.0, '55UP76506LD', '1240x720x85', 'Active HDR', 'LED', 1),
       (2, true, 'black', 'LG 55UN68006LA', 70000.0, '55UN68006LA', '1240x720x85', 'Active HDR', 'LED', 1),
       (3, true, 'black', 'Sony KD43X81JR', 100000.0, 'KD43X81JR', '962x562x65', 'HDR10', 'LED', 2),
       (4, true, 'black', 'Sony KD43X85TJR', 107000.0, 'KD43X85TJR', '962x563x69', 'HDR10', 'LED', 2),
       (5, true, 'black', 'Samsung The Serif QE43LS01TAUXRU', 87000.0, 'QE43LS01TAUXRU', '968x597x197', 'HDR10+',
        'LED', 3),
       (6, false, 'blue', 'Samsung The Serif QE50LS01TBUXRU', 100000.0, 'QE50LS01TBUXRU', '968x597x197', 'HDR10+',
        'LED', 3);
ALTER SEQUENCE firm_tv_seq RESTART WITH 4;
ALTER SEQUENCE model_tv_seq RESTART WITH 7;

-- VacuumCleaner
INSERT INTO firm_vacuum_cleaners (id, country, manufacturer, name, online_order)
VALUES (1, 'Germany', 'Bosch', 'BSGL3MULT', true),
       (2, 'Vietnam', 'LG', 'VC5420N', true),
       (3, 'Germany', 'Thomas', 'DryBox + AquaBox', false);
INSERT INTO model_vacuum_cleaners (id, vc_amount_modes, availability, color, name, price, serial_number, size,
                                   vc_size_dust_container, firm_vacuum_cleaner_id)
VALUES (1, 1, false, 'red', 'Bosch BSGL3MULT1', 10500.0, 'BSGL3MULT1', '260x287x400', '4L', 1),
       (2, 1, true, 'red', 'Bosch BSGL3MULT3', 11400.0, 'BSGL3MULT3', '260x287x400', '4L', 1),
       (3, 1, true, 'gray', 'LG VC5420NNTG', 10800.0, 'VC5420NNTG', '260x287x400', '1.3L', 2),
       (4, 1, true, 'violet', 'LG VC5420NHTW', 11400.0, 'VC5420NHTW', '260x287x400', '1.3L', 2),
       (5, 1, true, 'white', 'Thomas DryBox + AquaBox Cat&Dog', 27700.0, '[786554]', '318x294x467', '2.1L', 3),
       (6, 1, true, 'white', 'Thomas DryBox + AquaBox Parkett', 29800.0, '[786555]', '318x294x467', '2.1L', 3);
ALTER SEQUENCE firm_vacuum_cleaner_seq RESTART WITH 4;
ALTER SEQUENCE model_vacuum_cleaner_seq RESTART WITH 7;