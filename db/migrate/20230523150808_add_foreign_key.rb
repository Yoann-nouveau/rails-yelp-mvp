class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :phone
    add_column :restaurants, :phone_number, :integer
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
