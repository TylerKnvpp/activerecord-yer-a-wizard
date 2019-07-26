class CreateSpells < ActiveRecord::Migration[5.2]
  def change
     create_table :spells do |t|
       t.string :name
       t.string :invocation_phrase
       t.integer :level_requirement
       t.string :spell_type
     end
   end
end
