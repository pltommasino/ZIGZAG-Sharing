# ZIG ZAG SHARING :car:

![ZIGZAG-noback](https://user-images.githubusercontent.com/123829470/230737612-6f932106-bf10-4222-b683-0b842355e50d.png)

## GOAL

I wanted to design and deploy a database of **sharing company** for the purpose of supporting the customer app. The company has different vehicles and capacities, distributed in major Italian cities: 
1) Scooter (in script: `monopattino`, max 1 seats), 
2) Scooter (in script: `scooter`, max 2 seats) 
3) Car (in script: `auto`).

## DECRIPTION

The vehicles are bookable through the app provided to the customer who can define their preferred city and view their ride history. In addition, the app will allow through the selection of the number of passengers to view only the appropriate vehicles, within a radius of 1km.

Vehicles can be disabled by the administration at any time for maintenance purposes by making them not visible on the customer's app.

With `utente` means the real people who physically interact with the service, more precisely they cannot modify its structure but they can access its contents. They have, in addition, the possibility of being able to book up to a maximum of 6 other passengers, all connected to the same customer. Of each customer we want to store his first name, last name, his email and his birthday.

With `passeggero` means those persons accompanied by the client, and entered by the client in the reservation itself. Each customer in his vehicle can accommodate a maximum of 6 people excluding the customer himself.

With `mezzitrasporto` means a device used to transport people, animals or objects.

With `prenotazione` means having the vehicle reserved in advance and found available at an earlier time. The reservation varies according to the number of passengers that are entered. In the case where between 2 and 6 passengers are entered, the means available is the car; in the case where exactly 1 is entered, the means available are the car and scooter. If no passenger is entered in the reservation the available means assigned will be the car, scooter or scooter.

With `localita` means an human settlement, extensive and stable, differing from a town or village in size, population density. The company, as previously mentioned, offers service in all major Italian cities.

## E-R MODEL

The first phase of design is the **conceptual** phase. It is a modeling of the reality you want to represent, making the Entity-Relation Model. An **Entity-Relationship Model** (or ER model) describes interrelated things of interest in a specific domain of knowledge. A basic ER model is composed of entity types (which classify the things of interest) and specifies relationships that can exist between entities (instances of those entity types).

<img width="996" alt="modelloER" src="https://user-images.githubusercontent.com/123829470/230714526-2bd48549-1617-41ea-a5e1-f58907543b58.png">

## LOGIC MODEL

Once the conceptual phase has been completed, and the E-R model validated, we proceed to the second phase: **logical** design. In this phase we begin to name the tables, the fields each table should contain, and link them together.

| ENTITY | ATTRIBUTES | FOREIGN KEY |
| --- | --- | --- |
| `utente` | **User Code** <br> Name <br>Surname <br>Email <br>Credit Card Number | |
| `passeggero` | **User Passenger Code** <br> Num. Passenger 1 Reservation <br> Num. Passenger 2 Reservation <br> Num. Passenger 3 Reservation <br> Num. Passenger 4 Reservation <br> Num. Passenger 5 Reservation | User Passenger Code (Ref. *User: User Code*) |
| `prenotazione` | **Reservation Code** <br> Reservation User Code <br> Reservation Vehicle Code <br> Reservation Date | Reservation User Code (Ref. User: *User Code*), <br>Reservation Vehicle Code (Ref. Vehicle: *Vehicle Code*) |
| `localita` | **City Code** <br> City <br>User | Location User Code (Ref. User: User Code) |
| `mezzitrasporto` | **Vehicle Code** <br>Vehicle User Code <br> Vehicle Value| Vehicle User Code (Ref. User: *User Code*) |
| `monopattino` | **Monopattino Code**  <br>Model <br>Year <br>Monopattino Vehicle Code <br> Type <br> Monopattino User Code <br> Monopattino Maintenance <br> Monopattino Available <br> Monopattino Kilometers | Monopattino Vehicle Code (Ref. Vehicle: *Vehicle Code*) <br> Monopattino User Code (Ref. Utente: *User Code*) |
| `auto` | **Car Code**  <br>Model <br>Year <br>Car Vehicle Code <br> Type <br> Car User Code <br> Car Maintenance <br> Car Available <br> Car Kilometers | Car Vehicle Code (Ref. Vehicle: *Vehicle Code*) <br>Car User Code (Ref. Utente: *User Code*) |
| `scooter` | **Scooter Code**  <br>Model <br>Year <br>Scooter Vehicle Code <br> Type <br> Scooter User Code <br> Scooter Maintenance <br> Scooter Available <br> Scooter Kilometers | Scooter Vehicle Code (Ref. Vehicle: *Vehicle Code*) <br>Scooter User Code (Ref. Utente: *User Code*) |

## PHYSICAL DATA MODEL

A physical data model is a database-specific model that represents relational data objects (for example, tables, columns, primary and foreign keys) and their relationships. 

<img width="651" alt="model-zigzag" src="https://user-images.githubusercontent.com/123829470/230714661-bd7b0668-fcb1-4098-bf06-6c87f966305f.png">
