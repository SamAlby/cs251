fun ordlist a = map (fn x => ord x) a;

fun squarelist a = map (fn x => x*x) a;

fun multpairs a = map (fn (x,y) => x*y) a;

fun bor a = foldl(op =)true a;

fun dupList L = foldr(fn (a,b) => a::a::b)nil L;

fun member (e,L) = foldl(fn (x,y) => if x=e orelse y then true else false)false L;

fun eval L x = foldr(fn (a,b) => a+b*x)(0.0) L;
