class ChangeOpenIdOfUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :open_id, :string
  end
end
