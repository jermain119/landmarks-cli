class Landmark
  attr_accessor :name, :url, :hours_of_operation, :about
  
  @@all = []
  
  def initialize  
    @@all << self
  end

  def self.all
      @@all
  end
  
end