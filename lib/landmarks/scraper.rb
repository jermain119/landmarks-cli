class Scraper
  
  BASE_URL = "https://www.tripadvisor.com"
  def self.scrape_landmarks
  url = BASE_URL + "/Attractions-g187497-Activities-a_allAttractions.true-Barcelona_Catalonia.html"
 
  doc = Nokogiri::HTML(open(url))
     
        
    doc.css(".attraction_list .listing")[0..10].each do |lm|
    
      landmark = Landmark.new(name, url)
      landmark.name = lm.css('a')[1].text
      landmark.url = lm.css('a')[1].attribute("href").value
    end
  
  end

  def self.scrape_landmark_details(landmark)
    url = BASE_URL + landmark.url
    doc = Nokogiri::HTML(open(url))
    scraped_details = doc.css("div.attractions-attraction-detail-about-card-AttractionDetailAboutCard__section--1_Efg")[1]
    landmark.about = scraped_details
    # landmark.hours_of_operation = doc.css("div.attractions-attraction-detail-about-card-AttractionDetailAboutCard__section--1_Efg")[3].text
    #scrape the url that was passed in
    
    if scraped_details
    landmark.about = scraped_details.text 
    else
      landmark.about = "Sorry, no details found"
    end
    
  end

end 
    