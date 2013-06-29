class Client

  def initialize(a_name, an_age, a_gender, animal_list, kids)
    @name = a_name
    @age = an_age
    @gender = a_gender
    @animal_list = animal_list
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

  def list_animals
    @animal_list
  end

  def kids
    @kids
  end

end