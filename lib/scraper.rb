class Scraper
    
    #INFO: 
    def self.mall_info
    doc = Nokogiri::HTML(URI.open("https://www.tripadvisor.com/Attractions-g60763-Activities-c26-t143-New_York_City_New_York.html"))
        
    doc.css("listing_details").map do |section| 
          
    #<div class = listing_details
      
    #DESCRIPTION:      
    mall_description = section.css(" ").text
            
            #<div onclick="(ta.prwidgets.getjs(this,'handlers')).trackAndOpenSURUrl(event, 'Attractions_List_Click', '/ShowUserReviews-g60763-d11669135-r589428678-Westfield_World_Trade_Center-New_York_City_New_York.html', '0', 'Snippet', 'review_snippet_click', true);">“<span class="extra-snippet">The luxury of this shopping center is marvelous, a futuristic shopping</span><span class="has-left has-right"> with a brand new <span class="highlighted">subway</span> station out of the</span><span class="extra-snippet"> standard from the classic NY subway, it has TVS!!! Better place to shop in NY!</span>”</div>
    
#MALL NAME:
   mall_name = section.css(" ").children.text 
            #<div class="listing_title  title_with_snippets "
            
  #MALL RANKING:
 mall_ranking = section.css("class="popRanking wrap").text.split(/[()]/)
            
 #"class="popRanking wrap"
          
  
  #END:
 Mall.new(mall_name, mall_address, mall_ranking)
end 
        
end 
end