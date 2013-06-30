class Client

  def initialize(a_name, an_age, a_gender, animals, kids)
    @name = a_name
    @age = an_age
    @gender = a_gender
    @animals = animals
    @kids = kids
  end

  def name
    @name
  end

  def age
    @age
  end

  def gender
    @gender
  end

  def animals
    @animals
  end

  def kids
    @kids
  end

  def remove_animal(index)
    @animals.delete_at(index)
  end

  def add_animal(animal)
    @animals << animal
  end


end