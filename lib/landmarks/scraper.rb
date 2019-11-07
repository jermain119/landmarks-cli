class Scraper
  BASE_URL = "https://www.tripadvisor.com"
  def self.scrape_landmarks
  url = BASE_URL + "/Attractions-g187497-Activities-a_allAttractions.true-Barcelona_Catalonia.html"
  #binding.pry  
        doc = Nokogiri::HTML(open(url))
        #while loop 1o 
        
        doc.css(".attraction_list .listing").each do |lm|
            landmark = Landmark.new
            landmark.name = lm.css('a')[1].text
            landmark.url = lm.css('a')[1].attribute("href").value
        end

  end

  def self.scrape_landmark_details(landmark)
    url = BASE_URL + landmark.url
    doc = Nokogiri::HTML(open(url))
    landmark.about = doc.css("div.attractions-attraction-detail-about-card-AttractionDetailAboutCard__section--1_Efg")[1].text
    landmark.hours_of_operation = doc.css("div.attractions-attraction-detail-about-card-AttractionDetailAboutCard__section--1_Efg")[3].text
    
    #scrape the url that was passed in
  end
  
end 
    