class CreateMsas < ActiveRecord::Migration[6.0]
  def change
    create_table :msas do |t|
      t.integer :msa_code
      t.string :name
      t.string :time_zone
      t.integer :pop
      t.float :med_hr_wg
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
