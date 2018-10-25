# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

# Create random assemblies
20.times do
  assembly = Assembly.create!(name: Faker::Name.initials)
  end

# Create random parts
5.times do
  part = Part.create!(part_number: Faker::IDNumber.valid)
  part.assembly_ids = rand(Assembly.first.id..Assembly.last.id)
  end