Wizard.destroy_all
Spell.destroy_all
Wand.destroy_all


w1 = Wizard.create!(name: "harry", skill_level: 10, hogwarts_degree: true)
w2 = Wizard.create!(name: "ron", skill_level: 6, hogwarts_degree: false)
w3 = Wizard.create!(name: "hermoine", skill_level: 9, hogwarts_degree: true)


s1 = Spell.create!(name: "Expecto Patronum", invocation_phrase: "Expecto Patronum", level_requirement: 8, spell_type: "Defensive charm")
s2 = Spell.create!(name: "Riddikulus", invocation_phrase: "riddikulus!", level_requirement: 3, spell_type: "Charm")
s3 = Spell.create!(name: "Reparo", invocation_phrase: "Reparo", level_requirement: 4, spell_type: "Charm")

wa1 = Wand.create!(wizard: w1, spell: s1)
wa2 = Wand.create!(wizard: w1, spell: s2)
wa3 = Wand.create!(wizard: w1, spell: s3)
wa4 = Wand.create!(wizard: w2, spell: s2)
wa5 = Wand.create!(wizard: w2, spell: s3)
wa6 = Wand.create!(wizard: w3, spell: s1)
wa7 = Wand.create!(wizard: w3, spell: s2)
wa8 = Wand.create!(wizard: w3, spell: s3)
