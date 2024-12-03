



select *
from PharmaArticles
order by ID

select *,'Runny' SearchToken, dbo.Levenshtein('Runny',Token) LevenshteinScore, 
	case 
			when len('Runny') < 4 or len(token) < 4 then 0

			when dbo.levenshtein('Runny',token) > 79
				then dbo.levenshtein('Runny',token)
			else 0
		end  LevenshteinScore2
from PharmaArticleTokens
order by ArticleID,TokenOrder

select Condition
from PharmaArticles
group by Condition




exec Tokenize

select dbo.levenshtein('Fitim', 'Fitim')