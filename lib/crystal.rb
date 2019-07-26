 class Crystal
  attr_accessor :name, :desc
  
  @@all = []

	def initialize(name,desc)
	  @name = name 
	  @desc = desc
	  @@all << self 
	end 

	def self.all
	 @@all 
	end 
   
end 