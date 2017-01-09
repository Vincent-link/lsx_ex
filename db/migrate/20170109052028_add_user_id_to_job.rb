class AddUserIdToJob < ActiveRecord::Migration[5.0]
  def change
    unless column_exists? :jobs, :user_id
      add_column :jobs, :user_id, :integer
    end
  end
end
