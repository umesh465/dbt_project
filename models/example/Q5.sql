-- E.How many male who died and how many female died?

select sex ,count(*) as count from titanic where Survived = 0 group by Sex