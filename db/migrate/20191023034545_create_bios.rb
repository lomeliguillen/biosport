class CreateBios < ActiveRecord::Migration[5.2]
  def change
    create_table :bios do |t|
      t.string :name
      t.text :biography
      t.timestamps
    end
  end
end
