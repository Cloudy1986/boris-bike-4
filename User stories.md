As a user,
So I can find customers,
I want to search for my customers by their surnames.

Nouns: user, customers, surnames
Verbs: search, find

| Objects  | Messages        |
| -------- | --------------- |
| User | |
| Customer | find_by_surname |

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

Nouns: person, bike, docking station
Verbs: use, release

| Objects  | Messages        |
| -------- | --------------- |
| Customer | |
| Bike, Docking Station | release_bike_from_docking_station |

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Nouns: bike
Verbs: working

| Objects  | Messages        |
| -------- | --------------- |
| Customer | |
| Bike | bike_working? |

Step 13 - limiting capacity

User story:
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

Nouns - docking station, bike
Verbs - not accept, more than, capacity?

 Objects  | Messages        |
| -------- | --------------- |
| docking station | capacity?, don't dock |