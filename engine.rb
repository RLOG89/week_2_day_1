class Engine

attr_reader :type, :speed_level, :fuel_usage

  def initialize(type, speed_level, fuel_usage)
    @type = type
    @speed_level = speed_level
    @fuel_usage = fuel_usage
  end

end