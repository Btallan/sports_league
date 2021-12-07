require_relative("./team_member.rb")

# Coach is inherriting from TeamMember - attributes & methods
# TeamMember is a parent class
# Coach is a child class / inherriting from the parent
class Coach < TeamMember
    def initialize(name)
        super(name)

    end

    def train 
        puts "#{@name} is leading the training"
    end
    def play
        puts "#{@name} is coaching the team during the game"
    end

end