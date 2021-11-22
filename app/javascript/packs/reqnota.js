import $ from 'jquery'
import 'select2'
import 'select2/dist/css/select2.css'

$(document).on('turbolinks:load', function() {
    $("#user_select").select2({
        placeholder: "Selecciona uno",
        allowClear: true
    });

    $("#requisicion").select2({
        placeholder: "Selecciona uno",
        allowClear: true
    });

})