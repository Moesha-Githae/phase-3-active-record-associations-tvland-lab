class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{character.name}-#{character.show.name}"
  end

  def list_roles
    self.characters.map do |character|
      # binding.pry
      "#{character.name} - #{character.show.name}"
    end
  end
  end


