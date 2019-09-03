class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :open_id
      t.string :username
      t.string :avatar

      t.timestamps
    end
  end
end
