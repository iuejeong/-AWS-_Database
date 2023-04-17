update book_list_tb
-- 현재 날짜에서 1~3을 뺀 랜덤 값 설정
set registe_date = DATE_ADD(
	DATE_ADD(
		DATE_ADD(
			CURDATE(),
            INTERVAL -cast(RAND()*(4-1)+1 as unsigned)
            DAY),
		INTERVAL -cast(RAND()*(4-1)+1 as unsigned)
        MONTH),
	INTERVAL -cast(RAND()*(4-1)+1 as unsigned)
	YEAR)