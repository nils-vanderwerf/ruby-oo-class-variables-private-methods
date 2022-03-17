class Bartender
  attr_accessor :name

  BARTENDERS = []

  def initialize(name)
    @name = name
    BARTENDERS << self
  end

  def self.all
    BARTENDERS
  end

  def intro
    "Hello, my name is #{name}!"
  end

  def make_drink
    @cocktail_ingredients = []
    choose_liquor
    choose_mixer
    choose_garnish
    join_ingredients
    return "Here us your drink. It contains #{@cocktail_ingredients.join(", ")}"
  end

  private

  def choose_liquor
    @cocktail_ingredients.push("whiskey")
  end

  def choose_mixer
    @cocktail_ingredients.push("vermouth")
  end

  def choose_garnish
    @cocktail_ingredients.push("olives")
  end

  def join_ingredients
    @cocktail_ingredients[-1] = "and #{@cocktail_ingredients[-1]}"
  end
end

ryan = Bartender.new("Ryan")
chrissie = Bartender.new("Chrissie")
randy = Bartender.new("Randy")

puts chrissie.make_drink
