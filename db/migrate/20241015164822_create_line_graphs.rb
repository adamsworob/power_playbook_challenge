class CreateLineGraphs < ActiveRecord::Migration[7.0]
  def change
    create_table :line_graphs do |t|
      t.string :name
      t.json :data

      t.timestamps
    end
  end
end
