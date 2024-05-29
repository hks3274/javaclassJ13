show tables;

CREATE TABLE userInfo (
    idx INT NOT NULL AUTO_INCREMENT,  -- 회원 고유번호
    name VARCHAR(10) NOT NULL,  -- 회원 이름
    studentId INT NOT NULL,  -- 학번(2021161099 -> 앞의 4자리(2021:21학번, 가운데2자리(16:학과정보),뒤에4자리(1099:학생번호))
    pwd INT NOT NULL,  -- 비밀번호 (휴대전화 뒤 4자리)
    department VARCHAR(30) NOT NULL,  -- 회원 학과 ==> 위의 학번이랑 한번 비교하기
    phoneNum VARCHAR(20) NOT NULL,  -- 회원 폰번호
    expCheck CHAR(2) DEFAULT 'NO',  -- 경험여부(OK:경험있음, NO:경험없음)
    expTime INT DEFAULT 0,  -- 경험이 있는 사람 중 몇개월 혹은 몇년을 다녔는가? (default:0, 월단위로 저장)
    expOk CHAR(2) DEFAULT 'OK',  -- 체험여부(OK:체험하고 싶다, NO:체험안하고 그냥 가입한다.)
    PRIMARY KEY (idx)
);

drop table userInfo;

desc userInfo;


insert into userInfo values(default, '관리자','0000000000','1234','학부없음','010-1234-1234',default, default, default);

select * from userInfo;