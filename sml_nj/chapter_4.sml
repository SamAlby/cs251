fun cube(x:int) = x * x;
cube(2);

fun cuber(z:real) = z * z;
cuber(4.0);

fun min3(x:int)(y:int)(z:int) = if x<y then if x<z then x else if y<z then y else z else z;
min3(7,4,9);
