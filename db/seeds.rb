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
    seed.generate_park_locations
  end

  def generate_park_locations
    # 5.times do |i|
    #   park = Park.create!(
    #     state: Faker::Address.state,
    #     park: Faker::NationalPark.state.park
    #   )
    park_location =  Park.create!(state: "Oregon",
                                  park: "Valley of the Rogue State Park")

    park_location =  Park.create!(state: "Washington",
                                  park: "Alta Lake")


      puts "Name of the state: #{park_location.state} has '#{park_location.park}'."
    end
  end


Seed.begin