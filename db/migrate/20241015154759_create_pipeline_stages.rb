class CreatePipelineStages < ActiveRecord::Migration[7.0]
  def change
    create_table :pipeline_stages do |t|
      t.string :label
      t.integer :percent
      t.string :value

      t.timestamps
    end
  end
end
