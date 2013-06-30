require_relative 'shelter'
require_relative 'animal'
require_relative 'client'

class ShelterSpec
  describe Shelter do 
    before do 
      @a_name = 'animal name'
      @a_breed = 'french poodle'
      @an_age = 3
      @a_gender = 'male'
      @favorite_toys = ['bone', 'tennis ball']
      @animal1 = Animal.new(@a_name, @a_breed, @an_age, @a_gender, @favorite_toys)

      @client1 = Client.new('Mike', 24, 'male', ['Buck', 'Misty'], ['liz', 'kyle'])
      @clients = [@client1]
      
      @shelter = Shelter.new([@animal1], @clients)
    end

    it 'has a name' do
      @shelter.name.should eq 'HappiTails'
    end

    it 'has a list of animals' do
      @shelter.animals.should eq [@animal1]
    end

    # MOVED THIS INTO ITS OWN DESCRIBE WITH DIFFERENT CONTEXTS
    # it 'accepts an animal' do
    #   new_animal = Animal.new('Rocky', @a_breed, @an_age, @a_gender, @favorite_toys)
    #   @shelter.accept_animal(new_animal)
    #   @shelter.animals.should eq [@animal1, new_animal]
    # end

    it 'has a list of clients' do
      @shelter.clients.should eq @clients
    end

    it 'accepts new clients' do 
      new_client = Client.new('Rob', 34, 'male', ['Gray One', 'Black One'], ['Ryan', 'Molly'])
      @shelter.accept_client(new_client)
      @shelter.clients.should eq [@client1, new_client]
    end

  end

  describe 'shelter#accept_animal' do 
    before do 
      @client1 = Client.new('Mike', 24, 'male', ['Buck', 'Misty'], ['liz', 'kyle'])            
      @clients = [@client1]

      @animal1 = Animal.new('animal name', 'french poodle', 3, 'male', ['bone', 'tennis ball'])
      @animals = [@animal1]

      @shelter = Shelter.new(@animals, @clients)
    end

    it 'accepts an animal' do
      new_animal = Animal.new('Rocky', 'Pitbull', 6, 'male', ['limbs'])
      @shelter.accept_animal(new_animal)
      @shelter.animals.should eq [@animal1, new_animal]
    end

    context 'for new client' do
      it 'increments client list by 1' do
        @new_client = Client.new('Rob', 34, 'male', ['Gray One', 'Black One'], ['Ryan', 'Molly'])
        @shelter.accept_client(@new_client)
        @shelter.clients.should eq [@client1, @new_client]
      end
    end

    context 'for existing client' do
      it 'does not change the size of client list' do
        @shelter.clients.should eq [@client1]
      end
    end
  end

end
