$('.registration').html '<%= escape_javascript render(partial: 'registrations/form', locals: { registration: @registration }) %>'
