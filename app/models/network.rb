class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    "were sorry about passiong on John Mulaney's pilot"
  end
  
end
