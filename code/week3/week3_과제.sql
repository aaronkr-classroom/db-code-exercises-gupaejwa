/*
[Entities / 개체]
- Club

[Properties / 속성]

[Club]
- club_id (BIGSERIAL) -- 동아리 번호, 자동 증가
- club_name (VARCHAR(50)) -- 동아리명
- dept (VARCHAR(50)) -- 소속학과
- prof (VARCHAR(30)) -- 지도교수명
- member_cnt (INTEGER) -- 회원수
*/

CREATE TABLE Club (
    club_id BIGSERIAL,
    club_name VARCHAR(50),
    dept VARCHAR(50),
    prof VARCHAR(30),
    member_cnt INTEGER 
);

INSERT INTO Club (club_name, dept, prof, member_cnt) VALUES
('코딩동아리', '소프트웨어학과', '가나다', 25),
('독서동아리', '국어국문학과', '고라니', 22),
('축구동아리', '체육학과', '박상진', 25),
('사진동아리', '미디어학과', '최고다', 18),
('밴드동아리', '음악학과', '정말로', 15);

SELECT * FROM Club
	ORDER BY member_cnt DESC;

SELECT * FROM Club
	WHERE dept = '소프트웨어학과';

SELECT * FROM Club
	WHERE member_cnt >= 20;

SELECT * FROM Member
	WHERE grade = 2;

SELECT * FROM Member
	WHERE club_id = 1;