use irctc;
/*Select p.pnr,p.name,p.gender,p.age,p.userid from passengers as p where userid = '10' order by p.pnr;/*tickets booked by this user id */
/*1*/Select t.pnr,p.name,p.age,t.trainno,t.arrivaldatetime as "Arrival Date and Time", t.departuredatetime as "Departure Date And Time"
	from tickets as t,passengers as p where t.pnr = p.pnr and userid = 11;/* */
 
/*2*/Select ti.pnr,ti.fare,ti.trainno,ti.arrivaldatetime,ti.departuredatetime,t.totalseats,t.source,t.destination
	from tickets as ti ,trains as t where ti.trainno = t.trainno and t.departuredateandtime 
	between '6992-01-19 19:16:46' and '9276-10-20 07:53:08' order by pnr;/* trains available between two dates*/

/*3*/Select t.source,s.stationname,count(*) as "NoOfTrainsLeaving" 
	from trains as t , stations as s where t.source = s.stationcode group by source;/*no of trains leaving a source station*/
    
/*4*/Select t.pnr,p.name,t.fare from tickets as t,passengers as p where t.pnr = p.pnr order by t.pnr; /*passengers fare*/

/*5*/Select p.pnr,p.name,p.age,p.gender
	from tickets as t,passengers as p 
    where t.pnr = p.pnr and t.trainno = '11084' order by t.pnr; /*list of passengers boarding a train*/
    
/*6*/Select p.userid,sum(fare),count(p.pnr) as 'tickets booked' 
	from tickets as t,passengers as p where t.pnr = p.pnr group by p.userid;/*no of tickets booked by a user and total fare*/

/*7*/create view pass as select name, pnr from passengers;

/*8*/update pass set name = 'arvind' where pnr = '36769';

/*9*/delete from pass where pnr = '36769';

/*10*/select * from trains where source = 2;/*list of trains leaving same station*/

/*11*/select p.pnr,p.name,p.age,t.fare,t.fare *0.9 as 'discounted price' from passengers as p join tickets as t where p.pnr=t.pnr and p.age>60;

