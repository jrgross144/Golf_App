# Golf Scorecard App

This app is to help golfers keep track of their scorecards and get some 
analytics on how they golf based on weather, course, hole type and other variables

Current Features:
* Golfers with a name, profile picture, and a handicap
* Golf Courses with a name, par, yards, course rating, slope and user average
* Holes with a hole number, picture of the hole layout, course, 
    par, yards, and handicap
* Outings with a date, golfers and rounds
* Rounds with a score, golfer, course, outing and group of holes they played
* Hole score with a score and a round

Potential Features
* Take an image of a scorecard and fill out data on website based on 
    par, score, yards, etc.
* Parse an image of the course layout into images of each hole
* Change the current Ruby on Rails app into a Ruby on Rails API to allow
    a web frontend in a different language and a mobile app
* Track location on the mobile app and suggest club based on 
    learned ranges for clubs
* Track users score as they are playing
    * Try to automatically track the golfer's swing
    * Add a water hazard button
* Provide analytics for the golfer's average on a course, hole, etc., as well as,
    all golfers' averages for that hole, course, etc.
* Incorporate weather into analytics and predictions on how the golfer will play
    * Have notifications for nice weather and suggest that a golfer goes golfing
* Add hole types and features, like dog leg left, 
    bunker in the middle of the fairway, etc.
* Use professional golfers as examples to train machine learning models for 
    learning the most important factors in how a user golfs
