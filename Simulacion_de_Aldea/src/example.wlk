object aldea {
	var property size = 0
	
	const people = []
	var property terrains = []
	
	method workable() {return true}
	method work(amount) {
		size += amount/10
	}
	
	
	//I REALLY THOUGHT THIS WOULD WORK. DAMN IT!
	method birth(name) {
		if (food.amount() > 20*people.size()){
			food.consume(20)
			const name = new Person()
			people.add(name)
		}
	}
}

object food {
	var property amount = 0
	
	method workable() {return false}
	method consume(food_consumed){
		amount -= food_consumed
	}
}