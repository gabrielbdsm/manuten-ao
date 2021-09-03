
CREATE TABLE conta (
    id_cliente INTEGER REFERENCES dados (id_cliente) ON DELETE CASCADE
                                                     ON UPDATE CASCADE
                       UNIQUE,
    n_conta    INTEGER PRIMARY KEY AUTOINCREMENT
                       UNIQUE,
    saldo      REAL    DEFAULT (0),
    agencia    TEXT
);
