
datatype number = i of int | r of real;

fun plus (i a) (i b) = (r (real(a)+real(b)))
  | plus (i a) (r b) = (r (real(a) + b))
  | plus (r a) (i b) = (r (a+real(b)))
  | plus (r a) (r b) = (r (a+b));

datatype 'a btree = empty | node of 'a btree * 'a * 'a btree;

