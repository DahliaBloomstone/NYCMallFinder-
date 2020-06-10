class Mall
  @@malls = []
   attr_reader :name, :address, :num_of_reviews  
   def initialize(name, address, num_of_reviews)
      @name = name 
      @address = address
      @num_of_reviews = num_of_reviews
      @@malls << self 
  end  

  def self.malls
    @@malls 
  end 

  def self.display_mall_names
    Scraper.mall_info.map{|mall|mall.name}
  end 

end 