class ChangeForContribute < ActiveRecord::Migration[5.1]
  def change
    remove_column :contributes, :user_id
  end
end
