#comment comment comment comment comment
class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|

      t.timestamps
    end
  end
end
