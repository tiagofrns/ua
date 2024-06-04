
CREATE TABLE IF NOT EXISTS images (
id INTEGER PRIMARY KEY AUTOINCREMENT, /* primary key */
name TEXT,
author TEXT,
path TEXT,
datetime TEXT
);

CREATE TABLE IF NOT EXISTS comments (
id INTEGER PRIMARY KEY AUTOINCREMENT, /* primary key */
idimg INTEGER, /* foreign key */
user TEXT,
comment TEXT,
datetime TEXT
);

CREATE TABLE IF NOT EXISTS votes (
id INTEGER PRIMARY KEY AUTOINCREMENT, /* primary key */
idimg INTEGER, /* foreign key */
ups INTEGER,
downs INTEGER
);