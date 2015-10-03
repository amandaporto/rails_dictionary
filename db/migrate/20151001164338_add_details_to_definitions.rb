class AddDetailsToDefinitions < ActiveRecord::Migration
  def change
    add_column :definitions, :part_of_speech, :string
    add_column :definitions, :example, :string
  end
end
