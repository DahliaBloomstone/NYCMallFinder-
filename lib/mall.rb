class Mall
  @@malls = []
   attr_reader :name, :description, :ranking   
   def initialize(name, description, ranking)
      @name = name 
      @description = description
      @ranking = ranking
      @@malls << self 
  end  

  def self.malls
    @@malls 
  end 

  def self.display_mall_names
    Scraper.mall_info.map{|mall|mall.name}
  end 

end 