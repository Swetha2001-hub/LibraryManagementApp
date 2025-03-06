
Borrowing.destroy_all
Book.destroy_all
Author.destroy_all
Category.destroy_all
User.destroy_all


authors = [
  "J.K. Rowling",
  "J.R.R. Tolkien",
  "George Orwell",
  "Jane Austen"
].map { |name| Author.create!(name: name) }


categories = [
  "Fantasy",
  "Fiction",
  "Science Fiction",
  "Classic"
].map { |name| Category.create!(name: name) }


books = [
  { title: "Harry Potter", author: authors[0], category: categories[0] },
  { title: "The Hobbit", author: authors[1], category: categories[0] },
  { title: "1984", author: authors[2], category: categories[1] },
  { title: "Pride and Prejudice", author: authors[3], category: categories[3] }
]

books.each { |book_data| Book.create!(book_data) }


users = [
  { name: "Alice", email: "alice@example.com" },
  { name: "Bob", email: "bob@example.com" }
]

users.each { |user_data| User.create!(user_data) }

puts "Database successfully seeded!"
