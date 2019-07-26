class CreateWizards < ActiveRecord::Migration[5.2]
  def change
     create_table :wizards do |t|
       t.string :name
       t.integer :skill_level
       t.boolean :hogwarts_degree
     end
   end
end
