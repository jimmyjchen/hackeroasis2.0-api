class CreateHackSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :hack_sessions do |t|
      t.timestamp :date
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
