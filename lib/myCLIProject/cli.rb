class CLI
    def run
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        puts "                 __   __            " 
        puts "|__| |  |  |\\/| |  \\ |__) |  |  |\\/| "
        puts "|  | \\__/  |  | |__/ |  \\ \\__/  |  | "
        puts ""
        puts "adjective. cool way to say bored."
        puts ""
        sleep 2
        puts "Hey, you must be bored! \nWell bored, I'm Humdrum, the cure for your bummer summers."
        puts ""
        sleep 2
        puts "\"The cure for boredom is curiosity. \n - Dorothy Parker\""
        puts ""
        sleep 2
        puts "Please wait a moment while we gather some info."
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        API.get_activities
        puts ""
        puts "Thanks for waiting! "
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        print_main_menu
    end

    def print_main_menu
        puts ""
        puts "Menu:"
        puts "Type \"blah\" for a list of things to do."
        puts "Type \"kbye\" to exit."
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        main_menu
    end

    def main_menu
        input = gets.strip.downcase
        if input == "blah"
            puts ""
            puts "You typed blah. Here are some ideas!"
            print_activities
            puts ""
            #ask if they want to go back / input / use if statement
            puts "To go back and get 10 new ideas, type \"back\"."
            puts "To exit, type \"kbye\"."
            puts ""
            b_input = gets.strip.downcase
            if b_input == "back"
                new_options
                print_main_menu
            elsif b_input == "kbye"
                kbye
            else
                invalid_input
                print_main_menu
            end
        elsif input == "kbye"
            kbye
        else
            invalid_input
            print_main_menu
        end
    end

    def print_activities
        #want this to show a list #1 - #10 of the random activity, type, participants
        # Ideas 1: lists them 
        # objectid = "#{k}"
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        Activities.all.each.with_index(1) do |k, i|
            puts ""
            puts "Idea ##{i}: "
            puts "You should: #{k.activity}"
            puts "Activity type: #{k.type}"
            puts "Participant(s): #{k.participants}"
        end
    end

    def new_options
        API.get_activities
    end

    def invalid_input
        puts ""
        puts "Huh? Please try again."
        puts ""
    end

    def kbye
        puts ""
        puts "K bye! Go have some fun!"
        puts ""
        exit
    end
end  