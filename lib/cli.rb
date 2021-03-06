require 'readline'
class CLI
  
  def run 
    Scraper.scrape_meanings 
    menu 
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
  
  def get_crystal_by_name  
    
    #name = gets.chomp
    crystal_list = []
    Crystal.all.each do |crystal|
      crystal_list << crystal.name
    end 
    
    comp = proc { |s| crystal_list.grep(/^#{Regexp.escape(s)}/) }
    Readline.completion_append_character = ";"
    Readline.completion_proc = comp
    name = Readline.readline('> ', true)
    name.strip!
    selected_crystal = Crystal.all.find {|crystal| crystal.name == name} 
    puts selected_crystal.desc
    #binding.pry
  end 

 def menu 
    puts "Hello customer!" 
    loop do 
    puts "Would you like to see our list of crystals? Y or N?"
    input = gets.chomp 
    if input == 'Y' 
      crystal_names
      puts "Enter a letter in the terminal. Hit the tab button twice after typing that letter. Proceed to enter the full name of the crystal you're interested in learning about then hit both the space and enter button or type a crystal name you already see then hit the space and enter button to learn more."
      get_crystal_by_name
     elsif input =='N' 
          exit_page
     else 
       puts "Error message: put valid input."
       menu 
        end 
      end 
  end 
  
  def exit_page
    puts "Thank you for shopping with us! We hope you enjoy your purchase."
    exit 
  end 
  
end
