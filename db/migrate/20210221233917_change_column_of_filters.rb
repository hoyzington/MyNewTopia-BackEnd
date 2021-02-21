class ChangeColumnOfFilters < ActiveRecord::Migration[6.0]
  def change
    rename_column :filters, :choices, :items
  end
end
