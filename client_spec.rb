require_relative 'client'

class ClientSpec
  describe Client do
    before do
      @name = 'Mike'
      @an_age = 24
      @gender = 'male'
      @animals = ['Misty', 'Buck']
      @kids = ['Kyle','Liz']
      @client = Client.new(@a_name, @an_age, @a_gender, @animals, @kids)
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

    it 'has a list of animals' do 
      @client.animals.should eq @animals
    end

    it 'can remove an animal' do
      numAnimals = @animals.length
      @client.remove_animal(0)
      @client.animals.length.should eq (numAnimals -1)
    end
 
    it 'can add an animal' do 
      numAnimals = @animals.length
      @client.add_animal(0)
      @client.animals.length.should eq (numAnimals +1)
    end

    it 'can list the shelters clients'

  end
end