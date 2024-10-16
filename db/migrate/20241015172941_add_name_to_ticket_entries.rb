class AddNameToTicketEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :ticket_entries, :name, :string
  end
end
