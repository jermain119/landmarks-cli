class Cli
    def welcome
      puts "welcome to landmarks"
      puts " "
      puts "-----------"
      puts ' '
      Scraper.scrape_landmarks
       print_landmarks
      puts " "
      puts " select the number of landmark to see further deatails or type 'exit' to exit"  
      input = gets.strip.downcase
      while input != 'exit' do 
        landmark = Landmark.all[input.to_i - 1]
      end
  end
    # def menu
  
    # end

      def print_landmarks
      Landmark.all.each.with_index(1) do |landmark, index|
      
      puts "#{index}. #{landmark.name}"
  
       end
    end 
end