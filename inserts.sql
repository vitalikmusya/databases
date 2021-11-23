use films;

insert into film (name,descriptions,rating,box_office) 
	values('San Andreas',
    'When a sudden massive earthquake demolishes Hoover Dam, triggering a devastating string of quakes from L.A. to San Francisco by the entire length of the San Andreas fault,
		Ray will embark on a frenzied mission to rescue not only his estranged wife, Emma but also his trapped eighteen-year-old daughter, Blake',
    '6,1 according to IMDb', 
    '$155.2 million');

insert into actor 
	(first_name,second_name)
    values
		('Dwayne ', 'Johnson'),
		('Carla',' Gugino'),
        ('Alexandra','Daddario'),
        ('Hugo','Johnstone-Burt'),
        ('Art','Parkinson');
        
insert into comments
	(rating,text)
    values 
		(5,'Very good and interesting film');
        
insert into facts
	(text)
    values
		('On May 29, 2015 at 10:23 PM, the same day the film opened, a magnitude 3.8 earthquake was reported near Indio, California. ');

