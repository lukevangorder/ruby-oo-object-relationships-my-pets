class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all.push(self)
    self.owner.cats.push(self)
  end
  def self.all
    @@all
  end
  
  #Associations
  
end