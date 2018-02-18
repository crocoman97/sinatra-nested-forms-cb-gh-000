class Pirate
  
  attr_accessor :name,:weight,:height
  attr_reader :all
  @@all = []
  
  def initialize(attributes)
    attributes.delete(:ships)
    attributes.each { |k,v|
      self.send("#{k}=",v)
    }
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end