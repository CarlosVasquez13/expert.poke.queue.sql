USE [master];
create login PokeQueueApp with PASSWORD = '';

USE [pokequeuealfadb];
create user PokeQueueAppUser for login PokeQueueApp;



grant select on SCHEMA :: pokequeue to PokeQueueAppUser;
grant insert on SCHEMA :: pokequeue to PokeQueueAppUser;
grant update on SCHEMA :: pokequeue to PokeQueueAppUser;
grant delete on SCHEMA :: pokequeue to PokeQueueAppUser;

grant execute on SCHEMA :: pokequeue to PokeQueueAppUser;