# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


deals = [{:Restaurant => 'Panera Bread', :Value => '10% off', :Offer_Code => 'GF35-34T', :Restrictions => 'Can only use once/day', :Exp_Date => '12/01/17', :longitude => '-2.3524542', :latitude => '124.563632'}]

deals.each do |deal|
    Deal.create!(deal)
end