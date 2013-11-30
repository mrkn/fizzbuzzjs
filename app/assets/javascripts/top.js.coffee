init = ->
  $('#start').click(->
    $('#start').hide()
    start()
  )

  $('#number').hide()
  $('#score').hide()

start = ->
  $('#number').show()

  num = 1 + parseInt(Math.random()*100)
  $('#placeholder').text(num)

jQuery ->
  $(document).ready(->
    console.log('READY!!!')
  )
  init()
