# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create email: 'owentaaffe@gmail.com', password: 'new-password'
                                                                   
Bookstore.create (title: "HTML and CSS. Design and Build Websites", description: "Jon Duckett has made the very sensible decision that a book on web design should be well designed, should look inviting and should show as much as it tells.", author: "Jon Duckett", price: 11.99 )
Bookstore.create (title: 'JavaScript and JQuery. Interactive Front-End Web Design', description: 'on Duckett followed up his HTML / CSS book with one on an equally important part of web design, JavaScript. JavaScript is the programming language that adds functionality to the websites designed using HTML and CSS.', author: 'Jon Duckett', price: 17.99 )
Bookstore.create (title: 'BTEC Level 3 National Health and Social Care. Student Book 1', description: 'Resources designed to support learners of the 2010 BTEC Level 3 National Health and Social Care specification. ', author: 'Ms Carolyn Aldworth & Ms Marilyn Billingham ', price: '22.99' )
Bookstore.create (title: 'Marketing Channels. A Management View 8th Edition ', description: 'Provides a management focus and managerial framework to the field of marketing channels. This title covers theory, research, and practice and blends them into a discussion that stresses decision making implications. It reflects global, socio-cultural, environmental, and technological changes that have taken place within the industry.', author: 'Bert Rosenbloom', price: '39.99' )
Bookstore.create (title: 'Strategic Management of e-Business', description: 'This book focuses on the strategic implications of e-Business and examines the e-business strategies being employed by firms in a range of different industry sectors. This new edition contains updated and new case studies, as well as recognizing the developments in the field. Written for students under-taking a MBA, final year undergraduate students and executive education courses, this book will also be a valuable resource for consultants and practitioners who need to gain a greater understanding of the strategic issues underpinning e-Business.', author: 'Stephen Chen', price: '24.99' )

Students.create (first_name: 'Owen', last_name: 'Taaffe', email: 'owentaaffe@gmail.com' user_id: 1 )
Students.create (first_name: 'John', last_name: 'Paul', email: 'johnpaul@example.ie' user_id: 12 )
Students.create (first_name: 'Sally', last_name: 'Grant', email: 'sallygrant@example.com' user_id: 11 )
Students.create (first_name: 'Mary', last_name: 'OHara', email: 'maryohara@example.ie' user_id: 4 )
Students.create (first_name: 'Urla', last_name: 'Ramsey', email: 'urlaramsey@examply.ie' user_id: 7 )
Students.create (first_name: 'Andy', last_name: 'Mears', email: 'andymears@example.ie' user_id: 9 )

Tutors.create (first_name: 'Susan', last_name: 'Peters', email: 'susanpeters@example.ie' user_id: 5 )
Tutors.create (first_name: 'Brian', last_name: 'Moore', email: 'brianmoore@example.ie' user_id: 10 )
Tutors.create (first_name: 'Paul', last_name: 'Conner', email: 'paulconner@example.com' user_id: 3 )
Tutors.create (first_name: 'Mick', last_name: 'Hartford', email: 'mickhartford@example.ie' user_id: 6 )