class CLI
    def run
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        puts "                 __   __            " 
        puts "|__| |  |  |\\/| |  \\ |__) |  |  |\\/| "
        puts "|  | \\__/  |  | |__/ |  \\ \\__/  |  | "
        puts ""
        puts "adjective. a cool way to say bored."
        puts ""
        sleep 2
        puts "Hey, you must be Bored! \nWell Bored, I'm Humdrum, the cure for your bummer summers and all dull things alike."
        sleep 1
        puts "Here, we'll gather some enjoyable activities for you to try out."
        puts ""
        sleep 2
        puts "Please allow us a moment while they load..."
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
        puts "Type \"list\" for a list of things to do."
        puts "Type \"kbye\" to exit."
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        main_menu
    end

    def main_menu
        input = gets.strip.downcase
        if input == "list"
            puts ""
            puts "You typed \"list\". Here are some ideas!"
            sleep 2
            print_activities
            puts ""
            puts "Menu:"
            puts "To go back and generate 10 new ideas, type \"back\"."
            puts "To exit, type \"kbye\"."
            puts ""
            b_input = gets.strip.downcase
            if b_input == "back"
                puts "Please allow us one moment to gather some new ideas..."
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

        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        Activities.all.each.with_index(1) do |o, i|
            puts ""
            puts "Idea ##{i}: "
            puts "You should: #{o.activity}"
            puts "Activity type: #{o.type}"
            puts "Participant(s): #{o.participants}"
            sleep 0.2
        end
    end

    def new_options
        API.get_activities
    end

    def invalid_input
        puts ""
        puts "Hmm, I didn't get that. Please try again."
        puts ""
    end

    def kbye
        puts ""
        # puts "Remember - \"The cure for boredom is curiosity. \n - Dorothy Parker\""
        puts "K bye! Go have some fun!"
        puts ""
        exit
    end
end  