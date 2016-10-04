require('minitest/autorun')
require('minitest/rg')
require_relative('../car')

class Test_Car < MiniTest::Test

  ECO_ACCELERATE_INCREASE = 10
  PERFORMANCE_ACCELERATE_INCREASE = 30
  ECO_FUEL_DECREASE = 5
  PERFORMANCE_FUEL_DECREASE = 10

  def setup
    @performance = Engine.new(PERFORMANCE_ACCELERATE_INCREASE, PERFORMANCE_FUEL_DECREASE)
    @eco = Engine.new(ECO_ACCELERATE_INCREASE, ECO_FUEL_DECREASE)
    @car1 = Car.new("Honda", "Civic", @eco)
    @car2 = Car.new("BMW", "M3", @performance)
  end

  def test_get_car_make
    assert_equal("Honda", @car1.make)
  end

  def test_get_car_model
    assert_equal("Civic", @car1.model)
  end

  def test_get_car_starting_fuel_level
    assert_equal(Car::STARTING_FUEL, @car1.fuel_level)
  end

  def test_get_car_initial_speed
    assert_equal(0, @car1.speed)
  end

  def test_get_car_acceleration
    expected_speed = Car::ECO_ACCELERATE_INCREASE
    expected_fuel = Car::STARTING_FUEL - Car::ECO_FUEL_DECREASE
    @car1.accelerate()
    assert_equal(expected_speed, @car1.speed)
    assert_equal(expected_fuel, @car1.fuel_level)
  end

  def test_get_max_acceleration
    max_speed = Car::MAXIMUM_SPEED
    20.times do
      @car1.accelerate()
    end
    assert_equal(max_speed, @car1.speed)
  end

  def test_break_until_cannot
    min_speed = 0
    assert_equal(min_speed, @car1.brake)
  end

end