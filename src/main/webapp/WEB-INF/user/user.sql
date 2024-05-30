show tables;

CREATE TABLE userInfo (
    idx INT NOT NULL AUTO_INCREMENT,  -- 회원 고유번호
    name VARCHAR(10) NOT NULL,  -- 회원 이름
    studentId INT NOT NULL,  -- 학번(2021161099 -> 앞의 4자리(2021:21학번, 가운데2자리(16:학과정보),뒤에4자리(1099:학생번호))
    pwd INT NOT NULL,  -- 비밀번호 (휴대전화 뒤 4자리)
    department VARCHAR(30) NOT NULL,  -- 회원 학과 ==> 위의 학번이랑 한번 비교하기
    phoneNum VARCHAR(20) NOT NULL,  -- 회원 폰번호
    expCheck CHAR(2) NOT NULL,  -- 경험여부(OK:경험있음, NO:경험없음)
    expTime INT NOT NULL,  -- 경험이 있는 사람 중 몇개월 혹은 몇년을 다녔는가? (default:0, 월단위로 저장)
    expOk CHAR(2) NOT NULL,  -- 체험여부(OK:체험하고 싶다, NO:체험안하고 그냥 가입한다.)
    joinCheck INT default 0, 		-- 가입승인여부(승인됨 : 1, 승인되지 않음: 0)
    PRIMARY KEY (idx)
);

drop table userInfo;

desc userInfo;


insert into userInfo values(default, '관리자','1111111111','1234','학부없음','010-1234-1234','NO', 0, 'OK', default);
insert into userInfo values(default, '홍길동','2020120111','1234','학부없음','010-1234-1234','NO', 0, 'OK', default);

select * from userInfo;

select * from userInfo where studentId = 2021161099 and pwd=5678;