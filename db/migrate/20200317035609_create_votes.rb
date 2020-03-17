class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.reference :account
      t.reference :post
      t.boolean :upvote
      t.boolean :downvote
      t.timestamp
    end
  end
end
