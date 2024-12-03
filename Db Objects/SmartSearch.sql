
/*

exec SmartSearch 'fatigue and vitamin deficit anemia'

exec SmartSearch 'running nose'

select dbo.levenshtein('fitim','fiton')

*/

Create or Alter procedure SmartSearch
(
	@SearchQuery nvarchar(2000)
)
as
begin

	Create table #SearchTokens 
	(
		Token nvarchar(100)
	)
		
	declare @NextSpace int
	declare @Word nvarchar(255)
	declare @TokenOrder int = 0
	declare @Position int = 1

	-- Loop through the string until there are no more words
	while @Position <= LEN(@SearchQuery)
	begin
	    -- Find the position of the next space character
	    set @NextSpace = CHARINDEX(' ', @SearchQuery, @Position)
	    
	    -- If no space is found, set @NextSpace to the length of the string (end of the string)
	    if @NextSpace = 0
		begin
	        set @NextSpace = LEN(@SearchQuery) + 1
		end
	    
	    -- Extract the word from the string
	    set @Word = SUBSTRING(@SearchQuery, @Position, @NextSpace - @Position)
		set @TokenOrder = @TokenOrder + 1
	    
	    -- Insert the word into the PharmaArticleTokens table
	    insert into #SearchTokens values (@Word)

	    -- Move the position to the next word
	    set @Position = @NextSpace + 1
	end

	select top 9 pt.ArticleID, sum(
		case 
			when len(st.token) < 4 or len(pt.token) < 4 then 0

			when dbo.levenshtein(st.token,pt.token) > 79
				then dbo.levenshtein(st.token,pt.token)
			else 0
		end
	) Score
	into #ScoringArticles
	from #SearchTokens st
	join PharmaArticleTokens pt on not(st.Token is null or pt.Token is null)
	group by pt.ArticleID
	order by sum(
		case 
			when len(st.token) < 4 or len(pt.token) < 4 then 0

			when dbo.levenshtein(st.token,pt.token) > 79
				then dbo.levenshtein(st.token,pt.token)
			else 0
		end
	) desc

	
	Create table #results(
		resultString nvarchar(4000),
		resultOrder int
	)

	insert into #results
	select '{"Treatments":[' resultString, 1 resultOrder
	union all
	select '{"Treatments":[' resultString, 2 resultOrder
	union all
	select '{"Treatments":[' resultString, 3 resultOrder

	update r set
		r.resultString = r.resultString + (
			select '{"Symptom":"'+pa.SymptomDescription
						+'","Condition":"'+pa.Condition
						+'","DrugName":"'+pa.DrugName
						+'","DrugComposition":"'+pa.DrugComposition
						+'","SubstanceType":"'+pa.SubstanceType
						+'","AgeTarget":"'+pa.AgeTarget
						+'","PriceUSD":"'+pa.PriceUSD
						+'"},'
			from PharmaArticles pa
			join #ScoringArticles sa on pa.ID = sa.ArticleID
			order by sa.Score desc
			offset 0 rows fetch next 3 rows only
			for xml path ('')
		)
	from #results r
	where r.resultOrder = 1

	
	update r set
		r.resultString = r.resultString + (
			select '{"Symptom":"'+pa.SymptomDescription
						+'","Condition":"'+pa.Condition
						+'","DrugName":"'+pa.DrugName
						+'","DrugComposition":"'+pa.DrugComposition
						+'","SubstanceType":"'+pa.SubstanceType
						+'","AgeTarget":"'+pa.AgeTarget
						+'","PriceUSD":"'+pa.PriceUSD
						+'"},'
			from PharmaArticles pa
			join #ScoringArticles sa on pa.ID = sa.ArticleID
			order by sa.Score desc
			offset 3 rows fetch next 3 rows only
			for xml path ('')
		)
	from #results r
	where r.resultOrder = 2

	
	update r set
		r.resultString = r.resultString + (
			select '{"Symptom":"'+pa.SymptomDescription
						+'","Condition":"'+pa.Condition
						+'","DrugName":"'+pa.DrugName
						+'","DrugComposition":"'+pa.DrugComposition
						+'","SubstanceType":"'+pa.SubstanceType
						+'","AgeTarget":"'+pa.AgeTarget
						+'","PriceUSD":"'+pa.PriceUSD
						+'"},'
			from PharmaArticles pa
			join #ScoringArticles sa on pa.ID = sa.ArticleID
			order by sa.Score desc
			offset 6 rows fetch next 3 rows only
			for xml path ('')
		)
	from #results r
	where r.resultOrder = 3

	update r set
		r.resultString = r.resultString + ']}'
	from #results r
	
	select *
	from #results
end