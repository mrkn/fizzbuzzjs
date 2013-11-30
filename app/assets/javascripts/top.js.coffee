fizzbuzz = (number) ->
  fizz = if number % 3 == 0 then 'fizz' else ''
  buzz = if number % 5 == 0 then 'buzz' else ''
  return fizz + buzz

judge = (type) ->
  if type is 'fizz'
    correct()
  else
    incorrect()

init = ->
  $('#start').click(->
    $('#start-container').hide()
    start()
  )

  $('#fizz, #buzz, #fizzbuzz, #other').click(->
    judge(this.id)
    changeNumber()
  )

  $('#number-container').hide()
  $('#score-container').hide()

start = ->
  $('#number-container').show()

  changeNumber()

changeNumber = ->
  num = 1 + parseInt(Math.random()*100)
  $('#placeholder').text(num)

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
