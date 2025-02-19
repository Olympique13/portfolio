import $ from 'jquery';

document.addEventListener( "DOMContentLoaded", function () {
    console.log('contact form')
    $(function(){
        $('#formContact').on('submit', function (e) {
            e.preventDefault();
            $.ajax({
                type: 'POST',
                url: $(this).attr('action'),
                data: $(this).serialize(),
                success: function (response) {
                    console.log(response); // Vérifie ce qui est retourné
                    if(response.code === 400) {
                        $('#errorContact').css('display', 'block');
                        $('#successContact').css('display', 'none');
                        $('#formContact .text-red-600').remove();
                        for (const [field, message] of Object.entries(response.errors)) {
                            const errorElement = $(`<div class="text-red-600 text-sm">${message}</div>`);
                            $(`#formContact [name="contact[${field}]"]`).after(errorElement);
                        }
                    } else {
                        $('#successContact').css('display', 'block');
                        $('#errorContact').css('display', 'none');
                        $('#formContact .text-red-600').remove();
                    }
                
                    $('#formContact').trigger("reset");
                },                
                error: function (error) {
                    // console.log(error);
                }
            });
        });
    });


} );

