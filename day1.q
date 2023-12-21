/ Lists, Dict and Table:

/ 
All data structures in q are ultimately built from lists: 
All data structures in q are ultimately built from lists: 
a dictionary is a pair of lists; 
a table is a special dictionary; 
a keyed table is a pair of tables. 
Thus it is important to have a thorough grounding in lists.
\
/ a dictionary is a pair of lists; 
l1: 10 20 30
l2: ((10 20);11 20)
type l2 / 0h -mixed list
type l1 / 7h 
dict:(`a`b)!((10;20);(11;22));
type dict //99h
type key dict /11h
type value dict /0h
value dict / (10 20;11 22)
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


a:((1; 2; 3); (4; 5))
a [0;1]  / returns 2.
type a  /0h

a dictionary is a pair of lists; / 99h
dict1:1001 1002 1003!(`Arthur`Dent; `Zaphod`Beeblebrox; `Ford`Prefect)
type dict1 / 99h
key dict1 / 1001 1002 1003
value dict1 /(`Arthur`Dent;`Zaphod`Beeblebrox;`Ford`Prefect)
type value dict1 /0h mixed list
type first value dict1 /11h symbol list
type first key dict1 /-7h long =7

// another way of defining dictionary.
q:(
	(`hostname	;	`);
	(`username	;	`);
	(`debug		;	1b)
  )
  q
  (`hostname`;`username`;(`debug;1b))
  type q /0h 
  flip q
  (`hostname`username`debug;(`;`;1b))
args:(!) . flip (
	(`hostname	;	`);
	(`username	;	`);
	(`debug		;	1b)
  )

type args //99h 

/define random table, keyed table vs dict
t:()
/ When you know that the keys are unique you can apply the `u# attribute to the keys.
/ 
`x!42
x
value x

q)L:10 20 30
q)d:0 1 2!10 20 30
type L


type d

1+1

/ explicit association between a key list and value list 
a table is a special dictionary;
a keyed table is a pair of table


list_of_join:1 2 , 3, 5 6
type list_of_join  (7h )


---