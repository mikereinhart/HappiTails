require_relative 'shelter'
require_relative 'client'
require_relative 'animal'
require_relative 'main'

class MainSpec
  describe Main do
    before do 
      @main = Main.new

      @client1 = Client.new('Mike', 24, 'male', ['Buck', 'Misty'], ['liz', 'kyle'])            
      @clients = [@client1]

      @animal1 = Animal.new('animal name', 'french poodle', 3, 'male', ['bone', 'tennis ball'])
      @animals = [@animal1]

      @shelter = Shelter.new(@animals, @clients)
    end
    it 'adds new client' do 
      # shelter = Shelter.new([], [])
      # client1 = Client.new('Mike', 24, 'male', ['Buck', 'Misty'], ['liz', 'kyle'])
      # shelter.add_client(client1)
      # shelter.clients.length.should == 1
      # shelter.clients.should eq client1
      new_client = Client.new('Rob', 34, 'male', ['Gray One', 'Black One'], ['Ryan', 'Molly'])
      @main.add_client(new_client)
      @shelter.clients.should eq [@client1, new_client]
    end

    it 'adopt animal from shelter'

    it 'donate animal to shelter'

    it 'adds animal to shelter'

    #   it 'adds animal to shelter' do #add animal to animal_list array
    #     @shelter.adopt_animal(@new_animal)
    #     @shelter.new_animal.should eq @new_animal
    #   end
    #   it 'adds new client' do
    #     @shelter.new_client.should eq @new_client
    #   end
    # end
    # describe 'shelter#accept_animal' do
    #   context 'for new client' do
    #     it 'increment client list by 1'
    #   end

    #   context 'for existing client' do
    #     it 'does not change the size of client list'
    #   end

    #   context 'animal was a stray' do
    #     it 'does not affect client list'
    #   end
  end

end
