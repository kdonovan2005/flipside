#Users
mal = User.create(name: "Malcolm Reynolds", email: "mal@firefly.com")
kaylee = User.create(name: "Kaylee Frye", email: "kaylee@firefly.com")
zoe = User.create(name: "Zoe Washburne", email: "zoe@firefly.com")
hoban = User.create(name: "Hoban 'Wash' Washburne", email: "wash@firefly.com")
inara = User.create(name: "Inara Serra", email: "inara@firefly.com")
jayne = User.create(name: "Jayne Cobb", email: "jayne@firefly.com")
simon = User.create(name: "Simon Tam", email: "simon@firefly.com")
river = User.create(name: "River Tam", email: "river@firefly.com")
derrial = User.create(name: "Derrial Book", email: "book@firefly.com")

#Issues
Issue.create(name: "Spotted Reavers?", user_id: 1, open: true, private: false)
Issue.create(name: "Fix or replace parts?", user_id: 2, open: true, private: false)
Issue.create(name: "Abandon Saffron?", user_id: 1, open: true, private: false)
Issue.create(name: "New client?", user_id: 5, open: true, private: true)
Issue.create(name: "What to do with River", user_id: 1, open: true, private: false)
Issue.create(name: "Keep Atherton?", user_id: 5, open: true, private: true)
Issue.create(name: "Contact Parents?", user_id: 7, open: true, private: false)
Issue.create(name: "Have dealings with Patience", user_id: 1, open: true, private: false)

#Pros
Pro.create(name: "They might go by and leave us alone", issue_id: 1, weight: 3)
Pro.create(name: "They might not chase", issue_id: 1, weight: 5)
Pro.create(name: "Quick fix", issue_id: 2, weight: 4)
Pro.create(name: "Probably won't break again for a while", issue_id: 2, weight: 5)
Pro.create(name: "Gets rid of the crazy chick", issue_id: 3, weight: 4)
Pro.create(name: "More money", issue_id: 4, weight: 2)
Pro.create(name: "Might be a reward in it", issue_id: 5, weight: 3)
Pro.create(name: "Keeps us far away from the authorities", issue_id: 5, weight: 5)
Pro.create(name: "He pays well", issue_id: 6, weight: 1)
Pro.create(name: "They have money and could help hide her", issue_id: 7, weight: 3)
Pro.create(name: "She can pay", issue_id: 8, weight: 5)

#Cons
Con.create(name: "They might come raid for spare parts", issue_id: 1, weight: 4)
Con.create(name: "They might chase on principle", issue_id: 1, weight: 5)
Con.create(name: "Might break again soon", issue_id: 2, weight: 5)
Con.create(name: "Costs money", issue_id: 2, weight: 5)
Con.create(name: "Moderately inhumane", issue_id: 3, weight: 5)
Con.create(name: "Might have to deal with an asshole", issue_id: 4, weight: 4)
Con.create(name: "Authorities might want to search ship", issue_id: 5, weight: 4)
Con.create(name: "Never know when she'll freak out", issue_id: 5, weight: 3)
Con.create(name: "He's an asshole", issue_id: 6, weight: 5)
Con.create(name: "They might turn her into authorities", issue_id: 7, weight: 5)
Con.create(name: "She shot Mal", issue_id: 8, weight: 4)
