## Objective
* Create a back-end infrastructure for [Picsta](https://peterchang2.github.io/full-stack-front-end-client/), a simple image storing application using [Ruby and Rails](https://github.com/peterchang2/full-stack-back-end-api) and [Heroku](https://picstafame.herokuapp.com/).

## Description
The API will store user information and resources associated with the user. Resources include the date, caption, and image url of a user's choosing. the image url will be validated and appended to the client view.

## Technologies Used
* Ruby
* Ruby on Rails
* PostgreSQL
* Heroku
* Javascript
* JQuery
* AJAX

## Thought Process & Steps
* Built user authentication and tested with curl-scripts.
* Built user authentication front end and tested in localhost browser.
* Scaffolded the proper table and columns, and declare proper relationships between user and resources.
* Used curl-scripts to create/update/delete resources.
* Built front-end controls to create/update/delete resources.
* Styling

## ERD (entity relationship diagram)
![ERD](https://i.imgur.com/maFeqZF.jpg?2)

## Future Implementations
* gifv/webm/mp4 Implementations.
* More resources linked to the user.
* Linking with AWS so user can upload actual images or gif files.
* Better CSS.
