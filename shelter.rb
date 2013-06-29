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

  def accept_client(client)
    @clients << client
    # 
  end
end

# * A client will want to come in and give up 
# their animal for adoption

# * A client will want to list the clients
