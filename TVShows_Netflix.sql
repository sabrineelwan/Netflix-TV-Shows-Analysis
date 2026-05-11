-- Q1. what percentage of top rated tvshows (imdb>=8.5) are on netflix vs not ?

select  netflix_availability, count(*) as total_shows
from tvshows
where imdb_rating >= 8.5 
group by netflix_availability
order by total_shows desc;


-- Q2. which release era produces the highest average imdb rating, and how many shows represent each era ?

select release_era,
Round (avg(imdb_rating) :: numeric,2) as ranked_imdb,
count(netflix_availability) as total_tvshows
from tvshows
group by release_era
order by ranked_imdb desc


-- Q3. For each age tier, what are the top 2 shows by imbd rating ?

with show_rank as (

select age_rating_tier,imdb_rating , titles,
row_number() over( partition by age_rating_tier order by imdb_rating desc) as ranked
from tvshows
)
select * 
from show_rank
where ranked <=2;


-- Q4. Is there a relation between age rating and imdb rating ? and which rating category performs best ?

select age_rating_tier, 
Round (avg(imdb_rating) :: numeric,2) as performance_rating
from tvshows
group by age_rating_tier
order by performance_rating desc


-- Q5. which age tier and era combined has the most netflix available shows ?

select age_rating_tier , release_era,
count (netflix_availability) as total_available_shows
from tvshows
where netflix_availability = 'Yes'
group by age_rating_tier, release_era
order by total_available_shows desc
limit (1)


-- Q6. Among shows not available on netflix, which tvshows have imbd >= 8.5 ?

select titles, imdb_rating, netflix_availability
from tvshows
where imdb_rating >= 8.5 and netflix_availability = 'No'
order by imdb_rating desc
limit (10);

--Q7. What are the top 10 must-have shows based on their overall value, and are they currently available on netflix or not ?
-- overall value [ age_tier = Adults , imdb_rating = 9.5 , release_era = 2010s ]

with scored as (
select titles, imdb_rating, netflix_availability,
case age_rating_tier
  when 'Adults' then 3
  when 'kids' then 2
  when 'Teens' then 1
  else 0
end +
case release_era
  when '2010s' then 3
  when '2000s' then 2
  when '90s' then 1
  else 0
 end +
case 
  when imdb_rating >= 9.5 then 3
  when imdb_rating >= 9 then 2
  when imdb_rating >= 8.5 then 1
  else 0

  end as overall_score
  from tvshows
  ),
  ranked as (
  select * ,
  rank()over(order by overall_score desc) as value_rank
  from scored
  )

select *
from ranked
where value_rank <=10;

 
 
 
 
 








