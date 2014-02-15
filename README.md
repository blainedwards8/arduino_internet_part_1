arduino_internet_part_1
=======================

Internet Arduino Tutorial - Part 1

This tutorial covers the basics of retrieving data collected from an Arduino and displaying it over the web.

Data is transferred from the Arduino using polling which occurs when the Arduino acts like a server and a
polling application sends a request to the Arduino after which the Arduino sends data back to the polling application.

In this tutorial, the polling application stores the data received from the Arduino in a Redis Server.

A Sinatra based web server is setup to display two pages.  The first is a data retrival page which communicates directly with the Redis Server
and packages the data received from the Redis Server into a JSON object.  Sinatra requires Ruby to be installed to be run.

The second pages is the index and uses AJAX to display and update the sampled infomration.

To get this to run properly, you must:
1) Install Redis
2) Install Ruby
3) Have access to Ruby Gems
4) Install the bundler gem
5) Run the "bundle install" command from the application home directory
6) Edit the polling app to update the serial port you are using
7) Start the polling application by running the command "ruby main.rb start" from the application home directory
8) Start the web server by running the command "ruby ./Web/app.rb"
9) Connect to the webserver using a web browser
