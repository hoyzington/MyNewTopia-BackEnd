class CreateListsMsas < ActiveRecord::Migration[6.0]
  def change
    create_table :lists_msas, id: false do |t|
      t.belongs_to :list
      t.belongs_to :msa
    end
  end
end
