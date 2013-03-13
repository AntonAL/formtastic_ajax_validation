FormtasticAjaxValidation = (form, modelName, fieldNames)->
  $(document).on "ajax:error", form.selector, (event, jqXHR, ajaxSettings, thrownError)->
    errors = $.parseJSON jqXHR.responseText
    for fieldName in fieldNames
      do ->
        field = form.find "li##{modelName}_#{fieldName}_input"
        if errors.hasOwnProperty fieldName
          field.addClass "error"
        else
          field.removeClass "error"