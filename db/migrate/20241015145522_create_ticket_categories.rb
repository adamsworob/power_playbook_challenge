class CreateTicketCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_categories do |t|
      t.string :name
      t.integer :value
      t.string :color

      t.timestamps
    end
  end
end
