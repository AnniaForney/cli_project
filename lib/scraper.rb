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
     #binding.pry
    end
    
    
  
     
  end 
  
  def self.scrape_all_meanings 
    
  end 
  
  def self.scrape_product_category 
  end 
  
  def self.scrape_all_product_category
  end 
  
  
  
end 