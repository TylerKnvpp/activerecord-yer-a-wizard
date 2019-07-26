class Spell < ActiveRecord::Base
    has_many :wands
    has_many :wizards, through: :wands


    def self.sort_by_name
        self.all.sort_by{|i| i.name}.map{|i|i.name}
    end

    def self.sort_by_level
        self.all.sort_by{|s| s.level_requirement}.map{|s| s.name }.reverse
    end

    def self.find_all_by_type(type)
        self.all.select{|s| s.spell_type == type}.map{|s| s.name}
    end

end
