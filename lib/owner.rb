class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all.push(self)
    @cats = []
    @dogs = []
  end
  def say_species
    return "I am a #{@species}."
  end
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all = []
  end
  
  #Associations

  def cats
    @cats
  end
  def dogs
    @dogs
  end
  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end
  def walk_dogs
    @dogs.collect do |dog|
      dog.mood = "happy"
    end
  end
  def feed_cats
    @cats.collect do |cat|
      cat.mood = "happy"
    end
  end
  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      @cats.delete(cat)
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
      @dogs.delete(dog)
    end
  end
  def list_pets
    return "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
end