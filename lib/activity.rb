require 'pry'

class Activity

  attr_reader :name,
              :participants

  def initialize(name, hash_of_participants)
    @name=name
    @participants=hash_of_participants
    # binding.pry
  end

 def add_person(name, contribution)
   @participants[name] = contribution
   # binding.pry
 end

end
