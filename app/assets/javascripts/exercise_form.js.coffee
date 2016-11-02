$('.exercises.new').ready ->
  $('#exercise_question_type').change ->
    selection = $(this).val()
    console.log selection
    $.ajax
      url: '/gym/exercises/show_prompt_form'
      type: 'get'
      data: { qtype: selection }
      dataType: 'script'
      success: (data) ->
        # no op
