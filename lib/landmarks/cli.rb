class Cli
    def welcome
      puts "welcome to landmarks"
      puts " "
      puts "-----------"
      puts ' '
      Scraper.scrape_landmarks
    
    #loops through list of landmarks unitl user exits
      menu
      print_landmarks
      end

     def menu
  
     end

      def print_landmarks
      landmark.all.each.with_index(1) do |landmark, index|
      
      puts "#{index}. #{landmark.name}"
  
       end
    end 
end