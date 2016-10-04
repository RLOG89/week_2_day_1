require('minitest/autorun')
require('minitest/rg')
require_relative('../engine')
require_relative('../car')

class Test_Car < MiniTest::Test

  def setup
      @performance = Engine.new
      @eco = Engine.new
  end

  @engine_performance = engine.new()
  @engine_eco = engine.new()


end