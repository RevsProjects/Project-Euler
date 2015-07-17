import std.stdio : write;

void main()
{
    size_t[ulong] mem;
    ulong n, len, max, maxn;
    foreach (i; 1 .. 10 ^^ 6)
    {
        for (n = i, len = 0; n != 1; n = n & 1 ? 3 * n + 1 : n / 2, len++)
            if (n in mem)
            {
                len += mem[n];
                break;
            }
        mem[i] = len;
        if (len > max)
        {
            max = len;
            maxn = i;
        }
    }
    maxn.write;
}
