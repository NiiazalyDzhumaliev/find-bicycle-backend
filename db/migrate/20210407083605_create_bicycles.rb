class CreateBicycles < ActiveRecord::Migration[6.1]
  def change
    create_table :bicycles do |t|
      t.string :model
      t.text :description

      t.timestamps
    end
  end
end
