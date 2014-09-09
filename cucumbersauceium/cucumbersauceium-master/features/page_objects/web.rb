class CoBrand
  def initialize(site)
    TestHelper.goto(site)
  end

  def validate_bay_area_sports
    $driver.find_element(:css, "#powered-by-light").text.should == "powered by Bleacher Report"
    $driver.find_element(:css, "#sitecopyright")
  end
end