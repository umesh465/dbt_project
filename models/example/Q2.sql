-- B.How many people survive how does not have sibling

select count(*) as count from titanic where SibSp = 0 and Survived = 1