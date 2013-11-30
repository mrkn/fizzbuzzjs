init = ->
  $('#start').click(->
    $('#start').hide()
    start()
  )

  $('#fizz, #buzz, #fizzbuzz, #other').click(->
    judge(this.id)
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

judge = (type) ->
  if type is 'fizz'
    correct()
  else
    incorrect()

correct = ->
  $('body').addClass('correct')
  $('body').removeClass('incorrect')

incorrect = ->
  $('body').addClass('incorrect')
  $('body').removeClass('correct')

jQuery ->
  $(document).ready(->
    console.log('READY!!!')
  )
  init()
