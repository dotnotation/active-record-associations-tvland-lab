class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #returns array of full names of each actor 
        self.actors.map do |actor|
            "#{actor.first_name} #{actor.last_name}"
        end
    end
end