# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
class Seed
  Park.destroy_all


  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
   
    parks =  Park.create!(state: "Oregon",
                                  park: "Valley of the Rogue State Park")

    parks =  Park.create!(state: "Washington",
                                  park: "Alta Lake")


     
    end
    
    
  end


Seed.begin