select * from cards as a join ( select name from cards group by cards.name having count(*) > 1 ) as b on a.name = b.name;