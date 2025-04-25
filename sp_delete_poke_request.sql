CREATE PROCEDURE pokequeue.delete_poke_request
    @id INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM pokequeue.requests
    WHERE id = @id;

    SELECT 1 AS completed;
END;
