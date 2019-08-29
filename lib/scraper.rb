require 'pry' 
class Scraper 
  
  def self.open_page 
    Nokogiri::HTML open(("https://crystalearthspirit.com/pages/crystal-meanings"))
  end 
  
  
  def self.scrape_meanings
    page = self.open_page
    crystals = page.css(".formcryst")
    crystals.each do |crys| 
    name = crys.css("a")[0].text.strip
    desc = crys.css("p").text.strip
    if (name.length !=0)
      crystal = Crystal.new(name,desc) 
    end 
  end 
  
  def self.crystal_names
    crystal_names = crystal_names.css(".formcontainC").css(".left").css(".center").map {|crystal| crystal_names}
  end 
  
  
end 