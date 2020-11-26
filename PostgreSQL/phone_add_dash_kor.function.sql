create function phone_number(phone text) returns text
as 
$$
BEGIN
  return regexp_replace(
    phone , 
    '(02|031|032|033|041|042|043|051|052|053|054|055|061|062|063|064'||'|010|011|016|017|018|019'||'|030|050|060|070|080'')(.+)(.{4})','\1-\2-\3'
  );
END
$$
language pgplsql;
