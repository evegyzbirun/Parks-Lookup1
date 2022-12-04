class Park < ApplicationRecord
  validates :state, presence: true
  validates :park, presence: true


  def self.search(park_state)
    
    Park.where("state = ?", ("#{park_state}"))
    
    
  end

end