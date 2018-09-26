//Edicion del campo de fecha

var fecha = new Date();
var anno = fecha.getFullYear();
var dias = fecha.getDay();

$(document).ready(function(){
    
    $('.datepicker').datepicker({
        
        format: 'dd,mmm,yyyy',
        disableWeekends:true,        
        showMonthAfterYear: true,        
        yearRange: [anno-70, anno],
        onSelect: revisar        
        
    });
//Validando que se elija una fecha mayor a 18
    function revisar(date){
        
        var edad_annos = anno - date.getFullYear();        

        if(edad_annos<18){
            swal("No eres mayor de 18 años")
        }            
            noValido();        
    }

    function noValido(){//En caso de ser fecha invalida borra el texto del input
        $('input[class="datepicker"]').val('');
    }

  });

  
  