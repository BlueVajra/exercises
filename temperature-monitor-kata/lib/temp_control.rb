class TempControl
  def initialize
    @file = File.new(File.absolute_path("weather_data.txt"), "r")
  end
  def readfile
    IO.binread(@file)
  end
end