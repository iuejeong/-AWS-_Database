insert into book_tb
select
	0 as book_id,
	book_name,
    author_id,
    publisher_id,
    category_id,
    cover_img_url
from
	(select
		-- 같은 값들 안에서 row number를 매기겠다.
        -- ex) 김준일,김준일,김준일,김준이,김준이,김준삼
        -- 		1		2		3		1		2		1
        -- row number를 하지 않을 경우 1, 2, 3, 4, 5, 6이 됨.
		row_number() over(partition by
				book_name,
				author_id,
				publisher_id,
				category_id order by book_name) as num,
			book_name,
			author_id,
			publisher_id,
			category_id,
			cover_img_url
		from
			book_list_tb bl
			left outer join author_tb a on (a.author_name = bl.author_name)
			left outer join publisher_tb ps on(ps.publisher_name = bl.publisher_name)
			left outer join category_tb cg on (cg.category_name = bl.category_name)
			) book_list
-- img 중복되는 것 하나만 넣기
where
	num = 1