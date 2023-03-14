--Query 01
/*
1.ایمیل اساتیدی که بعد از سال 1360 به دنیا امدند
*/

select email from Teacheer where birthday>('1360-01-01');


--Query 02

/*
نام هنرجویانی که درس پیانو در گروه 02 دارند را بدهد.2.
 */
 
 select sname from student where stid in(select stid from take  where  cgid='02' and courseid='p' )  ;
 
 
 --Query 03
 /*
 3.  شماره تلفن منشی هایی که تحصیلاتشون ارشد است.
 */
 select phonenumber from phonenumberem where eid in (select eid  from secratry where education='Master') ;
 
 
--Query 04
  /*
  4.نام اساتیدی که در اتاق 02 درس ویالون تدریس میکنند 
  
  */
  
  select ename from teacheer t join haveroom r on t.eid=r.teacherid where rid='r 02' and eid in 
  (select eid from coursegroup where courseid='v' ) ;
										  
--Query 05
/*
5.  مشخصات موزیک هایی کهst 01 هنرجو سرچ کرده  

*/
select * from music m join search s on s.mid=m.mid where s.stid='st 01';
										  

--Query 06
/*
6.نام استودیو هایی که هزینه‌شون کمتر از شهریه هنرجویانی است که باهاشون قرار داد بستند
 */
 
 select studioname from studio s join apointment a on s.studioid=a.studioid where stid in
 (select stid from student  where Tuition>= s.cost ); 
 
--Query 07
/*
نام و شماره تلفن اساتیدی که اساتیدی که استاد تمام هستند را بدهید.7.
*/
select ename,phonenumber from teacheer t join phonenumberem p on  t.eid=p.eid where 
dgree='Full Profossor';

--Query 08
/*
نام هنرجویانی که با استاد روزبهانی درس پیانو ندارند.8.
*/

select sname from student except (select sname from student st join Take T on T.stid=st.stid where st.stid in  
(select stid from take T join coursegroup c on c.cgid=T.cgid and c.courseid=T.courseid 
where Teacher in (select eid from Teacheer where elastname='Rozbahani')));

--Query 09
/*
نام اعضای خانواده ی منشی ها.9.
*/
select fname from familymember f join secratry s on s.eid=f.eid;

--Query 10
/*
آدرس هنرجویانی که کتاب با ایدی b01 را خریدند.
*/

select Address  from student s join book b on b.buyer=s.stid where bid='b 01';