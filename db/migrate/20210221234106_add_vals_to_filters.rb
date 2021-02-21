class AddValsToFilters < ActiveRecord::Migration[6.0]
  def change
    add_column :filters, :vals, :string
  end
end
