class Person {
	var property hunger = 0
	var property place = "aldea"
	
	method go_to(terrain){
		place = terrain
	}
	
	method trabajar_terreno(amount){
		if (place.workable()) {
			place.work(amount)
			hunger += amount
		}
	}
	method eat(food) {
		food.consume(hunger)
		hunger = 0
	}
	method next_day() {
		hunger += 5
	}
}
class Terrain {
	
	var potential_food = 0 
	var current_food = 0
	var value
	
	method workable() {return true}
	method work(amount){
		potential_food += amount*value
	}
	
	method next_day() {
		if (current_food <= potential_food){
			current_food += 10
		}
	}
	
	
}