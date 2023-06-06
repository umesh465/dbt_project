-- A.How many people survive and how many people dead

select count(*) as count, Survived from titanic group by Survived

--here survived_dead = 0 means dead survived_dead = 1 mean survived