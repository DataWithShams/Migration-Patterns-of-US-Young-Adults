-- Looks at entire table

select *
from migration
where OriginalID is not null;


-- Looks at Total Number of Young Adults from Original City

select SUM(total_number_original) as Total_Number_Original
from migration
order by 1;


-- Looks at South Original States where Young Adults Migrate From

select original_state
from migration
where original_state in ('alabama', 'florida', 'texas', 'georgia', 'alabama', 'arkansas', 'louisana', 'kentucky', 'oklahoma', 'south carolina', 'north carolina', 'virginia', 'west virginia' , 'mississippi', 'missouri');


-- Looks at Total Percent of Young Adults Moving to Destination Cities

select SUM(total_number_original/total_number_destination)*100
from migration;


-- Looks at Top 2 Races of Young Adults Migrating

select distinct race, total_number_destination
from migration 
ORDER BY race DESC limit 2;


-- Looks at rate of Black Young Adults Migrating to DC

select (total_number_destination)/100
from migration
where race = 'black' and Original_State = 'DC';


-- Looks at Top 3 Destination Cities by Race

select distinct destination_city, destination_state, race
from migration 
ORDER BY destination_city, race DESC limit 3;
