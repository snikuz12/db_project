DELIMITER // -- 개발자 닉네임으로 조회
CREATE procedure ViewReviews_Pro(in 닉네임 varchar(30))
begin   -- 닉네임을 통해 개발자ID 받아옴
    declare 개발자ID bigint;
    select pro_id into 개발자ID from pro where pro_nickname = 닉네임;
    select * from client_review where review_pro_id = 개발자ID;
end //
DELIMITER ;