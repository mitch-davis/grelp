class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.string :Restaurant
      t.string :deal_title
      t.string :Offer_Code
      t.string :lat
      t.string :long
      t.string :Exp_Date
      t.string :Description
      t.string :Restrictions
      t.string :cuisine
    end
  end
end
