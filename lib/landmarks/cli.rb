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
        Scraper.scrape_landmark_details(landmark) 
        print_landmark(landmark)
        puts "  "
        puts "would you like to see another landmark?"
        puts " if so make a selection from the number list or type 'exit' to exit "
         input = gets.strip.downcase
      end
      
      puts "good bye"
   end
    def print_landmark(landmark)
      puts "#{landmark.name}"
      puts " Hours_of_operation: #{landmark.hours_of_operation}"
      puts " About: #{landmark.about}"
    end

      def print_landmarks
      Landmark.all.each.with_index(1) do |landmark, index|
      
      puts "#{index}.#{landmark.name}"
  
       end
    end 
end