class CreateWands < ActiveRecord::Migration[5.2]
  def change
     create_table :wands do |t|
      t.integer :wizard_id
      t.integer :spell_id
     end
   end
end
