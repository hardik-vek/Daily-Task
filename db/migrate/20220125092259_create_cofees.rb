class CreateCofees < ActiveRecord::Migration[7.0]
  def change
    create_table :cofees do |t|
      t.string :size

      t.timestamps
    end
  end
end
