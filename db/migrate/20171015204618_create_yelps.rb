class CreateYelps < ActiveRecord::Migration[5.1]
  def change
    create_table :yelps do |t|

      t.timestamps
    end
  end
end
