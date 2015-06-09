class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :login
      t.string :name
      t.string :password
      t.string :email
      t.string :phone
      t.string :kind

      t.timestamps null: false
    end
  end
end
