class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.string :Restaurant
      t.string :ID
      t.string :Deal_Title
      t.string :Offer_Code
      t.string :Exp_Date
      t.string :Description
      t.string :Restrictions
    end
  end
end
