current_number = 0

fizzbuzz = (number) ->
  fizz = if number % 3 == 0 then 'fizz' else ''
  buzz = if number % 5 == 0 then 'buzz' else ''
  return fizz + buzz

judge = (type) ->
  return type is 'fizz'

init = ->
  $('#start').click(->
    $('#start-container').hide()
    start()
  )

  $('#fizz, #buzz, #fizzbuzz, #other').click(->
    if judge(this.id)
      correct()
    else
      incorrect()

    changeCurrentNumber()
  )

  $('#number-container').hide()
  $('#score-container').hide()

start = ->
  $('#number-container').show()

  changeNumber()

changeCurrentNumber = ->
  current_number = 1 + parseInt(Math.random()*100)
  $('#placeholder').text(current_number)

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
