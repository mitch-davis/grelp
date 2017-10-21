class Deal < ApplicationRecord
  def change
    create_table :deals do |t|
      t.string :Restaurant
      t.string :Value
      t.string :Offer_Code
      t.string :Restrictions
      t.string :Exp_Date
      t.string :longitude
      t.string :latitude
      
      t.timestamps
     end
  end
  
  def self.near_by_deals
      return [{:Restaurant => 'Smash Burger', :Value => '20% Off Classic Cheeseburger', :Offer_Code => 'GG35-31N', :Restrictions => 'One Time Use', :Exp_Date => '12/05/17', :longitude => '-2.3524542', :latitude => '124.563632'}, {:Restaurant => 'Il Vicino', :Value => 'Free Beer With Pizza Purchase', :Offer_Code => 'WD25-11B', :Restrictions => 'Happy Hour Only', :Exp_Date => '11/15/17', :longitude => '-2.3524542', :latitude => '124.563632'}, {:Restaurant => 'Panera Bread', :Value => '10% Off Any Soup', :Offer_Code => 'GF35-34T', :Restrictions => 'Once/Day', :Exp_Date => '12/01/17', :longitude => '-2.3524542', :latitude => '124.563632'}, {:Restaurant => 'Hacienda', :Value => 'Unlimited Chips and Salsa', :Offer_Code => 'GS56-12L', :Restrictions => 'None', :Exp_Date => '12/07/17', :longitude => '-2.3524542', :latitude => '124.563632'}]
  end
end
