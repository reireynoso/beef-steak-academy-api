# Task Academy API

Task Academy is a combination of registering for courses and task managing. Users are able to login or signup and enroll for preexisting courses. Within each course are tasks/assignments that can be completed. Upon completion, users are able to drag and drop the task/assignment to a finished list as a way of keeping track of tasks already completed.

Frontend Repo: https://github.com/reireynoso/Taskcademy-client 

## Getting Started
First, fork and clone this repo. Change directory into beef-steak-academy-api. 

### Prerequisites
Ruby and Rails and Postgresql have to be installed on your computer. 

* If it is not installed, start by going in your terminal, and type:

brew install rbenv ruby-build

### Install Ruby
rbenv install 2.6.3
rbenv global 2.6.3
ruby -v (to verify)

### Install Rails
gem install rails -v 5.2.3
rails -v (to verify)

### Install Postgresql
brew install postgresql

Once the Ruby on Rails has been setup and installed, run 

bundle install 
rails db:create 
rails db:migrate 
rails db:seed 
rails server 

seqentially on your terminal to get the rails api started.

## Built With
Ruby on Rails - The api server used

## Authors
Reinald Reynoso
Mallory Woods
Brenden Williams

## Acknowledgments
* Flatiron School