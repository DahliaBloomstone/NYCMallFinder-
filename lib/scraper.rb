class Scraper
    def self.mall_info
        doc = Nokogiri::HTML(URI.open("https://www.tripadvisor.com/Attractions-g60763-Activities-c26-t143-New_York_City_New_York.html"))
        
        doc.css(" ").map do |section|
            mall_address = section.css(" ").text
            mall_name = section.css(" ").children.text
            mall_num_of_reviews = "#{reviews[1]} people reviewed this NYC mall #{reviews[0]} reviews!"
            reviews = section.css(" ").text.split(/[()]/)
            Mall.new(mall_name, mall_address, mall_num_of_reviews)
        end 
        
    end 
end