class CreateRoom < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.references :set_card
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
