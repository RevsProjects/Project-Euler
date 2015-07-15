import std.algorithm : reduce, max;
import std.stdio : write;

auto primeFactors(N)(N n) if (__traits(isIntegral, N))
{
    static struct R
    {
        this(N n)
        {
            _n = n;
            popFront;
        }

        @property empty() { return _n < 2; }
        @property front() { return _f; }
        
        @property popFront()
        {
            do
                if (_n % _f == 0)
                {
                    _n /= _f;
                    return;
                }
            while (++_f < _n);
        }

    private:
        N _n, _f = 2;
    }
    return R(n);
}

void solve()
{
    600851475143.primeFactors.reduce!max.write;
}
