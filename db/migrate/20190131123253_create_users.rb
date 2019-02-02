class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :second_name
      t.string :birthday_day
      t.string :school
      t.string :grade

      t.timestamps
    end
  end
end
