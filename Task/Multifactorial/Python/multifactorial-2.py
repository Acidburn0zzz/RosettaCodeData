>>> def mfac2(n, m): return n if n <= (m + 1) else n * mfac2(n - m, m)

>>> for m in range(1, 6): print("%2i: %r" % (m, [mfac2(n, m) for n in range(1, 11)]))

 1: [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
 2: [1, 2, 3, 8, 15, 48, 105, 384, 945, 3840]
 3: [1, 2, 3, 4, 10, 18, 28, 80, 162, 280]
 4: [1, 2, 3, 4, 5, 12, 21, 32, 45, 120]
 5: [1, 2, 3, 4, 5, 6, 14, 24, 36, 50]
>>>