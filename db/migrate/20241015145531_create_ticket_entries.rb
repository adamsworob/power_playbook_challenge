class CreateTicketEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_entries do |t|
      t.references :ticket_category, null: false, foreign_key: true
      t.string :avatar
      t.string :text

      t.timestamps
    end
  end
end
