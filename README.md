== Bible Jeopardy Rails App

[![Build Status](https://travis-ci.org/mikewyattdesign/bible_jeopardy.svg?branch=master)](https://travis-ci.org/mikewyattdesign/bible_jeopardy)
[![Code Climate](https://codeclimate.com/github/mikewyattdesign/bible_jeopardy.png)](https://codeclimate.com/github/mikewyattdesign/bible_jeopardy)

This app will let people play a scored version of the bible jeopardy game at 
http://dl.dropboxusercontent.com/u/15672882/MLAW/Ferguson/jeopardy.html

User Facing Features
- Sign Up via Email
- Sign Up via Facebook
- Create My Profile
- Modify My Profile
- Play a Board
- Review Clues
- View My Scores
- View Leaderboard

Admin Facing Features
- Create Clues
- Update Clues
- Delete Clues
- Create Boards
- Update Boards
- Delete Boards
- Add Categories
- Update Categories
- Delete Categories
- Create Games

Models

- Clue
- Board
- Category
- User
- Profile
- Score
- Game

Clue Model
- prompt:string
- response:string
- passage:string
- categories
- difficulty:integer

Board Model
- title:string
- categories
- scores

Category Model
- title:string
- clues

Game Model
- title:string
- boards

Score
- value:integer
- user:reference
- board

User Workflow

1. Sign Up to Play
- Enter email address
- Enter password
- confirm email address
- thanks for signup message
2a. Play a board
- Sign in using user name and password
- Click Solo Play Button
2b. Practice
2c. Edit Profile
2d. Invite a friend
