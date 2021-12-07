require_relative("./team_member.rb")

# Staff is inherriting from TeamMember - attributes & methods
# TeamMember is a parent class
# Staff is a child class / inherriting from the parent
class Staff < TeamMember
    def initialize(name,role)
        super(name)
        @role = role
    end

    def train
        puts "#{@name} is helping the team train"
    end
    def play
        puts "#{@name} is helping the team during the game as a #{@role}"
    end

end