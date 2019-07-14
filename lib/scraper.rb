class Scraper 
  
  def self.scrape_image 
    crystal = Crystal.new 
    crystal.name = crys.css("h1").text.strip 
    crystal.url = crys.children[1].attr("href") 
  end 
  
  def self.scrape_all_images 
  end 
  
end 