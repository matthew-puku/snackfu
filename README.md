# README

* Website: https://blooming-tor-56677.herokuapp.com/
* Github: https://github.com/matthew-puku/snackfu

## Versions:

Ruby version - 2.6.2
Ruby on Rails version - 5.2.3

# Description of your project, including,
## Problem definition / purpose

Snackfu is a 2 way marketpace based on the buying and selling of snacks.

The purpose is for users to be able to buy and sell their favourite snacks anywhere in the world and have it shipped to them.

## Functionality / features

Users can register an account
Login/logout of their account
Buy snacks
Post listings to sell snacks
Edit their profile
Edit their lisitings

## Screenshots

## Tech stack (e.g. html, css, deployment platform, etc)

Snackfu is a Ruby on Rails app, deployed on Heroku. It uses Postgres as a database. Ruby on Rails depends on html, css and sass. We also used bootstrap because our main frontend developer was more familiar with it than with newer native CSS. It also runs more reliably on IE =]

## Instructions on how to setup, configure and use your App.

Setup is fairly involved. Rather than give a step-by-step guide on each operation, the broad outlines are given here:

* Install Ruby, Postgres, Rails, imagemagick and Bundler
* Clone this repo to the local machine
* Create in the root repo directory a file called ".env"
* In .env, fill in the following information:
** `DB_USERNAME=`
** `DB_PASSWORD=`
** `CLOUDINARY_CLOUD_NAME=`
** `CLOUDINARY_API_KEY=`
** `CLOUDINARY_API_SECRET=`
** `STRIPE_API_KEY_SECRET=`
* In app/views/orders/new.html.erb, replace the public Stripe key with your own.
* By default, the app uses local storage for image upload when run locally. To test cloud-based image upload, navigate to config/environments/development.rb and change this line: `config.active_storage.service = :local` to `config.active_storage.service = :cloudinary`
* Navigate to the repo directory in the command line and run:
** `bundle install`
** `rails db:create`
** `rails db:migrate`
** `rails s`
* Visit the website on your local server. By default, this is at http://localhost:3000/

Users are able to view the home page and view listings without having to register and login first. If a user wishes to post a listing or purchase a listing, they must login or register. The navigation bar is present on every page and users have to option to register or login at any time. Once users have found their desired snack and wish to purchase, they will be directed to an orders page where checking out will lead to stripes payment page.

# Design documentation including

## Design process

The design was fleshed out on many, many whiteboards in the first day of the project. We started by architecting our database, then drew up a userflow diagram in the form of every view we thought the user would need. Our implementation matched our design very closely, though we didn't finish every piece of functionality we planned. Future extension would not be difficult as the design already accounts for it.

## User stories

User stories are provided below.

## A workflow diagram of the user journey/s.

## Wireframes

![home](https://user-images.githubusercontent.com/47685649/57110523-2a073b00-6d7c-11e9-80ae-8cba3ae61317.png)
![Listing-new](https://user-images.githubusercontent.com/47685649/57110738-ebbe4b80-6d7c-11e9-820a-494936267a98.png)
![Listing-show](https://user-images.githubusercontent.com/47685649/57110732-e3661080-6d7c-11e9-895a-4fe16697e25c.png)
![Login-register](https://user-images.githubusercontent.com/47685649/57110752-f842a400-6d7c-11e9-9f55-f64b99196e0f.png)
![Search](https://user-images.githubusercontent.com/47685649/57110764-0395cf80-6d7d-11e9-9d18-43faa9ff18a1.png)
![User](https://user-images.githubusercontent.com/47685649/57110768-098bb080-6d7d-11e9-9beb-ce59f6b6d735.png)

## Database Entity Relationship Diagrams
![erd](https://user-images.githubusercontent.com/47685649/57112070-d7c91880-6d81-11e9-97e1-aa6271b00e22.PNG)

# Details of planning process including,

## Project plan & timeline
![timeline](https://user-images.githubusercontent.com/47685649/57111931-4a85c400-6d81-11e9-9e3f-d29587b68eb7.PNG)

## Screenshots of Trello board(s)
Link to Trello Board: https://trello.com/b/FThU2MiO/tasks
![trello capture](https://user-images.githubusercontent.com/47685649/57110834-4657a780-6d7d-11e9-9555-8b3c8ee587c9.PNG)

------------------------------------------------------------------------------------------------------------------------
# Answers to the Short Answer questions (Section 2.2)

## 1. What is the need (i.e. challenge) that you will be addressing in your project?

Snacks. See 2.

## 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

The problem that we are addressing is that when people go travelling overseas, their favourite snacks are never available in the local grocery shops( ie. tim tams, shapes). People need their favourite snacks to stay happy and to give them something to remind them of home.

## 3. Describe the project will you be conducting and how. your App will address the needs.

The project is a 2 way marketplace that will let users buy and sell snacks from around the world.

## 4. Describe the network infrastructure the App may be based on.

The application is deployed on Heroku. Heroku has its own peculiar language. Once deployed, the app is installed as a "slug" onto one or more virtual machines, called "dynos". HTTP requests sent by users land in Heroku's routers, which send them on to whichever dyno is deemed best equipped to handle it. The dyno then processes the request and (if applicable) sends a response back through the routers to the user. When processing user requests, dynos often request additioal work from "addons". The only addon used by SnackFu is the postgres database. SnackFu only uses one low-powered dyno, but if it had two or three, all dynos would access the same postgres instance.

## 5. Identify and describe the software to be used in your App.

* Ruby
** A powerful interpreted language. Can be very powerful, expressive, and readable, but its lack of constraints also makes it easy to write bugs. Because it's an interpreted language, it is slow and not well suited to computationally intense applications like video rendering. For low-intensity webapps like SnackFu, it is ideal.
* Ruby on Rails
** A web development framework. Allows for speedy building of web applications using MVC paradigm.
** Requires very little configuration relative to other web frameworks
* Postgres
** An open-source SQL implementation. For more detail, see questions 6 and 7.
* HTML & CSS
** HTML is a simple markup language used to structure web documents. CSS instructs web browsers on how to render the HTML.
* Javascript
** A trainwreck of an interpreted language. Its one advantage over Ruby, Python, or any other sane programming language is that it runs natively in web browsers. Its use in this app is limited to Bootstrap (which abstracts away all actual javascript programming) and Stripe (which provides a small script to copy and paste into webpages where it's required).
* Bootstrap
** The original way to get beautiful, responsive web layouts to display consistently without destroying developer sanity. It is used in this app because native CSS implementations are not quite up to scratch on all modern browsers. Additionally, our main front-end programmer was familiar with its use.
* Imagemagick, and its tie-in gem image_processing
** Image processing software, used in SnackFu to resize images. The image_processing gem is used to relay commands to Imagemagick, which is a seperate program which must be installed locally. Heroku has it installed by default.
* Rspec
** Used to test the Ruby application via automated testing. It is the most frequently used testing library for Ruby in production applications. Automated testing prevents regression and speeds up development and leads to writing better code.
* Devise
** A popular third party authentication framework that handles all the controllers, models, and views that relate to authentication.  The gem comes with many different modules that allow for customization. The final product of adding the Devise gem, allows the rails application to create a login and signup form.
* Cloudinary, Font-Awesome & Stripe gems
** Interface with Cloudinary, font-awesome and Stripe, which are third party services described in more detail in question 10.
* dotenv-rails
** A gem that allows for simple implementation of environment variables for development and testing environments. It's important to keep passwords in a file which is not pushed to remote references. Dotenv provides simple facility for doing this.

The Software used in the application are; Ruby on Rails, Heroku, Stripe, Cloudinary.
For a description of what each gem does please refer to question 10.

## 6. Identify the database to be used in your App and provide a justification for your choice.

Postgres was used in this application because of its reliabilty, architecture, price (free) and open-source nature. Postgres is additionally really easy to use, supports many datatypes (in case of future expansion) and allows us to use the same database in development, testing, and production.

## 7. Identify and describe the production database setup (i.e. postgres instance).

Heroku runs a postgres instance. Our dyno (which runs SnackFu) queries the database as necessary.

## 8. Describe the architecture of your App.

Snackfu follows a Model, View, Controller paradigm.

* Models are used to interact with their related elements in a database and represents the information in the application. 
* Views are the front-end visuals that the user sees. Views are rendered when requested to by controllers. Views use mainly HTML and CSS. Embedded Ruby allows for content to be generated dynamically.
* Controllers are the middle man between Models and Views. The controllers recieve requests from the router, and in turn make requests of the models data and pass it through to the views.

## 9. Explain the different high-level components (abstractions) in your App.

See above in question 8.

## 10. Detail any third party services that your App will use.

* Cloudinary
** A third party, cloud-based service that provides an end-to-end image and video management solution. The software is used so that video and images are not limited to local storage and can be accessed anywhere in the world.
* Stripe
** A third party online payment service that handles all the clients' transactions. Using server checkout allows the rails application to handle payments without storing the clients information on your server which prevents any stolen card information if the application were breached, and shifts the enormous burden of regulatory compliance in various jurisdictions to Stripe.
* Font Awesome
** Used to display social media icons. Font awesome maintains a large collection of icons which look great and are regularly updated. Using their service lowers SnackFu's maintenance burden, as we don't need to worry about creating and updating icons as social media services come, go, and perform redesigns.
* Heroku
** A platform as a service that allows developers to deploy and monitor their software. Using Heroku allows the app to be accessed any where in the world. See question 4 for more detail.
* Git
** Not used by the app as such, but integral to its development. Also used to to deploy to Heroku. For more detail on its use in development, see question below.

  

## Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Most purchased goods marketplaces are similar to our own as they all follow the same structure for user accessibility. These sites include; Ebay, Gumtree, Amazon, Etzy, etc.

## Discuss the database relations to be implemented.

Refer to ERD diagram above
A User has a one to many relationship with an Order and a one to many relationship with a Listing. A Listing has a one to many relationship with a review. An Order has a many to many relationship with a listing.

## Describe your project’s models in terms of the relationships (active record associations) they have with each other.

Users model has_many listings

Users model has_many orders

Listing model has_many order

Orders model has_many listings

Lisitng model has_many reviews ???

Reviews belong_to Listings

Address belongs_to Users

Address belongs_to Listings

Address belongs_to Order

## Provide your database schema design.

Provided above.

## Provide User stories for your App.

US1: As a user I can register an account

US2: As a user I can log into my account

US3: As a user I can search for products

US4: As a user I can sell products

US5: As a user I can buy products

US6: As a user I can upload images

US7: As a user I can ship products

US8: As a user I can write a review

US9: As a user I can log out of my account

US10: As a user I can edit my listing

US11: As a user I can delete my listing

## Provide Wireframes for your App.

Wireframes provided above

## Describe the way tasks are allocated and tracked in your project.

The team set all tasks on a Trello Board where you allocate tasks individually and mark them for review. Once the team has reviewed the task the it is marked as done.

## Discuss how Agile methodology is being implemented in your project.

Each Trello task has been assigned a timeframe based on the complexity and length of that task. Tasks are labeled and sorted by shirt sizes (XS - XL), colors and time lengths. When a team member chooses to do a task, they drag that task from the "To-do" secton into the "Doing" section. Once that task is completed, the task is dragged into the review secton where the other team members merge the updated app and review. Once all memebers have the updated code and have reviewed it, the task is then dragged into the "Done" section.

## Provide an overview and description of your Source control process.

Source control is the process of logging and controlling changes made to the application so that they can be recalled if need be. The method we used was local version control where individuals could work from their own systems and code different sections. They would create a feature branch and once completed section they would merge it with the master branch then push it up to github. This method while helpful in the fact we could all work on separate tasks, has created many conflicts. This has resulted in reverting to older commits.

## Provide an overview and description of your Testing process.

## Discuss and analyse requirements related to information system security.

Information System Security refers to the process of keeping user data safe and secure. This is covered in more detail on questions 22 and 23.

## Discuss methods you will use to protect information and data.

For this project we use Devise which is a third party technology that handles the users authentication. Devise use B-crypt to securely store user data and they have thousands of hours of code review and testing making them the most used authentication framework. We also use a third party company for payment information called Stripe. Being a company that handles sensitive information, they take security very seriously and in doing so, they only store user data on their own servers.

## Research what your legal obligations are in relation to handling user data.

Under the Privacy Act 1988, users data is protected from things such as; misuse, loss, and unauthorised access.  We are obligated under law not to use user data in any way where not authorised.
