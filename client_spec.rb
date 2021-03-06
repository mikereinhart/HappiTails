require_relative 'client'

class ClientSpec
  describe Client do
    before do
      @name = 'Mike'
      @an_age = 24
      @gender = 'male'
      @pets = ['Misty', 'Buck']
      @kids = ['Kyle','Liz']
      @client = Client.new(@a_name, @an_age, @a_gender, @pets, @kids)
    end

    # its(:name) { should == 'Mike' }

    # it { subject.name.should eq @a_name }

    it 'has a name' do
      @client.name.should eq @a_name
    end

    it 'has an age' do 
      @client.age.should eq @an_age
    end

    it 'has a gender' do 
      @client.gender.should eq @a_gender
    end

    it 'has a list of kids' do 
      @client.kids.should eq @kids
    end

    it 'has a list of pets' do 
      @client.pets.should eq @pets
    end

    it 'can remove an pet' do
      numPets = @pets.length
      @client.remove_pet(0)
      @client.pets.length.should eq (numPets -1)
    end
 
    it 'can add an animal' do 
      numPets = @pets.length
      @client.add_pet(0)
      @client.pets.length.should eq (numPets +1)
    end

  end
end