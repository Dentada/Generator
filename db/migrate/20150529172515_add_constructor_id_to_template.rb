class AddConstructorIdToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :constructor_id, :integer
  end
end
