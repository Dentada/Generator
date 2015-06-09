class CreateConstructors < ActiveRecord::Migration
  def change
    create_table :constructors do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
