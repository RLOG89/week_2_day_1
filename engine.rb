class Engine

attr_reader :engine

  def initialize(engine)
    @engine = engine
  end

  def speed(accelerate)
    if engine = "performance"
     return accelerate_perf
   else 
    return accelerate
  end

end