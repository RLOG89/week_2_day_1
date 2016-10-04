class Engine


attr_reader(:type, :speed_level, :fuel_usage)

  def initialize(type, acceleration, fuel_usage)
    @type = type
    @acceleration = acceleration
    @fuel_usage = fuel_usage
  end

end