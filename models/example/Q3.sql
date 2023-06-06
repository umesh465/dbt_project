-- C.How many people dead how does not have sibling

select count(*) as count from titanic where SibSp = 0 and Survived = 0