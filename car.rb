class Car

STARTING_FUEL = 100
ACCELERATE_INCREASE = 10
FUEL_DECREASE = 5
MAXIMUM_SPEED = 180

  attr_accessor(:make, :model, :engine)
  attr_reader(:fuel_level, :speed)

  def initialize(make, model, engine)
    @make = make
    @model = model
    @fuel_level = STARTING_FUEL
    @speed = 0
    @engine = engine
  end

  def accelerate
      (@speed += ACCELERATE_INCREASE) 
      (@fuel_level -= FUEL_DECREASE) 
      if @speed > MAXIMUM_SPEED
        @speed = MAXIMUM_SPEED
    end
  end

  def brake
    if @speed >= 10 
      @speed -= ACCELERATE_INCREASE
    else
      return 0
    end
  end


end