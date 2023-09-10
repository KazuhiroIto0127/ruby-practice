require 'benchmark'
require 'parallel'

class FibonacciCalculator
  def self.fib(n)
    return n if n <= 1
    fib(n - 1) + fib(n - 2)
  end
end

Benchmark.bm do |bm|
  bm.report do
    Parallel.map([40, 40, 40, 40, 40], in_ractors: 5, ractor: [FibonacciCalculator, :fib])
  end
end
