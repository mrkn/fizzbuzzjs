init = ->
  $('#start').click(->
    $('#start').hide()
    start()
  )

  $('#fizz, #buzz, #fizzbuzz, #other').click(->
    changeNumber()
  )

  $('#number').hide()
  $('#score').hide()

start = ->
  $('#number').show()

  changeNumber()

changeNumber = ->
  num = 1 + parseInt(Math.random()*100)
  $('#placeholder').text(num)

jQuery ->
  $(document).ready(->
    console.log('READY!!!')
  )
  init()
