class AddStatesToMsa < ActiveRecord::Migration[6.0]
  def change
    add_column :msas, :states, :string
  end
end
