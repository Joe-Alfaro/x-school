#Teacher seeds
Teacher.create!({
  email: 'prof.x@xmen.com',
  password: 'password',
  first_name: 'Charles',
  last_name: 'Xavier',
  hero_name: 'Professor X',
  superpower: 'telepathy',
  gender: 'male',
  administrator: true
  })

Teacher.create!({
  email: 'logan@xmen.com',
  password: 'password',
  first_name: 'Hugh',
  last_name: 'Jackman',
  hero_name: 'Wolverine',
  superpower: 'instant healing',
  gender: 'male',
  administrator: false
  })

Teacher.create!({
  email: 'cyclops@xmen.com',
  password: 'password',
  first_name: 'Scott',
  last_name: 'Summers',
  hero_name: 'Cyclops',
  superpower: 'laser-y eyes',
  gender: 'male',
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
    email: hero_name.sub(" ", "_") + domain,
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
    name: Faker::Superhero.suffix,
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
    email: hero_name.sub(" ", "_") + domain,
    password: 'password',
    hero_name: hero_name,
    superpower: Faker::Superhero.power,
    gender: ['m', 'f','other'].sample,
    administrator: false,
    grade_level: rand(6..12),
    shirt_size: %w(xs s m l xl xxl).sample,
    team: Team.all.sample.id
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
30.times do
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
