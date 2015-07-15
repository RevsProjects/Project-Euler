import std.range : iota, chain;
import std.algorithm.iteration : filter, sum;
import std.stdio : write;

void main()
{
    iota(3, 1000, 3).chain(iota(5, 1000, 5).filter!"a % 3").sum.write;
}
