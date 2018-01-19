:-dynamic(prog4Courses/4).



load_course:- consult('prog4Courses.pl'), tell('prog4Courses.pl.bak'), listing(course), told.


list_course :- listing(course).


add_course(Name,Location,Time,Instructor) :- assert(course(Name,Location,Time,Instructor)),write(' added.').

delete_course(Name,Location,Time,Instructor) :- retract(course(Name,Location,Time,Instructor)), write(' deleted.').

save_course:- tell('prog4Courses.pl'), listing(course), told.


cannot_meet(Time, Instructor1, Instructor2):-course(_,_,Time,instructor(Instructor1)),course(_,_,Time,instructor(Instructor2)).

schedule_conflict(Course1, Course2) :- course(Course1,_,Time,_),course(Course2,_,Time,_).

is_teaching(LastName,Period):-	course(_,_,Period,instructor(LastName)).

is_instructor(LastName,Course):- course(Course,_,_,instructor(LastName)).

is_busy(LastName, Days, Hour, Location):- course(_,Location,time(Days,Hour),instructor(LastName)).
