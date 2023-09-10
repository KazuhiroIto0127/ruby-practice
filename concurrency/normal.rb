require 'benchmark'

def fib(n)
  return n if n <= 1
  fib(n - 1) + fib(n - 2)
end

Benchmark.bm do |bm|
  bm.report do
    5.times do
      fib(40)
    end
  end
end
