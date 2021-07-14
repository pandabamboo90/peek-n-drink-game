class CreateCard < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.references :set_card, index: true
      t.string :image

      t.timestamps
    end
  end
end
