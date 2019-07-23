class CLI
  
  def run 
    Scraper.scrape_meanings 
    welcome 
    crystal_meanings 
    exit_page 
  end 

  
  def welcome 
    Crystal.all.each do |crystal|
      puts crystal.name
    end
    puts "Hello customer!" 
    puts "Here are a list of healing crystals and their meanings:"
    puts "Click on an image of a crystal to see its meaning"
    puts "Once you click on an image of a crystal you will see its meaning, element(s), and zodaic sign description."
  end 
  
  def crystal_meanings 
    
  end 
  
  
  def exit_page 
    puts "Thank you for shopping with us! We hope you enjoy your purchase."
  end 
  
  
end 