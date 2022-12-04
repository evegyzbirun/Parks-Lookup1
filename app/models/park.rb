class Park < ApplicationRecord
  validates :state, presence: true
  validates :park, presence: true


  def self.search(park_location_state)
    
    Park.where("state = ?", ("#{park_location_state}"))
    
    
  end

end