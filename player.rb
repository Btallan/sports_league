require_relative("./team_member.rb")

#Player is inherriting from TeamMember - attributes & methods
# TeamMember is a parent class
# Player is a child class / inherriting from the parent
class Player < TeamMember
    def initialize(name,number, position)
        super(name)
        @number = number
        @position = position
    end

    def to_s
        return "##{@number} #{@name} #{@position}"
    end

end