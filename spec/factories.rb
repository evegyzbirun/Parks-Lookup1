FactoryBot.define do
  factory(:park_location) do
    state {Faker::Name.name}
    park {Faker::Movie.quote}
  end
end