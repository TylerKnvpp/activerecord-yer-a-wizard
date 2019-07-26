class Wizard < ActiveRecord::Base
    has_many :wands
    has_many :spells, through: :wands



    def invoke_spells
        self.spells.map{|s| s.invocation_phrase}
    end

    def wart_grad
        self.hogwarts_degree ? "Yer a wizard, #{name}" : nil
    end

    def self.all_hogwarts_grads
        self.all.select{|w| w.hogwarts_degree ==  true}.map{|i| i.name}
    end

    def self.strongest
        self.all.max_by{|w| w.skill_level}.name
    end

    def strength_helper
        self.skill_level
    end

    def learn_spell(spell)
        strength_helper > spell.level_requirement ? Wand.create(wizard: self, spell: spell) : nil
    end

end