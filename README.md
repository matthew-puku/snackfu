# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Sanckfu Website: https://blooming-tor-56677.herokuapp.com/
Github: https://github.com/matthew-puku/snackfu

## Versions:

Ruby version - 2.6.2
Ruby on Rails version - 5.2.3

# Description of your project, including,
## Problem definition / purpose

The project is a 2 way marketpace based on the buying and selling of snacks.

The purpose is for users to be able to buy and sell their favourite snacks anywhere in the world and have it shipped to them.

## Functionality / features

Users can register an account
Login/logout of their account
Buy snacks
Post a listings to sell snacks
manage their profile
manage their lisiting

## Screenshots

## Tech stack (e.g. html, css, deployment platform, etc)

Ruby 
Ruby on Rails
Html
Css
Javascript

## Instructions on how to setup, configure and use your App.

Users are able to view the home page and view listings without having to register and login first. If a user wishes to post a lisitng or purchase a lisitng then they are required to login fisrt or register if they have not done so. The navigation bar is present on every page and users have to option to register or login at any time. Once users have found their desired snack and wish to purchase, they will be directed to an orders page where checking out will lead to stripes payment page.

# Design documentation including,

## Design process

## User stories

User stories are provided below.

## A workflow diagram of the user journey/s.

## Wireframes

![home](https://user-images.githubusercontent.com/47685649/57110523-2a073b00-6d7c-11e9-80ae-8cba3ae61317.png)
![Lisiting-new](https://user-images.githubusercontent.com/47685649/57110738-ebbe4b80-6d7c-11e9-820a-494936267a98.png)
![Lisiitng-show](https://user-images.githubusercontent.com/47685649/57110732-e3661080-6d7c-11e9-895a-4fe16697e25c.png)
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

## What is the need (i.e. challenge) that you will be addressing in your project?

Snacks

## Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs 
## solving?

The problem that we are addressing is that when people go travelling overseas, their favourite snacks  are never available in the local grocery shops( ie. tim tams, shapes). People need their favourite snacks to stay happy and to give them something to remind them of home.

## Describe the project will you be conducting and how. your App will address the needs.

The project is a 2 way marketplace that will let users buy and sell snacks from around the world.

## Describe the network infrastructure the App may be based on.

The application will be deployed using Heroku which use HTTP to route their severs and it’s what is used to transmit the data. The data is requested by a set of routers which determine where and how the web page will be displayed.

## Identify and describe the software to be used in your App.

The Software used in the application are; Ruby on Rails, Github, Heroku, Stripe, Cloudinary.
For a description of what each gem does please refer to question 10.

## Identify the database to be used in your App and provide a justification for your choice.

Postgres was used in this application not only because we are required to but also becuase of its reliabilty and architecture and it's free and open source. Postgres comes with many features that help manage and build an application.

## Identify and describe the production database setup (i.e. postgres instance).

## Describe the architecture of your App.

Since we are using Ruby on Rails for this project the architecture features are Models, Views, and Controllers.

The Models are used to interact with their related elements in a database and represents the information in the application. 

The Views are the front-end visuals that the user sees using mainly HTML and CSS, embedded with ruby.

Controllers are the middle man between Models and Views. The Controllers process the Models data and pass it through to the Views.

## Explain the different high-level components (abstractions) in your App.

## Detail any third party services that your App will use.

 Rspec – is a third-party technology that is used to test the Ruby application via automated testing. It is the most frequently used testing library for Ruby in production applications. Automated testing prevents regression and speeds up development as well as leads to writing better code.

Cloudinary - is a third party, cloud-based service that provides an end-to-end image and video management solution. The software is used so that video and images are not limited to local storage and can be accessed anywhere in the world.

Stripe – is a third party, online payment service that handles all the clients transactions. Using server checkout, allows the rails application to handle payments without storing the clients information on your server which prevents any stolen card information if application were breached.

Devise – is a popular third party authentication framework that handles all the controllers, models, and views that relate to authentication.  The gem comes with many different modules that allow for customization. The final product of adding the Devise gem, allows the rails application to create a login and signup form.

Heroku – is a third party company that allows developers to deploy and monitor their software. Heroku is easy to use and is fully managed which means that the applications are maintained on their cloud servers. Using this service allows the app to be accessed any where in the world.

  

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

The team has set all tasks on a Trello Board where you allocate tasks individually and mark them for review. Once the team has reviewed the task the it is marked as done.

## Discuss how Agile methodology is being implemented in your project.

Each Trello task has been assigned a timeframe based on the complexity and length of that task. Tasks are labeled and sorted by shirt sizes (XS - XL), colors and time lengths. When a team member chooses to do a task, they drag that task from the "To-do" secton into the "Doing" section. Once that task is completed, the task is dragged into the review secton where the other team members merge the updated app and review. Once all memebers have the updated code and have reviewed it, the task is then dragged into the "Done" section.

## Provide an overview and description of your Source control process.

Source control is the process of logging and controlling changes made to the application so that they can be recalled if need be. The method we used was local version control where individuals could work from their own systems and code different sections. They would create a feature branch and once completed section they would merge it with the master branch then push it up to github. This method while helpful in the fact we could all work on separate tasks, has created many conflicts. This has resulted in reverting to older commits.

## Provide an overview and description of your Testing process.

## Discuss and analyse requirements related to information system security.

Information System Security refers to the process of keeping user data safe and secure. This is covered in more detail on questions 22 and 23.

## Discuss methods you will use to protect information and data.

For this project we use Devise which is a third party technology that handles the users authentication. Devise use B-crypt to securely store user data and they have thousands of hours of code review and testing making them the most used authentication framework. We also use a third party company for payment information called Stripe.  Being a company that handles sensitive information, they take security very seriously and in doing so, they only store user data on their own servers.

## Research what your legal obligations are in relation to handling user data.

Under the Privacy Act 1988, users data is protected from things such as; misuse, loss, and unauthorised access.  We are obligated under law not to use user data in any way where not authorised.
