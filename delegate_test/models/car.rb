# 委譲（delegate）
# 良いとされる例
# Forwardableモジュール
# この例はだいぶ無理やりなので適切な例ではない。本来は、一部のメソッドを使う場合に良いと思う。
require 'forwardable'

class Car
  def initialize(tire_number=4, color="red", name="車", price=100)
    @tire_number = tire_number
    @color = color
    @name = name
    @price = price
  end

  def self.execute
    car = self.new
    car.message
    car.move
  end

  def message
    p "タイヤが#{@tire_number}本の#{@color}の#{@name}だよ"
    p "#{sell_price}円で売ってるよ"
  end

  def move
    p "#{@name}が動いたよ"
  end

  def sell_price
    @price * 1.1
  end
end

class SuperCar
  extend Forwardable

  def_delegators :@car, :message, :move, :sell_price

  def initialize
    @car = Car.new(6, "black", "スーパー車", 200)
  end

  def self.execute
    super_car = self.new
    super_car.message
    super_car.move
  end
end
