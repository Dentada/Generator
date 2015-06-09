class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.text :body_json
      t.string :preview
      t.string :price
      t.integer :client_id
      t.string :name
      t.string :kind

      t.timestamps null: false
    end
  end
end

