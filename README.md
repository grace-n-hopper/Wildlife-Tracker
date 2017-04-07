# _Wildlife Tracker_

#### _Independent Java Project for Epicodus - Week Four: 7 April 2017_

#### By _**Grace Stuart (gstuart)**_

### Description
Project which I am provided with the code containing the basic classes, Spark setup, VelocityTemplateEngine, vtl template structure, routing in App.java, tests, and database setup instructions, which I am to test, correct errors, and complete the requirements for. The finished project is an application for the forest service to track animals for an environmental impact study.

The Forest Service is considering a proposal from a timber company to clearcut a nearby forest of Douglas Fir. Before this proposal may be approved, they must complete an environmental impact study. This application was developed to allow Rangers to track wildlife sightings in the area.

### Setup/Installation Requirements
1. Install Java JRE (Runtime Enviornment).
2. Install Postgres.
3. Install Gradle.
4. Clone this repository onto your desktop. This will place the all files and folders in onto your computer.
5. Start Postgres in an additional terminal tab, and psql in yet another.
6. In psql tab enter `CREATE DATABASE wildlife_tracker;`
7. In terminal tab enter `psql wildlife_tracker < wildlife_tracker.sql`
8. In psql tab enter `\c wildlife_tracker` then `\dt`
9. In terminal tab enter `gradle run`
10. Navigate to 0.0.0.0:4567 in your internet browser

### Manual Database Creation
To create the necessary databases, launch postgres, then psql, and run the following commands:

* `CREATE DATABASE wildlife_tracker;`
* `\c wildlife_tracker;`
* `CREATE TABLE animals (id serial PRIMARY KEY, name varchar);`
* `CREATE TABLE endangered_animals (id serial PRIMARY KEY, name varchar, health varchar, age varchar);`
* `CREATE TABLE sightings (id serial PRIMARY KEY, animal_id int, location varchar, ranger_name varchar);`
* `CREATE DATABASE wildlife_tracker_test WITH TEMPLATE wildlife_tracker;`

### Database Diagram
[Click here](https://www.lucidchart.com/documents/view/3e2254ed-e6fe-41da-bcc7-6c7e371cd624)  to access link to database diagram.

### Known Bugs
> 1. Animal id's are unique based on their category, but not unique across all animals. For example, Gray Wolf is #1 (in endangered_animals), as is Beaver (listed in all animals section). This is causing sightings to be entered for both animals, not the single intended animal, (i.e., user enters sighting of Gray Wolf, and the system enters the sighting for both the Wolf and the Beaver).
> 2. Endangered animals are not included in the All Animals & Sightings section of the application.
> 3. Link to each animal includes all text, not just "Click for Details".
> 4. Can submit empty or invalid characters in a non-endangered animal sighting report.
> 5. Can submit empty or invalid characters in an endangered animal sighting report.
> 6. User can submit empty or invalid characters when adding an animal to the system.
> 7. User can not delete entry.
> 8. User can not update entry.
> 9. Recording date of sighting not displayed in details.
> 10. Data is being saved to regular database, not test database.
> 11. Date of sighting not saved in database.

## Technology Used To Create Portfolio
* Java
* JUnit
* Gradle
* Spark
* Velocity
* Postgres
* PSQL

## Specifications
|Behaviors|Input|Output|
|-----------|:-------:|:--------:|
|Application creates instance|-|true|
|Application adds unique id to instance|-|1|
|Application adds name to instance|Wolf|Wolf|
|Application categorizes instance|Endangered Animal|true|
|Application adds health to categorizes instance|Healthy|Healthy|
|Application adds age to categorizes instance|Young|Young|
|Application adds date to instance creation|April 7 2017|April 7 2017|
|Application counts the number of instances|2|2|
|Application updates instance details|Grey Wolf|Gray Wolf|
|Application captures all instances|Gray Wolf, Fox, Beaver|Gray Wolf, Fox, Beaver|

### License
**GLP License** Copyright (c) 2017 **_Grace Stuart_**
