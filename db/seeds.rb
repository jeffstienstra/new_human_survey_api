user1 = User.create(
  email: "Jeff@test.com",
  password: "password",
  survey_complete: true,
)

user2 = User.create(
  email: "like_a_bross@test.com",
  password: "password",
  survey_complete: true,
)

user3 = User.create(
  email: "test@test.com",
  password: "password",
)

user1.favorites.create(category: "drink", description: "New Holland Dragon's Milk")
user1.favorites.create(category: "drink", description: "Starbucks Pike Place")
user1.favorites.create(category: "snack", description: "Cookie dough (with dark chocolate chips and not too much peanut butter)")
user1.favorites.create(category: "snack", description: "Fresh cherries")
user1.favorites.create(category: "person", description: "Amanda - spouse")
user1.favorites.create(category: "person", description: "Kate - daughter - 16 yrs")
user1.favorites.create(category: "person", description: "Olivia - daughter - 14 yrs")
user1.favorites.create(category: "person", description: "Eli - son - 12 yrs")
user1.favorites.create(category: "person", description: "Ruby - daughter - 0.75 yrs")
user1.favorites.create(category: "person", description: "Patrick - foster-son - 8 yrs")
user1.favorites.create(category: "person", description: "Sandra - foster-daughter - 23 yrs")
user1.favorites.create(category: "person", description: "Wanda - foster-daughter - 25 yrs")
user1.favorites.create(category: "person", description: "Roxana - foster-daughter - 25 yrs")
user1.favorites.create(category: "person", description: "Sara - foster-(grand?)daughter - 4 yrs")
user1.favorites.create(category: "person", description: "Amal - foster-(grand?)daughter - 2 yrs")
user1.favorites.create(category: "person", description: "Sadie Mae - Cocker Spaniel/Golden Retriever - 2 yrs")
user1.favorites.create(category: "person", description: "Cuddles - cat - 9 yrs")
user2.favorites.create(user_id: 2, category: "drink", description: "Quirst Lemonade Soda")
user2.favorites.create(user_id: 2, category: "snack", description: "Happy little apple slices with a touch of cashew butter if you're in the mood.")
user2.favorites.create(user_id: 2, category: "person", description: "Peapod - my tiny little pocket squirrel")

user1.abouts.create(
  user_id: 1,
  name: "Jeff Stienstra",
  accomplishments: "Receiving a Full Stack Software Development Certificate from Actualize Coding Bootcamp",
  superpower: "Drumming!",
)

user2.abouts.create(
  user_id: 1,
  name: "Bob Ross",
  accomplishments: "Painting beautiful paintings",
  superpower: "Relaxation",
)

user1.goals.create(
  short_term_goal: "Find fulfilling employment! :)",
  long_term_goal: "Create a cooperative/multiplayer video game or a full length film.",
)

user2.goals.create(
  short_term_goal: "Get a crew cut.",
  long_term_goal: "Learn to paint little animal friends.",
)
