class Cli
  def run 
      self.greeting
      Scraper.scrape_landmarks
      loop do 
        user_input = main_menu
        if user_input == "exit" || user_input.include?("n")
          return 
       else 
        self.list_landmark
        self.choose_landmark
        
          
      end
  end 

  def greeting
    
    puts " welcome to landmarks"
    
    end
    
    
    def main_menu
      puts "make a selection"
      input = gets.strip.downcase     
      return input 
    end 
    
    
  def list_movies
    
    puts "in theater now"
    Landmark.all.each.with_index{ |m, i| puts "#{i + 1 }. #{m.name}" }
    
  end
    
    def choose_landmark
    puts "choose a landmark"
    index = gets.strip.to_i - 1
    landmark = Landmark.all[index]
    Scraper.scraped_details
      
    end
    
end