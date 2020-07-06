class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :sender_user_id, foreign_key: true
      t.integer :receiver_user_id, foreign_key: true

      t.timestamps
    end
  end
end
