class Landmark
  attr_accessor :name, :url, :hours_of_operation, :about
  
  @@all = []
  
  def initialize(name, url)
    @name = name
    @url = url 
    @@all << self
  end

  def self.all
      @@all
  end
  
end