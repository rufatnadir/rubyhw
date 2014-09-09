class Mobile
  def initialize
    validate_number_of_buttons(2)
  end

  def validate_number_of_buttons(amount) 
    buttons = $driver.find_elements(:tag_name, 'button')
    buttons.length.should == amount
  end

  def self.add_teams(teams)
    alert = $driver.switch_to.alert
    alert.dismiss
    teams = teams.raw
    puts teams
    teams.each do |team|
      puts "trying to click: #{team[0]}"
      $driver.find_element(:name, "#{team[0]}").click
      sleep 1
    end
  end
end