def hello
  p 'hello'
end

hello

i = 0

str = "test"

p i,str

class Person
          def initialize(age, name)
      @age = age
      @name = name
    end

    def hello
      p "my name is #{@name}. age is #{@age}"
    end
end


p = Person.new(10, '吉田')
p.hello
