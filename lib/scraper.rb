require 'pry' 
class Scraper 
  
  def self.open_page 
    Nokogiri::HTML open(("https://www.feelcrystals.com.au/crystal-meanings/"))
  end 
  
  
  def self.scrape_meanings
    page = self.open_page
    crystals = page.css(".product-category")
    crystals.each do |crystal|
      name = crystal.css(".collection-wrapper h3").text
      ##continue to use the css method on each 'crystal' as we iterate to pull the desired values from the html
      Crystal.new(name)
      crystal.name = crystal.css("h3").text.strip
      crystal.meanings = crystal.css("h1").text.strip
     binding.pry
    end
  
  def self.crystal_names
    crystal_names.css(".product-category").css(".term-description").collection-wrapper.map 
    binding.pry 
  end 
  
end 