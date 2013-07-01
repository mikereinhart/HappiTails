# require_relative 'client'

class Shelter
  def initialize(animals, clients)
    @animals = animals
    @clients = clients
  end

  def name
    'HappiTails'
  end

  def animals
    @animals
  end

  def clients
    @clients
  end

  def accept_animal(animal)
    @animals << animal

    # add logic showing that the animal already belonged to a client
    # that animal has to be removed from the client 
  end

  def remove_animal(index)
    @animals.delete_at(index)
  end

  def accept_client(client)
    @clients << client
  end
end
