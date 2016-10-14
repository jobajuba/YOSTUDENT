class AddUsernameToUsers < ActiveRecord::Migration
  def change # Anything inside this method, is translated into SQL code and modified in the database (currently, SQLite)
    add_column :users, :username, :string #Adds a new column to the table "Users", called "Username" and of type "String".
    add_index :users, :username, unique: true #1. Index usernames for quick (rapid) lookup. 2. Ensure usernames are ALWAYS unique. 
  end
end
