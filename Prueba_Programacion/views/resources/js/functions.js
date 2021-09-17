$(function(){
  $('table tr td').click(function(){
            
          
          var fila = $(this).parent('tr').index();
          var columna = $(this).index();
          var colorActual = $(this).html();

          r = Math.ceil(Math.random()*255);
          g = Math.ceil(Math.random()*255);
          b = Math.ceil(Math.random()*255);
          


          $( "table tr:nth-child("+(fila +1)+") td:nth-child("+(columna + 1)+")" ).css("background-color", "rgb("+r+","+g+","+b+")");
          $( "table tr:nth-child("+(fila +1)+") td:nth-child("+(columna + 1)+")" ).html("rgb("+r+","+g+","+b+")");

          colorNuevo = "rgb("+r+","+g+","+b+")";

          alert('El color anterior es: '+colorActual+' El color Nuevo es: '+colorNuevo);

          

        });

});