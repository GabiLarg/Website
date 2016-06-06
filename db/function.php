<?php
	include "config.php";
	header("Content-type: text/javascript");
	//estabelece conexão com banco de dados ou retorna erro
	function conexao(){
		try {
			$con = new PDO('mysql:host=mysql.hostinger.com.br;dbname=u828905098_trade;charset=utf8mb4', USER, PASSWORD);
			return $con;	 
		} 
		catch(PDOException $ex) {
    		echo "Não foi possível conectar";
    		return some_logging_function($ex->getMessage());
		}

	}
	function show(){
		//conexão com o Banco de dados
		$con = conexao();
			
		//Definindo query de pesquisa. Mostra todos os itens tabela Mercadoria ou apresenta erro.
		try {
			$pesq = $con->query('SELECT nomeMerc, tipoMerc, qtdMerc, precoMerc, tipoNegocMerc, imagempath FROM Mercadoria');
			$row = $pesq->fetchAll(PDO::FETCH_ASSOC);
			echo json_encode($row);
		} 
		catch(PDOException $ex) {
    		echo "Erro na query ou conexão"; 
    		some_logging_function($ex->getMessage());
		}
		
	}
	$req = file_get_contents('php://input');
    $opcao = json_decode($req);
    show();	
?>