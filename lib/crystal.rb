 class Crystal
  attr_accessor :name, :meaning, :term_description, :element, :zodaic_sign
  
  @@all = []

	def initialize(name)
	  @name = name 
	  @meaning = meaning 
	  @element = element
	  @term_description = term_description
	  @zodaic_sign = zodaic_sign
	  @@all << self 
	end 

	def self.all
	 @@all 
	end 
   
end 