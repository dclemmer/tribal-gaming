class AddApprovedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :approved, :boolean, :default => 0
  end
  
  def up
    add_column :users, :approved, :boolean, :default => 0
  end

  def down
    remove_column :users, :ssl_enabled
  end

end

#rails generate migration add_approved_to_users approved:boolean