Class {
	#name : #TripTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #tests }
TripTest >> testPrepare [
	| mechanic tripCoordinator driver preparers bicycles customers vehicle trip |
	mechanic := Mechanic new.
	bicycles := #bicycles.
	(mechanic stub prepareBicycles: bicycles) willReturn: Any.
	tripCoordinator := TripCoordinator new.
	customers := #customers.
	(tripCoordinator stub buyFood: customers) willReturn: Any.
	driver := Driver new.
	vehicle := #vehicle.
	(driver stub gasUp: vehicle) willReturn: Any.
	(driver stub fillWaterTank: vehicle) willReturn: Any.
	preparers := {mechanic.
	tripCoordinator.
	driver}.
	trip := Trip new.
	trip setBicycles: bicycles customers: customers vehicle: vehicle.
	trip prepare: preparers.
	(mechanic should receive prepareBicycles: bicycles) once.
	(tripCoordinator should receive buyFood: customers) once.
	(driver should receive gasUp: vehicle) once.
	(driver should receive fillWaterTank: vehicle) once
]
