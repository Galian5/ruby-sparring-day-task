class Zoo

  attr_accessor :animals

  def initialize
    @animals = []
  end


  def add_animals(animals)
    @animals = animals
  end


  def inventory
    animals.sort_by!(&:name)

    case animals.size
      when 0
        "Oh no! There are no animals in our ZOO!"
      when 1
        "There is only one animal in our ZOO! #{animals.first}. "\
      "Hope you will enjoy your visit!"
      when (2..4)
        "For now there are only #{format_animals_quantity_and_species(animals)} here! "\
      "#{introducer(animals)}Hope you will enjoy your visit!"
      when (5..9)
        "There are #{format_animals_quantity_and_species(animals)} in our ZOO! "\
      "#{introducer(animals)}Hope you will enjoy your visit!"
      else
        "Yayy! We have #{animals.size} residents now! #{introducer(animals)}"\
      "You need to visit us as soon as possible!"
    end

  end
end
