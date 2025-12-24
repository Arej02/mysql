-- This is a clear example where using `Union` (O(logn)) is much faster than `Or` (n) as 
-- However, `Union All` is faster than Union as it does not remove the duplicate rows

select name,population,area from World where area>=3000000
union
select name,population,area from World where population>=25000000;

select name,population,area from World 
where area>=3000000 or population>=25000000;