require 'benchmark'
require 'parallel'

def fib(n)
  return n if n <= 1
  fib(n - 1) + fib(n - 2)
end

Benchmark.bm do |bm|
  bm.report do
    Parallel.map([40, 40, 40, 40, 40], in_process: 5) { |num| fib(num) }
  end
end
