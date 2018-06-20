require_relative '../services/alligator'
require_relative '../services/otter'
require_relative '../services/gorilla'
require_relative '../services/penguin'
require_relative '../services/lemur'

class Zoo

  attr_accessor :animals

  def initialize
    @animals = []
  end


  def add_animals(animals)
    @animals = animals
  end

  def introduction_list
    if animals.size == 2
      animals.map(&:introduce).join(' and ') + '. '
    else
      animals.map(&:introduce).join(', ') + '. '
    end
  end



  def inventory
    animals.sort_by!(&:name)

    case animals.size
      when 0
        'Oh no! There are no animals in our ZOO!'
      when 1
        "There is only one animal in our ZOO! #{animals.first.introduce}. "\
      'Hope you will enjoy your visit!'
      when (2..4)
        if animals.map(&:class).uniq.length == 1
          "For now there are only #{animals.length} #{animals.first.class.name.downcase + 's'} here! "\
      "#{introduction_list}Hope you will enjoy your visit!"
        else
          "For now there are only #{animals.length} animals here! "\
      "#{introduction_list}Hope you will enjoy your visit!"
        end
      when (5..9)
        "There are #{animals.length} animals in our ZOO! "\
      "#{introduction_list}Hope you will enjoy your visit!"
      else
        "Yayy! We have #{animals.length} residents now! #{introduction_list}"\
      'You need to visit us as soon as possible!'
    end

  end
end
