class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :kind
      t.text :content
      t.text :static_comment

      t.timestamps null: false
    end
  end
end
