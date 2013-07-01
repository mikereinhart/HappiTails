require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

class Main

  def add_client(client)
    @shelter.clients << client
  end

end



# BEL
# individual rspec pages only describe 
# that class.

# shelter has a name, list of clients, and
# a list of animals

# main.rb has all the functionalities that do 
# the interactions between classes.

