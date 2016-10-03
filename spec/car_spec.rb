require('minitest/autorun')
require('minitest/rg')
require_relative('../car')

class Test_Car < MiniTest::Test

  def setup
    @car1 = Car.new("Honda", "Civic")
    @car2 = Car.new("BMW", "M3")
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
    expected_speed = Car::ACCELERATE_INCREASE
    expected_fuel = Car::STARTING_FUEL - Car::FUEL_DECREASE
    @car1.accelerate()
    assert_equal(expected_speed, @car1.speed)
    assert_equal(expected_fuel, @car1.fuel_level)
  end

  def test_get_max_acceleration
    max_speed = Car::MAXIMUM_SPEED
    @car1.accelerate()
    assert_equal(max_speed, @car1.speed)
  end

  def test_break_until_cannot
    min_speed = 0
    assert_equal(min_speed, @car1.brake)
  end


end