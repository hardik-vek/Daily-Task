class AddBioToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :bio, :string
  end
end
