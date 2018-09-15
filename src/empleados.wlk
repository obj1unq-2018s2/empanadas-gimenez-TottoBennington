object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dineroTotal = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){dineroTotal+=self.sueldo()}
	method totalCobrado() = dineroTotal
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 150
	
	var dinero = 0
	var deuda = 0
	
	method cobrarSueldo(){
		if(self.sueldo()>self.totalDeuda()){
			// si el sueldo es > a la deuda, cobramos y descontamos deuda
			dinero += self.sueldo() - self.totalDeuda()
			deuda = 0 // le quitamos a la deuda lo que pagamos de ella
		}else{
			// si la deuda es mayor entonces descontamos sueldo de deuda total
			deuda -= self.sueldo()
			dinero = 0
		}
	}
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method gastar(cuanto){
		if(dinero > cuanto){
			dinero -= cuanto
		}else{
			deuda += cuanto - dinero
			dinero = 0
		}
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
	}
}
