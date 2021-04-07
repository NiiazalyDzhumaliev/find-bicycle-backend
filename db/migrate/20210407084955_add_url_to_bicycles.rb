class AddUrlToBicycles < ActiveRecord::Migration[6.1]
  def change
    add_column :bicycles, :url, :string
  end
end
