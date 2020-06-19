class Practice
    class CLI
        def run
            puts ""
            puts "Welcome message goes here"
            puts ""
            puts "\"The cure for boredom is curiosity. \n - Dorothy Parker\""
            puts ""
            puts "Please wait a moment while we gather some info."
            puts ""
    
            API.get_activities
    
            puts "Thanks for waiting"
            puts "~ ~ ~ ~ ~ ~"
            print_main_menu
        end
    
        def print_main_menu
            puts "type \"blah\" to find something cool to do"
            puts "type \"kbye\" to exit"
            main_menu
        end
    
        def kbye_back_menu
            puts "type \"back\" to go back"
            print_main_menu
        end
    
        def main_menu
            input = gets.strip.downcase
            if input == "blah"
                puts "You typed blah. Here are some ideas!"
                print_activities
                puts ""
            elsif input == "kbye"
                kbye
            elsif input == "back"
                kbye_back_menu
            else
                invalid_input
                print_main_menu
            end
        end
    
    
        def print_activities
            #want this to show a list #1 - #10 of the random activity, type, participants
            # Ideas 1: lists them 
            puts "~ ~ ~ ~ ~ ~"
            Activities.all.each.with_index(1) do |k, i|
                # objectid = "#{k}"
                puts ""
                puts "Idea ##{i}: "
                puts "You should: #{k.activity}"
                puts "Activity type: #{k.type}"
                puts "Participants: #{k.participants}"
                # binding.pry
            end
        end
    
        def invalid_input
            puts ""
            puts "Huh? Please try again."
            puts ""
        end
    
        # def new_list_plz
        #     puts ""
        #     puts "here's a new list"
        #     puts ""
        #     print_activities
        # end
    
        def kbye
            puts ""
            puts "K bye! Go have some fun!"
            puts ""
        end
    end  
end