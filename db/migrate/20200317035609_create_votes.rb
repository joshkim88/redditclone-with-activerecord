class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
<<<<<<< HEAD
      t.references :account
      t.references :post
=======
      t.reference :account
      t.reference :post
>>>>>>> 064af047bbf09f79a0718f19bb0d00ae79ba24b6
      t.boolean :upvote
      t.boolean :downvote
      t.timestamp
    end
  end
end
