//Odev1
SELECT title, description FROM film;
SELECT * FROM film WHERE length > 60 AND length < 75;
SELECT * FROM film WHERE rental_rate = 0.99 AND replacement_cost = 12.99  OR replacement_cost = 28.99;
SELECT last_name FROM customer WHERE first_name = 'Mary';
SELECT * FROM film WHERE length <= 50  AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);


//Odev2
SELECT * FROM film  WHERE replacement_cost BETWEEN 12.99 AND 16.99;
SELECT first_name, last_name FROM actor  WHERE first_name IN ('Penelope', 'Nick', 'Ed');
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4,99) AND replacement_cost IN (12.99, 15.99, 29.99);

//Odev3
SELECT country FROM country WHERE country LIKE 'A%a'
SELECT country FROM country  WHERE country LIKE '_____%n' 
SELECT title FROM film WHERE title ~~* '%T%T%T%T%' 
SELECT * FROM film  WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99; 

//Odev4
SELECT DISTINCT replacement_cost FROM film
SELECT COUNT (DISTINCT replacement_cost) FROM film
SELECT COUNT(*) FROM film  WHERE title LIKE 'T%' AND rating = 'G';
SELECT COUNT(DISTINCT country) FROM country WHERE country LIKE '_____';
SELECT COUNT(DISTINCT city) FROM city WHERE city ILIKE '%r';


//Odev5
SELECT title, length FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5;
SELECT title, length FROM film WHERE title LIKE '%n' ORDER BY length ASC OFFSET 5 LIMIT 5;
SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4;

//Odev6
SELECT AVG(rental_rate)  FROM film ;
SELECT COUNT(*) FROM film WHERE title LIKE 'C%';
SELECT MAX(length)  FROM film  WHERE rental_rate = 0.99;
SELECT COUNT(DISTINCT replacement_cost)  FROM film  WHERE length > 150;

//Odev7
SELECT rating, COUNT(*) FROM film GROUP BY rating;
SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50
SELECT store_id, COUNT(*) FROM customer GROUP BY store_id;
SELECT country_id, COUNT(*) 
FROM city GROUP BY country_id ORDER BY COUNT(*) DESC LIMIT 1;

//Odev8
CREATE TABLE employee (
  id Serial Primary Key,
  name VARCHAR(50),
  birthday DATE,
  email VARCHAR(100)
);

insert into MOCK_DATA (first_name, birthday, email) values ('Darbee', '05/01/2023', 'dvian0@constantcontact.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Alanah', '07/23/2023', 'agrayer1@harvard.edu');
insert into MOCK_DATA (first_name, birthday, email) values ('Amalle', '07/11/2023', 'ajakubowski2@histats.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Ivan', '12/19/2022', 'ichipp3@upenn.edu');
insert into MOCK_DATA (first_name, birthday, email) values ('Doug', '05/21/2023', 'dodowd4@com.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Hestia', '11/12/2022', 'hfortune5@disqus.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Natka', '07/25/2023', 'nawty6@hp.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Trula', '10/28/2022', 'trushby7@deviantart.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Merry', '03/24/2023', 'mbunt8@mail.ru');
insert into MOCK_DATA (first_name, birthday, email) values ('Ruttger', '06/04/2023', 'rskehan9@symantec.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Christen', '03/28/2023', 'cgrindroda@eventbrite.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Josefa', '04/07/2023', 'jbarnewellb@seattletimes.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Enos', '01/27/2023', 'edredgec@globo.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Annissa', '02/17/2023', 'abriatd@ftc.gov');
insert into MOCK_DATA (first_name, birthday, email) values ('Valene', '12/08/2022', 'vgarcie@amazonaws.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Anna-maria', '09/25/2023', 'amoffetf@live.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Jazmin', '06/01/2023', 'jmcneachtaing@vk.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Pierrette', '11/03/2022', 'pfetherbyh@google.es');
insert into MOCK_DATA (first_name, birthday, email) values ('Brad', '05/09/2023', 'bhackingei@amazonaws.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Thaxter', '10/09/2023', 'ttettersellj@ucla.edu');
insert into MOCK_DATA (first_name, birthday, email) values ('Janka', '11/24/2022', 'jcroallk@toplist.cz');
insert into MOCK_DATA (first_name, birthday, email) values ('Joly', '10/01/2023', 'jlongl@usgs.gov');
insert into MOCK_DATA (first_name, birthday, email) values ('Yves', '09/21/2023', 'ydeknevetm@admin.ch');
insert into MOCK_DATA (first_name, birthday, email) values ('Lia', '12/06/2022', 'lschankelborgn@mit.edu');
insert into MOCK_DATA (first_name, birthday, email) values ('Christye', '04/24/2023', 'csiemianowiczo@joomla.org');
insert into MOCK_DATA (first_name, birthday, email) values ('Averil', '01/30/2023', 'astollep@123-reg.co.uk');
insert into MOCK_DATA (first_name, birthday, email) values ('Lorine', '01/19/2023', 'lgeffeq@independent.co.uk');
insert into MOCK_DATA (first_name, birthday, email) values ('Raleigh', '04/26/2023', 'rlaviesr@loc.gov');
insert into MOCK_DATA (first_name, birthday, email) values ('Bord', '07/04/2023', 'bjaggars@usnews.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Christy', '11/29/2022', 'chartigant@dagondesign.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Tammara', '05/05/2023', 'tplampeynu@elpais.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Mack', '04/03/2023', 'miskowerv@nhs.uk');
insert into MOCK_DATA (first_name, birthday, email) values ('Kristine', '10/11/2022', 'kjaggerw@dell.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Emmett', '04/23/2023', 'emaystonx@nhs.uk');
insert into MOCK_DATA (first_name, birthday, email) values ('Dionis', '08/25/2023', 'djeppenseny@about.me');
insert into MOCK_DATA (first_name, birthday, email) values ('Pearla', '11/01/2022', 'pcoramz@biblegateway.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Weidar', '08/18/2023', 'wskyner10@google.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Grantley', '03/29/2023', 'ghallward11@edublogs.org');
insert into MOCK_DATA (first_name, birthday, email) values ('Bell', '08/12/2023', 'bmanvelle12@imageshack.us');
insert into MOCK_DATA (first_name, birthday, email) values ('Allix', '07/31/2023', 'aferrick13@google.de');
insert into MOCK_DATA (first_name, birthday, email) values ('Marsiella', '08/27/2023', 'mbruna14@netlog.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Cherey', '08/03/2023', 'cclevely15@berkeley.edu');
insert into MOCK_DATA (first_name, birthday, email) values ('Anabella', '07/19/2023', 'apitchford16@delicious.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Emerson', '11/27/2022', 'ebaterip17@jalbum.net');
insert into MOCK_DATA (first_name, birthday, email) values ('Corry', '12/30/2022', 'ccrippill18@soup.io');
insert into MOCK_DATA (first_name, birthday, email) values ('Cordie', '06/15/2023', 'cmarchiso19@ted.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Byrle', '04/16/2023', 'bivashev1a@liveinternet.ru');
insert into MOCK_DATA (first_name, birthday, email) values ('Lilith', '01/13/2023', 'lstear1b@plala.or.jp');
insert into MOCK_DATA (first_name, birthday, email) values ('Scot', '10/07/2023', 'smaccarrane1c@wsj.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Lisle', '09/20/2023', 'lmughal1d@hugedomains.com');
insert into MOCK_DATA (first_name, birthday, email) values ('Berny', '09/23/2023', 'bbydaway1e@cpanel.net');

UPDATE employee
SET birthday = '1990-06-15'
WHERE name = 'Lilith';


UPDATE employee
SET email = 'johndoe@example.com'
WHERE birthday = '1950/04/10';


UPDATE employee
SET name = 'Yılmaz',
    birthday = '1983-06-12'
WHERE email = 'bbydaway1e@cpanel.net';


UPDATE employee
SET name = 'Yavuz',
    birthday = '1978-12-10',
    email = 'yavuz@mail.com'
WHERE id = 5;

DELETE FROM employee
WHERE id = '38';

DELETE FROM employee
WHERE name = 'Lilith' AND birthday = '01/13/2023';

DELETE FROM employee
WHERE email = 'bmanvelle12@imageshack.us';

DELETE FROM employee
WHERE id between(5,10)

//Odev9
Select * from city inner join country on city.country_id = country.country_id

Select payment.payment_id, customer.first_name, customer.last_name from payment inner join customer on payment.customer_id = customer.customer_id

Select rental.rental_id, customer.first_name, customer.last_name from rental inner join customer on rental.customer_id = customer.customer_id

//Odev10
Select city.city, country.country from city left join country on city.country_id = country.country_id

Select payment.payment_id, customer.first_name, customer.last_name from customer right join payment on payment.customer_id = customer.customer_id

Select rental.rental_id, customer.first_name, customer.last_name from rental full join customer on customer.customer_id = rental.customer_id

//Odev11
(select first_name from actor) union (select first_name from customer)

(select first_name from actor) intersect (select first_name from customer)

(select first_name from actor) except (select first_name from customer)

(select first_name from actor) union all (select first_name from customer)

(select first_name from actor) intersect all (select first_name from customer)

(select first_name from actor) except all (select first_name from customer)


//Odev12
Select count(*) from film where length > (Select AVG(length) from film)
Select count(*) from film where rental_rate in (Select max(rental_rate) from film)
Select * from film where rental_rate in (select min(rental_rate) from film) and replacement_cost in (select min(replacement_cost) from film)
select customer_id, count(*) sayi from payment group by customer_id order by sayi desc