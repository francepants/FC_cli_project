class API

    BASE_URL = "https://www.boredapi.com/api/"

    def self.get_activities
        i = 0 
        loop do
            i += 1 
                response = RestClient.get(BASE_URL + "activity") 
                data = JSON.parse(response)
                activity = data["activity"]
                type = data["type"]
                participants = data["participants"]
                Activities.new(activity: activity, type: type, participants: participants)
                if i == 10
                    break
            end
        end
    end
end

