select
	*
from
	book_list_tb bl1
    left outer join(
				select
				book_name,
				author_id,
				publisher_id,
				category_id,
                count(*) as cnt
			from
				book_list_tb bl
				left outer join author_tb a on (a.author_name = bl.author_name)
				left outer join publisher_tb ps on(ps.publisher_name = bl.publisher_name)
				left outer join category_tb cg on (cg.category_name = bl.category_name)
			group by
				book_name,
				author_id,
				publisher_id,
				category_id
			having
				cnt > 1) bl2 on (bl2.book_name = bl1.book_name)