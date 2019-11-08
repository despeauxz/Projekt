# Projekt

#### What are we building? Projekt
For lack of a better name, I titled the app of this series Projekt. The goal of the app is to be a home for any amount of projects(think [Basecamp](https://basecamp.com) but much more stripped down). A project lives within a team and can have as many users as necessary. A user can only belong to one team at a time (this is a small side-effect of the Devise gem. Ultimately, we'd want to extend this to allow a single user to belong to multiple teams.)

The app will have 3 overlying models/relationships to tie together each other as we press forward but I'll outline the "wants" below:

1.  A User can create a project if they belong to a team.
2.  Creating a team assigns both your own account plus those you invite to a team.
3.  Projects require a team in order to be created.

#### The tech stack
I think it's pretty obvious we'll be using Ruby on Rails in this series. On top of Rails I wanted to approach our app with a little more modern of a mindset set. Much of the interactivity I introduce has Vue.js to think. In our Teams model for example I implement a form with nested user attributes. The end goal is to create a team and invite new users to the team all at once. Nested attributes and Vue.js make this a very fluid process.