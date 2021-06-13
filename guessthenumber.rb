# variables
$users = {}

class User
    attr_accessor :name, :score

    def initialize(name, score)
        @name = name
        @score = score 


        $users[@name] = self
    end
end

def create_game(user)
    guess = nil
    number_to_guess = rand 1..50
    tries = 0

    while guess != number_to_guess
        if tries != 0
            if guess.to_i > number_to_guess
                puts "Not this number! Lower!"
            elsif guess.to_i < number_to_guess
                puts "Not this number! Higher!"
            end
        end
        puts "Guess the number I'm thinking of! Enter exit to exit!"
        guess = gets.chomp
        tries += 1
        if guess == "exit"
            puts "Exiting!"
            exit
        end
    end

    puts "You won!"
    puts "You have a score of " + tries
    user.score = tries
    puts "Restarting!"
    new_game()
end

def ask_player_for_user()
    puts "Put your username!" 
    name = gets.chomp
    
    if $users.has_key? name
        puts "Logged In!"
        create_game($users[name])
    else 
        puts "You are not registered!"
        create_new_user(name)
    end
end

def create_new_user(name)
    puts "Creating new user!"
    puts "Replay the game and enter the same name!"
    newuser = User.new(name, 0)
    new_game()
end

def display_leaderboards()
    if $user == nil
        puts "THERE ARE NO USERS REGISTERED"
        new_game()
        return
    end
    puts "=================LEADERBOARDS====================="
    $user.each do |user|
        puts user.name + "has " + user.score
    end
end

def new_game()
    puts "STARTING NEW GUESS THE NUMBER GAME!"
    puts "=" * 30
    puts "==========OPTIONS============="
    puts "1. Start a new game"
    puts "2. Exit"
    puts "3. Check leaderboards!" 

    input = gets.chomp
    
    if input == "1"
        ask_player_for_user()
    elsif input == "2"
        exit
    elsif input == "3"
        display_leaderboards
    else 
        new_game()
    end
end   

new_game()