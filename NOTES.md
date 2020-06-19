# HumDrum Project 
- goodbye bummer summers

# Service class
- CLI
- API

# Model Class
- Activities
- attributes that make up the activities
    - activity
        - Description of the queried activity
        - gets a random activity
    - type -maybe Find a random activity with a given type
        - "education", 
        - "recreational", 
        - "social", 
        - "diy", 
        - "charity", 
        - "cooking", 
        - "relaxation", 
        - "music", 
        - "busywork"
    - participants



data.each 
    activity = data["activity"]
    type = data["type"]
    participants = data["participants"]
     "Activity: #{activity}, Type of activity: #{type}, Number of participant(s): #{participants}"
end

data["activity"]

data.to_a.at(0)
data.to_a.at(1)
data.to_a.at(2)

or

data.to_a[0,2]

or
      
activity = data["activity"]
type = data["type"]
participants = data["participants"]
print "Activity: #{activity} \n Type of activity: #{type} \n Number of participant(s): #{participants}"

------------

data.each do 
            x = 0 
            while x < 1 do
                activity = data["activity"]
                type = data["type"]
                participants = data["participants"]
                    "Activity: #{activity}. Type of activity: #{type}. Number of participant(s): #{participants}"
                
                x+=1
            end
        end


        # new_hash = data
        # new_hash.map {|k, v| [k.capitalize, v]}


# activity = data["activity"]
# type = data["type"]
# participants = data["participants"]
# "Activity: #{activity}. Type of activity: #{type}. Number of participant(s): #{participants}"

#separate keys and values: keys, values = hash.keys, hash.values




        # Activities.all.each.with_index(1) do |a, i|
        #     puts " "
        #     puts "Idea #{i}: #{a}"
        #     puts " "
        # end


                # input = nil
        # while input != "kbye"
        #     input = gets.strip.downcase
        #     case input
        #         when "blah"
        #             puts "Here are some activity ideas :)"
        #             print_activities
        #             # print_main_menu
        #         when "kbye"
        #             kbye
        #         else
        #             invalid_input
        #             print_main_menu
        #     end
        # end