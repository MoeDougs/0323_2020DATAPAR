select a.au_id as 'Author ID', a.au_lname as 'Last Name' , a.au_fname as 'First Name' , t.title as 'Title', p.pub_name as 'PUBLISHER NAME'
from authors a
inner join titleauthor ta on ta.au_id = a.au_id
inner join titles t on t.title_id = ta.title_id 
inner join publishers p on p.pub_id=t.pub_id
order by t.title desc;

select a.au_id as 'Author ID', a.au_lname as 'Last Name' , a.au_fname as 'First Name' , t.title as 'Title', p.pub_name as 'PUBLISHER NAME', count(p.pub_id) as "TITLE COUNT", count(ta.au_id) as "TA"
from authors a
inner join titleauthor ta on ta.au_id = a.au_id
inner join titles t on t.title_id = ta.title_id 
inner join publishers p on p.pub_id=t.pub_id
group by a.au_id, p.pub_name
order by t.title desc;

select a.au_id as 'Author ID', a.au_lname as 'Last Name' , a.au_fname as 'First Name', s.qty as 'Total'
from authors a
inner join titleauthor ta on ta.au_id = a.au_id
inner join titles t on t.title_id = ta.title_id 
inner join sales s on s.title_id = t.title_id
group by a.au_id
order by s.qty desc
limit 3;

select a.au_id as 'Author ID', a.au_lname as 'Last Name' , a.au_fname as 'First Name', s.qty as 'Total'
from authors a
inner join titleauthor ta on ta.au_id = a.au_id
inner join titles t on t.title_id = ta.title_id 
inner join sales s on s.title_id = t.title_id
group by a.au_id
order by s.qty desc;

SELECT a.au_id, a.au_lname, a.au_fname,  sum(ti.ytd_sales) as total
from authors a
left join TITLEAUTHOR T ON A.AU_ID = T.AU_ID
left join TITLES TI ON T.TITLE_ID = TI.TITLE_ID
group by a.au_id
order by total desc ;

