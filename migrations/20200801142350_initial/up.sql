CREATE TABLE IF NOT EXISTS banlist
(
    id      BIGINT    NOT NULL PRIMARY KEY,
    reason  TEXT      NOT NULL,
    date    TIMESTAMP NOT NULL,
    message TEXT
);

CREATE TABLE IF NOT EXISTS strafanzeigen
(
    key           TEXT      NOT NULL PRIMARY KEY,
    data          TEXT      NOT NULL,
    creation_date TIMESTAMP DEFAULT now()
);


CREATE TABLE IF NOT EXISTS chats
(
    id   BIGINT NOT NULL PRIMARY KEY,
    tags JSONB  NOT NULL
);

CREATE SCHEMA blacklists

    CREATE TABLE IF NOT EXISTS base
    (
        id      SERIAL NOT NULL PRIMARY KEY,
        item    TEXT   NOT NULL,
        retired BOOLEAN DEFAULT FALSE
    )

    CREATE TABLE IF NOT EXISTS bio
    (
    ) INHERITS (base)

    CREATE TABLE IF NOT EXISTS string
    (
    ) INHERITS (base)

    CREATE TABLE IF NOT EXISTS channel
    (
    ) INHERITS (base)

    CREATE TABLE IF NOT EXISTS domain
    (
    ) INHERITS (base)

    CREATE TABLE IF NOT EXISTS file
    (
    ) INHERITS (base)

    CREATE TABLE IF NOT EXISTS mhash
    (
    ) INHERITS (base)
;
