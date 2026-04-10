CREATE PROCEDURE dbo.sp_SampleProcedure
(
    @Name NVARCHAR(100),
    @Age INT
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Message NVARCHAR(200);

    -- Simple logic
    IF @Age >= 18
        SET @Message = @Name + ' is an Adult';
    ELSE
        SET @Message = @Name + ' is a Minor';

    -- Return result
    SELECT 
        @Name AS Name,
        @Age AS Age,
        @Message AS StatusMessage,
        GETDATE() AS ExecutionTime;
END