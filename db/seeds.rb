5.times do
    Student.create({
        name: Faker::Name.name,
        student_class: Faker::Lorem.sentence,
        roll_no: Faker::Number.decimal_part(digits: 2)
    })
end
