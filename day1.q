Lists, Dict and Table:

All data structures in q are ultimately built from lists: 

a dictionary is a pair of lists; 
dict:(`a`b)!((10;20);(11;22))
type dict //99h

a table is a special dictionary; // meaning with no keys [] .
t1:(c1:12 20 ;d1:100 120)   // DO NOT miss adding the square brackets
type t1 /0h mixed list
t1 /(12 20;100 120)
t1
t1:([]c1:12 20 ;d1:100 120) 
type t1 /98h
----
a keyed table is a pair of tables. 
t1:([sym:`a`b]c1:12 20 ;d1:100 120)
type t1 // 99h : dictionary!!
type key t1 /98h
type value t1 / 98h

Thus it is important to have a thorough grounding in lists.

type key dict //11h list of  symbol . 11=symbol.   

l: (12 13 14;11;12)
type l / 0h 
l: 12 13 14
type l  /7h 7=long. 
first l
type first l  /-7h

