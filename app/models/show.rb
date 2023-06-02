class Show < ActiveRecord::Base
  belongs_to :Network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.map do |actor|
        actor.full_name
    end
 end
  



end