object aldea {
	var property size = 0
	var property food_amount = 0
	const people = []
	var property terrains = []
	
	method workable() {return true}
	method work(amount) {
		size += amount/10
	}
	
	
	//I REALLY THOUGHT THIS WOULD WORK. DAMN IT!
	method birth(name) {
		if (food_amount > 20+20*people.size()){
			self.consume_food(20)
			name = new Person()
		}
	}
	
	method consume_food(amount){
		food_amount -= amount
	}
}