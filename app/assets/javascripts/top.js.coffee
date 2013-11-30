current_number = 0
score = 0
beatbox = new Beatbox()

fizzbuzz = (number) ->
  fizz = if number % 3 == 0 then 'fizz' else ''
  buzz = if number % 5 == 0 then 'buzz' else ''
  return fizz + buzz || 'other'

judge = (type) ->
  return fizzbuzz(current_number) is type

init = ->
  $('#start, #restart').click(->
    start()
  )

  $('#fizz, #buzz, #fizzbuzz, #other').click(->
    if judge(this.id)
      correct()
    else
      incorrect()

    changeCurrentNumber()
  )

  showStartContainer()

start = ->
  score = 0
  beatbox.start()
  showNumberContainer()
  changeCurrentNumber()
  setTimeout(gameover, 3000)

gameover = ->
  beatbox.stop()
  showScore()
  showScoreContainer()

changeCurrentNumber = ->
  current_number = 1 + parseInt(Math.random()*100)
  $('#placeholder').text(current_number)

correct = ->
  score += current_number

  $('body').addClass('correct')
  $('body').removeClass('incorrect')

incorrect = ->
  $('body').addClass('incorrect')
  $('body').removeClass('correct')

showScore = ->
  $('#score').text('Score:  ' + score)

showStartContainer = ->
  $('#start-container').show()
  $('#number-container').hide()
  $('#score-container').hide()

showNumberContainer = ->
  $('#start-container').hide()
  $('#number-container').show()
  $('#score-container').hide()

showScoreContainer = ->
  $('#start-container').hide()
  $('#number-container').hide()
  $('#score-container').show()

jQuery ->
  $(document).ready(->
    console.log('READY!!!')
  )
  init()
