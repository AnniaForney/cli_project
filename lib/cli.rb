class CLI
  
  def run 
    Scraper.scrape_meanings 
    welcome 
    user_input
    menu 
    exit_page
  end 

  
  def welcome 
    Crystal.all.each do |crystal|
      puts crystal.name
    end 
  end 
  
  def greetings 
    puts "Hello customer!" 
    puts "Here are a list of healing crystals and their meanings:"
  end 
  
  def crystal_names
    Crystal.all.each do |crystal|
    puts crystal.name
    end 
  end 
  
  def user_input 
    name = gets.chomp 
    Crystal.all.find {|crystal| crystal.name == name}
  end 
  user_input
end 

  def menu 
    puts "Hello customer!" 
    puts "Would you like to see our list of crystals? Y or N?"
    if Y  == "Would you like to see our list of crystals?"  
       Y  != Crystal.all 
     elsif N == "Would you like to see our list of crystals?"  
           N  != exit 
     elsif menu = exit!
      puts "Thank you for shopping with us! We hope you enjoy your purchase."
      return exit! || exit 
  end 
  
  def exit_page
    puts "Thank you for shopping with us! We hope you enjoy your purchase."
    return exit! || exit 
  end 

  
end

