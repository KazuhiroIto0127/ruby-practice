# 継承（Inheritance）
# 基底クラスに影響を受ける。良くないとされる例
class Car
  def initialize
    @tire_number = 4
    @color = "red"
    @name = "車"
    @price = 100
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

class SuperCar < Car
  def initialize
    @tire_number = 6
    @color = "black"
    @name = "スーパー車"
    @price = 200
  end

  def sell_price
    super * 2
  end
end
