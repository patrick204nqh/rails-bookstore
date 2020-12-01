require 'faker'

Erp::Book.destroy_all

10.times do 
  Erp::Book.create(
    title: Faker::Book.title, 
    price: Faker::Number.between(from: 1, to: 50), 
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
  )
end
