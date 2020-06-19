class Activities
    attr_accessor :activity, :type, :participants

    @@all = []

    def initialize(activity:, type:, participants:)
        self.activity = activity
        self.type = type
        self.participants = participants
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end

