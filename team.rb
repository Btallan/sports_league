# Teams: players, uniforms, coach, staff, name, city, stadium
class Team
    # SETTING THE GETTERS
    attr_reader :stadium, :wins

    
    def initialize(name, city, stadium, uniform, players, coach, staff)
        @name = name
        @city = city
        @stadium = stadium
        @uniform = uniform
        @players = players
        @coach = coach
        @staff = staff
        # DEFAULT VALUES FOR ATTRIBUTES
        @wins = 0
        @losses = 0
    end

    # Without this, puts will return the memory address
    def to_s
        return "#{@city} #{@name}"
    end

    def full_info
        puts "#{@city} #{@name}"
        puts "Coach: #{@coach}"
        puts "Roster: "
        @players.each {|player| puts player}
        puts "Staff Members:"
        @staff.each {|staff| puts staff}
        puts "The current W-L balance is #{wins} - #{losses}"
    end

    def print_team_table
        puts "#{@name} \t #{@wins} \t #{@losses}"
    end

    def wins
        puts "Congratulations #{@name} on your win!"
        @wins +=1
    end

    def losses
        puts "Unfortunately, #{@name} lost the game!"
        @losses +=1
    end

end

team1 = Team.new("Lions","Brisbane","The Gabba","Maroon, blue & yellow", ["p1","p2","p3"], "Mr. Coach", ["a1","a2"])
