require 'pry' 
class Scraper 
  
  def self.open_page 
    Nokogiri::HTML open((https://crystalearthspirit.com/pages/crystal-meanings))
  end 
  
  
  def self.scrape_meanings
    page = self.open_page
    crystals = page.css(".product-category")
    crystals.each do |crys| 
    name = crys.css(".collection-wrapper h3").text.strip
    crystal = Crystal.new(name) 
    crystal.meaning = crys.css("h1").text.strip 
    end 
  end 
  
  def self.crystal_names
    crystal_names = crystal_names.css(".product-category").css(".term-description").css(".collection-wrapper").map {|crystal| crystal_names}
  end 
  
  
end 