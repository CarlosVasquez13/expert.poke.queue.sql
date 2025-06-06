

create schema pokequeue;

create table pokequeue.MESSAGES(
    id int IDENTITY(1,1) PRIMARY KEY,
    [message] VARCHAR(255) NOT NULL
);


create table pokequeue.[status](
    id int IDENTITY(1,1) PRIMARY KEY,
    [description] VARCHAR(255) NOT NULL
);

create table pokequeue.[requests](
    id int IDENTITY(1,1) PRIMARY KEY,
    [type] NVARCHAR(255) NOT NULL,
    id_status int NOT NULL,
    [url] NVARCHAR(1000) NOT NULL, 
    created DATETIME DEFAULT GETDATE(),
    updated DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_status) REFERENCES pokequeue.[status](id)
)