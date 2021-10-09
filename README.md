# Gamer Gang App
## Version 1.0 (Initial Release) 10/08/2021

### User Story
The Gamer Gang app allows gamers to create a profile. Their profile shows their gamer information. The user can update their profile photo, about section and email address. The user can view their game library list.

### MVP
* Create new user (POST)
* Login to user profile
* Show user game library (GET)
* Update user settings/preferences (PATCH)

### Stretch Goals
* Delete user profile (DELETE)
* Add/remove games from user's game library (POST and DELETE)
* Add/remove friends from friend list (POST and DELETE)
* Show games in common with friends
* Show genres in common with friends
* Show recommended games (based off genres in user game library)
* Dark mode
* Cool background graphics, personal avatar
* Compare game high scores to friends
* Create new games (POST)

### Launch Backend Sinatra App
GitHub Repository
* https://github.com/cguliuzza/phase-3-sinatra-backend

Terminal Commands:
*   $ git clone git@github.com:cguliuzza/phase-3-sinatra-backend.git
*   $ bundle install
*   $ rake db:migrate
*   $ rake db:seed
*   $ rake server

Local Host Server:
* http://localhost:9292
* http://localhost:9292/users
* http://localhost:9292/games

How to Find Active Servers and Kill Them:
*   $ lsof -i:9292
*   $ kill -9 < PID >  
=>  EXAMPLE: kill -9 26783

### Launch Frontend React App
GitHub Repository
* https://github.com/itsgabeover/phase-3-frontend

Terminal Commands:
*   $ git clone git@github.com:itsgabeover/phase-3-frontend.git
*   $ npm install react-router-dom
*   $ npm i && npm start

## Phase 3 Flatiron School Project
Collaborators: Gabriel Miranda, Tina Guliuzza, Gabriel Rodriguez, Francisco Andrade

