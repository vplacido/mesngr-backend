class CreateSenders < ActiveRecord::Migration[6.0]
  def change
    create_table :senders do |t|
      t.integer :message_id
      t.string :name

      t.timestamps
    end
  end
end
