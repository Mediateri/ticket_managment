# Overview

This is Api which is designed for ticket managment system.

# version information

* Rails version:  6.1.7
* Ruby version: 2.7.2 (x86_64-linux)

# List of Features

## Create Bus 
  When You want to create Bus use the following steps:
  * method: post
  * URI Pattern: /cars
  * parameters(body): plate_no, no_seats, schedule_id, driver
  * parameter(headers): Authorization
## Update Bus 
  When You want to update Bus use the following steps:
  * method: put
  * URI Pattern: /cars/:id
  * parameters(body): plate_no, no_seats, schedule_id, driver
  * parameter(headers): Authorization
## Read Bus 
  When You want to read Bus use the following steps:
  * method: get
  * URI Pattern: /cars/:id
  * parameter(headers): Authorization
## Create Main Route
  When You want to create main route use the following steps:
  * method: post
  * URI Pattern: /routes
  * parameters(body): start_point, end_point, cost
  * parameter(headers): Authorization
## Update Main Route 
  When You want to update main route use the following steps:
  * method: put
  * URI Pattern: /routes/:id
  * parameters(body): start_point, end_point, cost
  * parameter(headers): Authorization
## Read Main Route
  When You want to read main route use the following steps:
  * method: get
  * URI Pattern: /routes/:id
  * parameter(headers): Authorization
## Create Schedule 
  When You want to create schedule use the following steps:
  * method: post
  * URI Pattern: /schedules
  * parameters(body): route_id, time
  * parameter(headers): Authorization
## Read Schedule
  When You want to read schedule use the following steps:
  * method: get
  * URI Pattern: /schedules/:id
  * parameter(headers): Authorization
## Generate Ticket
  When You want to generate ticket use the following steps:
  * method: post
  * URI Pattern: /tickets
  * parameters(body): name, from, to, price, schedule_id
  * parameter(headers): Authorization
## View Generated Ticket 
  When You want to view generated use the following steps:
  * method: get
  * URI Pattern: /tickets/:id
  * parameter(headers): Authorization
## Create user
  When You want to create user use the following steps:
  * method: post
  * parameters(body): name, username, email, password, password_confirmation
  * path: /users
## Read user
  When You want to read use the following steps:
  * method: get
  * URI Pattern: /users/:_username
  * parameter(headers): Authorization

## Authenticate User
  When You want to authenticate user use the following steps:
  * method: post
  * parameters(body): email, password
  * Path: /auth/login

# Notice
* what you in header parameter shoul be token and this token you receive only after authenticating

# Scheduled to use Gem
 * bootstrap
 * bcrypt
 * kaminari
 * devise
 * rails_admin
 * jquery
* ...
