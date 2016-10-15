      $(()=>{
        $('input[name=pic_url], input[name=logo_url]').on('blur keyup change paste', function (){
          $('#preview').attr('src', $(this).val());
        });

        $('.delete').click(function (event){
          var name = $(this).attr('data-item');
          if (!confirm(`Are you sure you want to delete ${name}?`))
            event.preventDefault();
        });
      });
