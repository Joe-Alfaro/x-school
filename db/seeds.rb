Note.destroy_all
Grade.destroy_all
Detention.destroy_all
ApprovedTeacher.destroy_all
Team.destroy_all
Teacher.destroy_all
Student.destroy_all

#Teacher seeds
Teacher.create!({
  email: 'prof.x@xmen.com',
  password: 'password',
  first_name: 'Charles',
  last_name: 'Xavier',
  hero_name: 'Professor X',
  superpower: 'telepathy',
  gender: 'm',
  administrator: true
  })

Teacher.create!({
  email: 'logan@xmen.com',
  password: 'password',
  first_name: 'Hugh',
  last_name: 'Jackman',
  hero_name: 'Wolverine',
  superpower: 'instant healing',
  gender: 'm',
  administrator: false
  })

Teacher.create!({
  email: 'cyclops@xmen.com',
  password: 'password',
  first_name: 'Scott',
  last_name: 'Summers',
  hero_name: 'Cyclops',
  superpower: 'laser-y eyes',
  gender: 'm',
  administrator: true
  })

Teacher.create!({
  email: 'teacher@test.com',
  password: 'password',
  first_name: 'Test',
  last_name: 'Teacher',
  hero_name: 'Tester',
  superpower: 'testing stuff',
  gender: 'other',
  administrator: true
  })

10.times do
  domain = "@xmen.com"
  hero_name = Faker::Superhero.name

  Teacher.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: hero_name.split(" ").join("_") + domain,
    password: 'password',
    hero_name: hero_name,
    superpower: Faker::Superhero.power,
    gender: ['m', 'f','other'].sample,
    administrator: false
    })
end

#Team seeds
4.times do
  Team.create!({
    name: Faker::Superhero.descriptor,
    teacher_id: Teacher.all.sample.id
    })
end

#Student seeds
20.times do
  domain = "@xmen.com"
  hero_name = Faker::Superhero.name

  Student.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: hero_name.split(" ").join("_") + domain,
    password: 'password',
    hero_name: hero_name,
    superpower: Faker::Superhero.power,
    gender: ['m', 'f','other'].sample,
    administrator: false,
    grade_level: rand(6..12),
    shirt_size: %w(xs s m l xl xxl).sample,
    team_id: Team.all.sample.id
    })
end

#Detentions
20.times do
  Detention.create!({
    issuer_id: Teacher.all.sample.id,
    student_id: Student.all.sample.id,
    reason: ["Unauthorized use of " + Faker::Superhero.power, "Endangering self or others with " + Faker::Superhero.power].sample,
    date: Faker::Date.between(15.days.ago, Date.today)
  })
end

#Grades
100.times do
  Grade.create!({
    score: rand(0..100),
    student_id: Student.all.sample.id
  })
end

#Approved Teacher Code Seeds
10.times do
  ApprovedTeacher.create!({
    email: Faker::Internet.safe_email,
    code: "testcode123"
    })
end

#Notes seed

10.times do
  Note.create!({
    content: Faker::Hipster.paragraph,
    noteable_id: Student.all.sample.id,
    noteable_type: "Student",
    sender_id: Teacher.all.sample.id,
    sender_type: "Teacher"
    })
end

5.times do
  Note.create!({
    content: Faker::Hipster.paragraph,
    noteable_id: Teacher.all.sample.id,
    noteable_type: "Teacher",
    sender_id: Student.all.sample.id,
    sender_type: "Student"
    })
end

Rule.create!({
    rule_string: "Students can not be all the same gender",
    teacher_id: 1,
    # attribute: 'team.students.count',
    # criteria: '>',
    # value: '1',
    # modifier: nil,
    # active: 'true'
  })
Rule.create!({
    rule_string: "Teams' average grade score needs to be 80% +/- 5%",
    teacher_id: 1,
    # attribute: 'team.students.count',
    # criteria: '>',
    # value: '1',
    # modifier: nil,
    # active: 'true'
  })
Rule.create!({
    rule_string: "A team can not have more than 15 detentions",
    teacher_id: 1,
    # attribute: 'team.students.count',
    # criteria: '>',
    # value: '1',
    # modifier: nil,
    # active: 'true'
  })
