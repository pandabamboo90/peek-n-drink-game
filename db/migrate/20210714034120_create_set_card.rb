class CreateSetCard < ActiveRecord::Migration[6.1]
  def change
    create_table :set_cards do |t|
      t.string :title

      t.timestamps
    end
  end
end
