object pepe 
{
	var categoria 
	var diasAusen 
	var bonoResul 
	
	method cambiaCat(nuevaCat)
	{
		categoria=nuevaCat
	}
	
	method getNetoPepe()
	{
		return categoria.neto();
	}
	
	method faltas(faltas)
	{
		diasAusen=faltas
	}
	
	method CambioBR(tipo)
	{
		bonoResul=tipo.valor()
	}
	
	method sueldo()
	{
		var sue
		sue = categoria.neto() + bonoXPresentismo.valor(diasAusen)+ bonoResul
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
		if (faltas>1)
			return 0
			
		if (faltas==1)
			return 50
			
		else 
			return 100
		
	}
}

object xPorc
{
	method valor()
	{
		return pepe.getNetoPepe()*0.1
	}
}

object fijo
{
	
	method valor()=80
	
}

object sinBono
{
	
	method valor()=0
	
}