
-- Query 1
-- Get the id values of the first 5 clients from district_id with a value equals to 1.
use bank;
select * from client;

select client_id
from client
where district_id = 1
order by client_id
limit 5;

-- Query 2
-- In the client table, get an id value of the last client where the district_id equals to 72.
select client_id
from client
where district_id = 72
order by client_id desc
limit 1;

-- Query 3
-- Get the 3 lowest amounts in the loan table.
select amount
from loan
order by amount
limit 3;

-- Query 4
-- What are the possible values for status, ordered alphabetically in ascending order in the loan table?
select distinct status
from loan
order by status asc;

-- Query 5
-- What is the loan_id of the highest payment received in the loan table?
select loan_id
from loan
order by payments asc
limit 1;

-- Query 6
-- What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount

