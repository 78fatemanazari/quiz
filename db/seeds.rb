# db/seeds.rb

# Clear existing data
Question.destroy_all

# Seed questions with answers
questions = [
  {
    content: "What is the capital of France?"
  },
  {
    content: "What is the largest mammal?"
  },
  {
    content: "Who painted the Mona Lisa?"
  },
  {
    content: "What is the chemical symbol for water?"
  },
  {
    content: "What is the boiling point of water in Celsius?"
  },
  {
    content: "Who wrote 'Romeo and Juliet'?"
  },
  {
    content: "What is the tallest mountain in the world?"
  },
  {
    content: "What is the currency of Japan?"
  },
  {
    content: "What year did the Titanic sink?"
  },
  {
    content: "What is the chemical formula for table salt?"
  }
]

questions.each do |question_params|
  question = Question.create(question_params)

  case question.content
  when "What is the capital of France?"
    question.answers.create(content: "Paris", correct: true)
    question.answers.create(content: "London")
    question.answers.create(content: "Berlin")
    question.answers.create(content: "Rome")
  when "What is the largest mammal?"
    question.answers.create(content: "Blue Whale", correct: true)
    question.answers.create(content: "Elephant")
    question.answers.create(content: "Giraffe")
    question.answers.create(content: "Hippopotamus")
  when "Who painted the Mona Lisa?"
    question.answers.create(content: "Leonardo da Vinci", correct: true)
    question.answers.create(content: "Pablo Picasso")
    question.answers.create(content: "Vincent van Gogh")
    question.answers.create(content: "Michelangelo")
  when "What is the chemical symbol for water?"
    question.answers.create(content: "H2O", correct: true)
    question.answers.create(content: "CO2")
    question.answers.create(content: "NaCl")
    question.answers.create(content: "O2")
  when "What is the boiling point of water in Celsius?"
    question.answers.create(content: "100°C", correct: true)
    question.answers.create(content: "0°C")
    question.answers.create(content: "-273°C")
    question.answers.create(content: "212°F")
  when "Who wrote 'Romeo and Juliet'?"
    question.answers.create(content: "William Shakespeare", correct: true)
    question.answers.create(content: "Jane Austen")
    question.answers.create(content: "Charles Dickens")
    question.answers.create(content: "Mark Twain")
  when "What is the tallest mountain in the world?"
    question.answers.create(content: "Mount Everest", correct: true)
    question.answers.create(content: "Mount Kilimanjaro")
    question.answers.create(content: "Mount Fuji")
    question.answers.create(content: "Mount McKinley")
  when "What is the currency of Japan?"
    question.answers.create(content: "Yen", correct: true)
    question.answers.create(content: "Dollar")
    question.answers.create(content: "Euro")
    question.answers.create(content: "Pound")
  when "What year did the Titanic sink?"
    question.answers.create(content: "1912", correct: true)
    question.answers.create(content: "1905")
    question.answers.create(content: "1925")
    question.answers.create(content: "1939")
  when "What is the chemical formula for table salt?"
    question.answers.create(content: "NaCl", correct: true)
    question.answers.create(content: "H2O")
    question.answers.create(content: "CO2")
    question.answers.create(content: "O2")
  end
end
