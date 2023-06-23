 
fun less (e,[]) = []
  | less (e,L) = if e > hd L then hd L :: less(e, tl L)
		 else
		     less(e,tl L);
 
fun repeats (L)=
    if List.length(L) < 2
    then
	false
    else
	if hd L = List.nth(L,1)
		then
		    true
		else
		    repeats(tl L);

fun eval (xs,x) =
    let
	fun eval'([],x,acc) = acc
	  | eval' (n::ns,x,acc) = eval'(ns,x,n+x*acc)
    in
	eval'(List.rev(xs),x,0.0)
    end;

fun isMember (e,L) = if List.length(L) > 0
		     then if(e = hd L)
			 then
			     true
			 else
			     isMember(e,tl L)
		     else
			 false;
	
fun isMemberSet (e,[]) = false
  | isMemberSet (e,L)  = isMember(e,L);

fun union([],[]) = []
  | union (a,[]) = a
  | union ([],b) = b
  | union (a,b) =
    let
	fun delRepeat(L) =
	    let
		val e = hd L
	    in
		if List.length(L) > 1 then
		    if e = List.nth(L,1)then
			List.drop(L,1)
		    else hd L::delRepeat(tl L)
		else L
	    end
    in
	if isMemberSet(hd a,b)then
	    delRepeat(union(tl a,b))
	else delRepeat(union(tl a,List.take(a,1)@b))
    end;


fun intersect(nil,nil) = nil
  | intersect (a,nil) = a
  | intersect (nil,b) = b
  | intersect (a,b) =
    let
	fun delRepeat(L) =
	    let
		val e = hd L
	    in
		if List.length(L) > 1 then
		    if e = List.nth(L,1)then
			List.drop(L,1)
		    else hd L::delRepeat(tl L)
		else L
	    end
    in
	if isMemberSet(hd a,b)then
	    delRepeat(hd b::intersect(tl a,tl b))
	else delRepeat(intersect(tl a,tl b))
    end;
