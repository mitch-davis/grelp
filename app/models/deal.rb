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
      return [{:Restaurant => 'Panera Bread', :Value => '10% off', :Offer_Code => 'GF35-34T', :Restrictions => 'Can only use once/day', :Exp_Date => '12/01/17', :longitude => '-2.3524542', :latitude => '124.563632'}, {:Restaurant => 'Panera Bread', :Value => '10% off', :Offer_Code => 'GF35-34T', :Restrictions => 'Can only use once/day', :Exp_Date => '12/01/17', :longitude => '-2.3524542', :latitude => '124.563632'}]
  end
end
