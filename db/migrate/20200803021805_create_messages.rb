class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :sender_id
      t.integer :reciever_id

      t.timestamps
    end
  end
end
