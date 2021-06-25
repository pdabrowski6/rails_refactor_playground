class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.references :client
      t.string :name
      t.string :stack
      t.integer :status
      t.boolean :active

      t.timestamps
    end
  end
end
