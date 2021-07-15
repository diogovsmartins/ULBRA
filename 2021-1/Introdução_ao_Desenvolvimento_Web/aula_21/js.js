$(document).ready(function(){

    $('#consultar').click(function(){
        var cep=$("#cep").val();
        var url="https:/viacep.com.br/ws/"+cep+"/json/";
        $.get(url,function(data){
            $("#resultado").html(
                "Localidade: " + data.localidade +"<br>" +
                "Referência do IBGE: " + data.ibge
            )
        })

    })
    
}) 