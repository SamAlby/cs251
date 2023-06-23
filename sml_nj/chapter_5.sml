fun cube x = x*x;

fun cuber (r:real) = r*r;

fun min3 (x,y,z) = if (x<y andalso x<z) then x
		   else
		       if (y<x andalso y<z) then y
		       else
			   if (z<x andalso z<y) then z
			   else x;

fun cycle1 a = tl a @ List.take(a,1);

fun sort3 (x:real,y:real,z:real) = if (x>=y andalso x>=z)
				   then if (z>=y)
					then [y,z,x]
					else [z,y,x]
				   else
				       if (y>=x andalso y>=z)
				       then if(z>=x)
					   then [x,z,y]
					       else [z,x,y]
				       else
					   if (z>=x andalso z>=y)
					   then if (x>=y)
						then [y,x,z]
						else [x,y,z]
					   else [x,y,z];

fun del3 a = if List.length a > 3
	     then
		 List.take(a,2) @ List.drop(a,3)
	     else
		 a; 

fun sqsum a =
    if(a>0)
    then
	(a*a) + sqsum(a-1)
    else
	a;

fun cyclen (a,n) =
    if(n>0)
    then
	cyclen(cycle1(a),n-1) 
    else
	a;

fun maxhelper (L, big) =
    if(big > hd L)
    then
	if(List.length(L) = 1)
	then
	    big
	else
	    maxhelper(tl L, big)
    else
	if(List.length(L) = 1)
	then
	    hd L
	else
	    maxhelper(tl L, hd L);
    
fun max a = maxhelper(tl a, hd a)
