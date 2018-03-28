object pepe 
{
	var categoria 
	var bonoPresen 
	var bonoResul 
	
	method cambiaCat(nuevaCat)
	{
		categoria=nuevaCat
	}
	
	method faltas(faltas)
	{
		var diasAusen = faltas
		if (diasAusen > 1)
			bonoPresen = sinPresentismo.valor()
		else
			bonoPresen = bonoXPresentismo.valor(diasAusen)	
	}
	
	method CambioBR(tipo)
	{
		bonoResul=tipo.valor(categoria)
	}
	
	method sueldo()
	{
		var sue
		sue = categoria.neto() + bonoPresen + bonoResul
		return sue
	}
	
}

object  gerente
{
	method neto() = 1000
}

object  cadete
{
	method neto() = 1500
}

object bonoXPresentismo
{
	method valor (faltas)
	{
			
		if (faltas==1)
			return 50
			
		else 
			return 100
		
	}
}

object sinPresentismo
{
	method valor() =0
}

object xPorc
{
	method valor(categoria)
	{
		return categoria.neto()*0.1
	}
}

object fijo
{
	
	method valor(categoria)=80
	
}

object sinBono
{
	
	method valor(categoria)=0
	
}