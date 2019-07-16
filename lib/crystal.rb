 class Crystal
  attr_accessor :name, :meaning, :key_words, :chakras, :element, :zodaic_sign
  
  @@all = []

	def initialize(name)
	  @name = name 
	  #@meaning = meaning 
	  #@key_words = key_words
	  #@chakras = chakras
	  #@element = element
	  #@zodaic_sign = zodaic_sign
	  @@all << self 
	end 

	def self.all
	 @@all 
	end 
   
end 