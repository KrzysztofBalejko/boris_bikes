--------------------------------------------
Extracting a domain model from user stories:
--------------------------------------------

nouns = person
        bike
        docking station

verbs = release
        working

--------------------------------------------
Objects & Messages
--------------------------------------------

|Objects:      |Messages:      |
|--------------|:-------------:|
|Person        |(person = user)|
|Bike          |working?       |
|DockingStation|release        |

--------------------------------------------
Diagram:
--------------------------------------------

Bike <-- to_work? --> true/false
DockingStation <-- release --> Bike

--------------------------------------------
