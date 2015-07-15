import std.range : recurrence, stride;
import std.stdio : write;

void solve()
{
    ulong sum;
    foreach (n; recurrence!"a[n - 1] + a[n - 2]"(2, 3).stride(3))
    {
        if (n  > 4E6)
            break;
        sum += n;
    }
    sum.write;
}
