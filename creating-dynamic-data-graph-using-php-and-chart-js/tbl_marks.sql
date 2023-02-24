SELECT concat(ttl_name,lct_fname,"",lct_lname) as lecturer_name FROM
lecturer join title on lct_ttl_id = ttl_id;


SELECT COUNT(*) as project_count,
concat(ttl_name,lct_fname,"",lct_lname) as lecturer_name
FROM project join lecturer on prj_lct_id = lct_id
join title on lct_ttl_id = ttl_id
GROUP by lecturer_name;

SELECT COUNT(prj_id) as project_count,
concat(ttl_name,lct_fname,"",lct_lname) as lecturer_name
FROM project right join lecturer on prj_lct_id = lct_id
join title on lct_ttl_id = ttl_id
GROUP by lecturer_name;