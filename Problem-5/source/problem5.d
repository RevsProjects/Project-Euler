import std.math : abs;
import std.range : iota;
import std.algorithm.iteration : reduce;
import std.stdio : write;

auto gcd(N...)(N n) if (__traits(isIntegral, N) && N.length == 2)
{
    auto a = n[0], b = n[1], temp = b;
    while (a && b)
    {
        temp = a;
        a = b % a;
        b = temp;
    }
    return a ? a : b;
}

auto lcm(N...)(N n) if (__traits(isIntegral, N) && N.length == 2)
{
    return n[0].abs / n.gcd * n[1].abs;
}

void solve()
{
    iota(1, 21).reduce!lcm.write;
}
