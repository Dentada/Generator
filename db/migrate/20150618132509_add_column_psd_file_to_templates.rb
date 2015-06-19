class AddColumnPsdFileToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :psd_file, :string
  end
end
