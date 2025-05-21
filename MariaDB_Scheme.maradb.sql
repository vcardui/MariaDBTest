-- +----------------------------------------------------------------------------+
-- | CARDUI WORKS v1.0.0
-- +----------------------------------------------------------------------------+
-- | Copyright (c) 2024 - 2025, CARDUI.COM (www.cardui.com)
-- | Vanessa Reteguín <vanessa@reteguin.com>
-- | Released under the MIT license
-- | www.cardui.com/carduiframework/license/license.txt
-- +----------------------------------------------------------------------------+
-- | Author.......: Vanessa Reteguín <vanessa@reteguin.com>
-- | First release: May 20th, 2025
-- | Last update..: May 20th, 2025
-- | WhatIs.......: MariaDB Test - Scheme and Data
-- | DBMS.........: MariaDB
-- +----------------------------------------------------------------------------+
--
--
--
-- DROP TABLE IF EXISTS mucuser;
CREATE TABLE
    mucuser (
        idmucuser INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
        --
        userlogin VARCHAR(64) UNIQUE NOT NULL,
        userpassword VARCHAR(96) NOT NULL,
        --
        firstname VARCHAR(64) NOT NULL,
        lastName VARCHAR(64) NOT NULL,
        email VARCHAR(128) NOT NULL,
        title ENUM ('Lic.', 'Ing.', 'Arq.', 'Mtr.', 'Phd.'),
        specialty VARCHAR(64),
        --
        PRIMARY KEY (idmucuser)
    ) ENGINE = InnoDB DEFAULT CHARACTER
SET
    = utf8;



-- DROP TABLE IF EXISTS question;
CREATE TABLE
    question (
        idquestion INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
        --
        phrase VARCHAR(255) NOT NULL,
        --
        PRIMARY KEY (idquestion)
    ) ENGINE = InnoDB DEFAULT CHARACTER
SET
    = utf8;



INSERT INTO
    mucuser (userlogin, userpassword, firstname, lastName, email, title, specialty)
VALUES
    (
        'va@reteguin.com',
        'rememberToChangeThePasswordYouSilly',
        'Vanessa',
        'Reteguín',
        'va@reteguin.com',
        'Ing.',
        'Dormir'
    ),
    ('car@gmail.com', 'thisIsCarduiBotsPassword', 'Cardui', 'Bot', 'car@gmail.com', NULL, '11111101000');



INSERT INTO
    question (idquestion, phrase)
VALUES
    (1, '¿Hay claridad en el propósito u objetivo de la investigación o del texto?'),
    (
        2,
        '¿Se presentan datos de forma clara y ordenada, se informa su origen y se evidencia su relación con el texto?'
    ),
    (
        3,
        'En caso de que el texto incluya hipótesis, ¿éstas se encuentran explicitadas de manera clara y articuladas con la introducción y la teoría? ¿Los resultados aportan conceptualización o contribuyen a resolver un problema?'
    ),
    (
        4,
        '¿Hay precisión de las definiciones conceptuales? ¿Se evidencia rigor en la recolección de los datos? (sistematización).'
    ),
    (5, '¿El artículo sigue el formato APA?');