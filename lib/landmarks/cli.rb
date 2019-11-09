class Cli
  
  def run 
      self.greeting
      Scraper.scrape_landmarks
      loop do 
      user_input = main_menu
      if user_input == "exit" || user_input.include?("n")
      return 
          
        else 
        self.list_landmarks
        self.choose_landmarks
        
        end
      end
  end 

  def greeting
    
    puts " welcome to landmarks"
    
  end
    
    
  def main_menu
      puts "would you like to see a list of landmarks ?" 
      input = gets.strip.downcase     
      return input 
  end 
        
    
  def list_landmarks
    
    puts "in theater now"
    Landmark.all.each_with_index{ |m, i| puts "#{i + 1 }. #{m.name}" }
    
  end
    
  def choose_landmarks
    puts "choose a landmark"
    
    index = gets.strip.to_i - 1 
    if index >= 0 && index <= 10 
      landmark = Landmark.all[index]
      Scraper.scrape_landmark_details(landmark)
      self.display_landamrk_info(landmark)
    else 
    puts "invalid entry"    
    end
      
  end
    
  def display_landamrk_info(landmark)
      puts "\n\n\n"
      puts landmark.name
      puts landmark.about
      puts "\n\n\n"
      
  end
end