import std.traits : isIntegral;
import std.stdio : write;

auto sumToN(N)(N n) if (isIntegral!N)
{
    return n < 1 ? 0 : (n * (n + 1)) / 2;
}

auto sumOfSquaresToN(N)(N n) if (isIntegral!N)
{
    return n < 1 ? 0 : (n * (n + 1) * (2 * n + 1)) / 6;
}

void main()
{
    write(100.sumToN ^^ 2 - 100.sumOfSquaresToN);
}
