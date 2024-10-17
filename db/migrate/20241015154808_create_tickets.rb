class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :value
      t.string :icon
      t.string :variant
      t.string :size
      t.string :text

      t.timestamps
    end
  end
end
