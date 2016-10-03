require('minitest/autorun')
require('minitest/rg')
require_relative('../car')

class Test_Car < MiniTest::Test

  def setup
    @car = Car.new("Honda", "Civic")
  end

  def test_get_car_make
    assert_equal("Honda", @car.make)
  end

  def test_get_car_model
    assert_equal("Civic", @car.model)
  end

  def test_get_car_fuel_level
    assert_equal(Car::STARTING_FUEL, @car.fuel_level)
  end

  def test_get_car_speed
    assert_equal(0, @car.speed)
  end

  end