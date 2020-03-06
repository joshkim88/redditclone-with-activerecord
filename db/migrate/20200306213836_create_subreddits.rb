class CreateSubreddits < ActiveRecord::Migration[5.2]
  def change
    create_table :subreddits do |t|
      t.string :name
      t.string :url
      t.text :rules
      t.integer :total_users
      t.timestamps
    end
  end
end
