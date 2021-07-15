class AddColumnNoToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :no, :integer
  end
end