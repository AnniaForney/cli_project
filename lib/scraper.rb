require 'pry' 
class Scraper 
  
  def self.open_page 
    Nokogiri::HTML open(("https://crystalearthspirit.com/pages/crystal-meanings"))
  end 
  
  
  def self.scrape_meanings
    page = self.open_page
    crystals = page.css(".formcontainC")
    crystals.each do |crys| 
    name = crys.css(".left").text.strip
    crystal = Crystal.new(name) 
    crystal.meaning = crys.css("center").text.strip 
    end 
  end 
  
  def self.crystal_names
    crystal_names = crystal_names.css(".formcontainC").css(".left").css(".center").map {|crystal| crystal_names}
  end 
  
  
end 