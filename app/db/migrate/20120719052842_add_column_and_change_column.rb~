class AddColumnAndChangeColumn < ActiveRecord::Migration
  def up
     add_column :users,:contact ,:integer
	add_column :users,:user_type,:integer
	rename_column :users,:name,:username
  end

  def down
	remove_column :users,:contact
	remove_column :users,:user_type
	rename_column :users,:username,:name
  end
end
