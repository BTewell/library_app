# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
author = Author.create(name: "Stephen King", bio: "One of the most prolific writers in history.", genre_id: 1)
author = Author.create(name: "Phillip K Dick", bio: "An American writer known for his work in science fiction.", genre_id: 3)
author = Author.create(name: "H.P. Lovecraft", bio: "an American writer who achieved posthumous fame through his influential works of horror fiction.", genre_id: 1)
author = Author.create(name: "Isaac Asimov", bio: "An American writer and professor of biochemistry at Boston University.", genre_id: 3)
author = Author.create(name: "J.R.R. Tolkien", bio: "was an English writer, poet, philologist, and academic, widely regarded as the originator of classic high fantasy.", genre_id: 2)
author = Author.create(name: "Piers Anthony", bio: "An English-American author in the science fiction and fantasy genres.", genre_id: 2)



