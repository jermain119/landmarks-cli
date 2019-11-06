class Scraper
  
  def self.scrape_landmarks
  html = open("https://www.tripadvisor.com/Attractions-g187497-Activities-a_allAttractions.true-Barcelona_Catalonia.html")
        doc = Nokogiri::HTML(html)
        doc.css(".attraction_list .listing").each do |lm|
            landmark = Landmark.new
            landmark.name = lm.css('a')[1].text
            landmark.url = lm.css('a')[1].attribute("href").value
          end

end

  def self.scrape_landmark_details(landmark)
    
  end
end 
    