$(document).ready(function(){
	/*Este arquivo pega dados de pesquisa em sql do arquivo php utilizando json e mostra na div selecionada os itens
	Author: Gabriela*/	
	/* chama arquivo php e recebe retorno do arquivo */
    $.post('../db/function.php', function(data) {
            /* data will hold the php array as a javascript object */
      
        var tipoNegoc;
        var moeda;

        $.each(data, function(key, val) {
        	if(val.tipoNegocMerc == 'C'){
        		tipoNegoc = "Comprar";
        	}
        	else{
        		tipoNegoc = "Vender";
        	}
        	if(val.tipoMerc == "matéria prima"){
        		moeda = "unt. Utensílios";
        	}
        	else if (val.tipoMerc == "especiarias"){
        		moeda = "g Matéria prima";
        	}else{
        		moeda = "g Especiarias"
        	}

            document.getElementById("mercadorias").innerHTML +='<div class="col-lg-4"> <img src="'+val.imagempath+'"height="200"/> <h2>'+ val.nomeMerc +'</h2><p>Preço: '+val.precoMerc+' '+moeda+ '</p><p><a class="btn btn-primary" href="#" role="button" data-toggle="modal" data-target="#nTemos">'+tipoNegoc+' &raquo;</a></p>';
        });
	}, 'json');

});

