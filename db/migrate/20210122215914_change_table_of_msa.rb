class ChangeTableOfMsa < ActiveRecord::Migration[6.0]
  def change
    change_table(:msas) do |t|
      t.rename :msa_code, :code
      t.rename :time_zone, :zone
      t.rename :med_hr_wg, :wage
    end
  end
end
