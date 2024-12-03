

Create or Alter FUNCTION Levenshtein(@s1 nvarchar(3999), @s2 nvarchar(3999))
RETURNS int
AS
BEGIN
	DECLARE @s1_len int, @s2_len int;
	DECLARE @i int, @j int, @s1_char nchar, @c int, @c_temp int;
	DECLARE @cv0 varbinary(8000), @cv1 varbinary(8000);
	DECLARE @big_len int,@small_len int;

	SELECT
		@s1_len = LEN(@s1),
		@s2_len = LEN(@s2),
		@cv1 = 0x0000,
		@j = 1, @i = 1, @c = 0;

	IF @s1_len >= @s2_len
	begin
		set @big_len	= @s1_len;
		set @small_len	= @s2_len;
	end
	else
	begin
		set @big_len	= @s2_len;
		set @small_len	= @s1_len;
	end

	WHILE @j <= @s2_len
	BEGIN
		SELECT @cv1 = @cv1 + CAST(@j AS binary(2)), @j = @j + 1;
	END

	WHILE @i <= @s1_len
	BEGIN
		SELECT
			@s1_char = SUBSTRING(@s1, @i, 1),
			@c = @i,
			@cv0 = CAST(@i AS binary(2)),
			@j = 1;
		
		WHILE @j <= @s2_len
		BEGIN
			SET @c = @c + 1;
			SET @c_temp = CAST(SUBSTRING(@cv1, @j+@j-1, 2) AS int) + CASE WHEN @s1_char = SUBSTRING(@s2, @j, 1) THEN 0 ELSE 1 END;

			IF @c > @c_temp SET @c = @c_temp
			BEGIN
				SET @c_temp = CAST(SUBSTRING(@cv1, @j + @j + 1, 2) AS int) + 1
			END
			IF @c > @c_temp SET @c = @c_temp
			BEGIN
				SELECT @cv0 = @cv0 + CAST(@c AS binary(2)), @j = @j + 1
			END
		END

		SELECT @cv1 = @cv0, @i = @i + 1;
	END
	
	RETURN cast(FLOOR((((@big_len - @c + 0.0) / (@small_len + 0.0))) * 100) as int);
END