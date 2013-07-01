class Client

  def initialize(a_name, an_age, a_gender, pets, kids)
    @name = a_name
    @age = an_age
    @gender = a_gender
    @pets = pets
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

  def pets
    @pets
  end

  def kids
    @kids
  end

  def remove_pet(index)
    @pets.delete_at(index)
  end

  def add_pet(animal)
    @pets << animal
  end


end