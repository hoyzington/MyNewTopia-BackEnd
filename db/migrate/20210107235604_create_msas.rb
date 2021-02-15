class CreateMsas < ActiveRecord::Migration[6.0]
  def change
    create_table :msas do |t|
      t.integer :code
      t.string :name
      t.string :states
      t.string :zone
      t.integer :pop
      t.float :wage
      t.float :unemp
      t.integer :heat
      t.float :cold
      t.float :precip
      t.float :snow
      t.float :aqi

      t.timestamps
    end
  end
end
