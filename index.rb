require_relative("./seed.rb")
require "tty-prompt"

# @2:09

$league = seed
$prompt = TTY::Prompt.new
system "clear"

# A METHOD WHICH SHOWS THE MENU & RETURNS SELECTED OPTION
def select_option
    answer = $prompt.select("What's your option?", ["Ladder", "Teams Info", "Play Game", "Exit"])
    return answer
end


# METHOD THAT DISPLAYS A LIST OF TEAMS AND USER SELECTS A TEAM
def select_team
    $prompt.select("Select your team!", $league.print_teams)

end

def play_game(home, away)
    puts "Game between #{home} and #{away} at #{home.stadium}"
    puts "What did #{home} score? "
    score_home = gets.chomp.to_i
    puts "What did #{away} score? "
    score_away = gets.chomp.to_i
    puts "#{home} scored: #{score_home}"
    puts "#{away} scored: #{score_away}"
    if score_home > score_away
        home.wins
        away.losses
    else
        home.losses
        away.wins
    end
end



# USER MENU
puts "Welcome to #{$league}, checkout your favourite team!"
option = ""

while option != "Exit"
    # INVOKE THE MENU & STORES SELECTED OPTION IN THE VARRIABLE
    option = select_option
    case option
        when "Ladder"
            $league.print_ladder
        when "Teams Info"
            team = select_team
            team.full_info
        when "Play Game"
            home = select_team
            away = select_team
            play_game(home, away)            
        when "Exit"
            #
        else        
            puts "Inavlid Option"
    end
    print "Press Enter key to continue..."
    gets
    system "clear"
end