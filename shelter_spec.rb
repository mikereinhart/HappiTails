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
      
      @new_animal = Animal.new('Rocky', @a_breed, @an_age, @a_gender, @favorite_toys)
      @new_client = Client.new('Rob', 34, 'male', ['Gray One', 'Black One'], ['Ryan', 'Molly'])

      @shelter = Shelter.new([@animal1], @clients)
    end

    it 'has a name' do
      @shelter.name.should eq 'HappiTails'
    end

    it 'has a list of animals' do
      @shelter.animals.should eq [@animal1]
    end

    it 'accepts animal for adoption' do
      @shelter.accept_animal(@new_animal)
      @shelter.animals.should eq [@animal1, @new_animal]
    end

    it 'has a list of clients' do
      @shelter.clients.should eq @clients
    end

    it 'accepts new clients' do 
      @shelter.accept_client(@new_client)
      @shelter.clients.should eq [@client1, @new_client]
    end

  end

  describe 'shelter#accept_animal' do 
    before do 
      @client1 = Client.new('Mike', 24, 'male', ['Buck', 'Misty'], ['liz', 'kyle'])            
      @new_client = Client.new('Rob', 34, 'male', ['Gray One', 'Black One'], ['Ryan', 'Molly'])
      @clients = [@client1]

      @shelter = Shelter.new([@animal1], @clients)
    end
    
    context 'for new client' do
      it 'increment client list by 1' do
        @shelter.accept_client(@new_client)
        @shelter.clients.should eq [@client1, @new_client]
      end
    end

    context 'for existing client' do
      it 'does not change the size of client list' do
        @shelter.clients.should eq [@client1]
      end
    end

    # context 'animal was a stray' do
    #   it 'does not affect client list' do
    #     @shelter.clients.should eq [@client1]
    #   end
    # end

  end
    
end






