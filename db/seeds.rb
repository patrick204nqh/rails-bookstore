require 'faker'

Erp::Book.destroy_all
Erp::User.destroy_all

10.times do
  Erp::Book.create(
    title: Faker::Book.title,
    price: Faker::Number.between(from: 1, to: 50),
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
  )
end

10.times do
  Erp::User.create(
    email: Faker::Internet.email,
    password: 'patrick',
    password_confirmation: 'patrick'
  )
end

1.times do
  Erp::User.create(
    email: 'test@patrick.co.uk',
    password: 'patrick',
    password_confirmation: 'patrick',
    admin: true
  )
end