class Scraper 
  
  def self.scrape_meanings
    crystal = Crystal.new 
    crystal.name = crys.css("h1").text.strip 
    crystal.url = crys.children[1].attr("href") 
  end 
  
  def self.scrape_all_meanings 
    
  end 
  
  def self.scrape_product_category 
  end 
  
  def self.scrape_all_product_category
  end 
  
  
  
end 