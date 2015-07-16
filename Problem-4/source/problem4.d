import std.traits : isIntegral;
import std.stdio : write;

bool isPalindrome(N, N base = 10)(N n) if (isIntegral!N && base > 1)
{
    if (n < 0)
        return false;
    N rev, copy = n;
    do
        rev = rev * base + n % base;
    while (n /= base);
    return rev == copy;
}

void solve()
{
    uint temp, max;
    foreach_reverse (i; 100 .. 1000)
    {
        if (i * i <= max)
            break;
        if (i % 10)
            foreach_reverse (j; 100 .. i + 1)
            {
                if ((temp = i * j) <= max)
                    break;
                if (temp % 10 && temp.isPalindrome)
                    max = temp;
            }
    }
    max.write;
}
