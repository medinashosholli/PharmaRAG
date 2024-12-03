

--exec Tokenize
Create or Alter procedure Tokenize
as
begin
	
	declare @InputString nvarchar(2000) = ''
	declare @RowNumber int = 0
	declare @TokenOrder int = 0

	
	-- Declare variables
	DECLARE @Word NVARCHAR(255)
	DECLARE @Position INT = 1
	DECLARE @NextSpace INT

	while exists(select top 1 ID from PharmaArticles where ID > @RowNumber order by ID)
	begin
		set @RowNumber = (select min(ID) from PharmaArticles where ID > @RowNumber);
		set @InputString = (select 
								isNUll(SymptomDescription + ' ','') +
								isNUll(Condition + ' ','') +
								isNUll(DrugName + ' ','') +
								isNUll(DrugComposition + ' ','') +
								isNUll(SubstanceType + ' ','') +
								isNUll(AgeTarget + ' ','') +
								isNUll(PriceUSD,'') from PharmaArticles where ID = @RowNumber);
		
		set @TokenOrder = 0
		set @Position = 1

		-- Loop through the string until there are no more words
		while @Position <= LEN(@InputString)
		begin
		    -- Find the position of the next space character
		    set @NextSpace = CHARINDEX(' ', @InputString, @Position)
		    
		    -- If no space is found, set @NextSpace to the length of the string (end of the string)
		    if @NextSpace = 0
			begin
		        set @NextSpace = LEN(@InputString) + 1
			end
		    
		    -- Extract the word from the string
		    set @Word = SUBSTRING(@InputString, @Position, @NextSpace - @Position)
			set @TokenOrder = @TokenOrder + 1
		    
		    -- Insert the word into the PharmaArticleTokens table
		    INSERT INTO PharmaArticleTokens (ArticleID,TokenOrder,Token)
		    VALUES (@RowNumber,@TokenOrder,@Word)

		    -- Move the position to the next word
		    set @Position = @NextSpace + 1
		end
	end
end