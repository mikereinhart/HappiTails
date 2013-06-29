require_relative 'client'

class ClientSpec
  describe Client do
    before do
      @name = 'Mike'
      @an_age = 24
      @gender = 'male'
      @animal_list = ['Misty', 'Buck']
      @kids = ['Kyle','Liz']
      @client = Client.new(@a_name, @an_age, @a_gender, @animal_list, @kids)
    end

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
      @client.list_animals.should eq @animal_list
    end

    it 'gives up an animal for adoption'
    it 'can list the shelters clients'

  end
end