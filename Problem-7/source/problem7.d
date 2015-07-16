import std.traits : isIntegral;
import std.range : drop;
import std.stdio : write;

bool isPrime(N)(N n) if (isIntegral!N)
{
    if (n < 2)
        return false;
    N i = 2;
    while (i * i <= n)
        if (n % i++ == 0)
            return false;
    return true;
}

auto primes()
{
    static struct R
    {
        enum bool empty = false;
        @property front() { return _p; }
        
        @property popFront()
        {
            while (!isPrime(++_p)){}
        }
        
    private:
        ulong _p = 2;
    }
    return R();
}

void main()
{
    primes.drop(10000).front.write;
}
