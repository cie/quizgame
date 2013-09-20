
NumberQuestion = (text, answer) ->
  @type = "number"
  @text = text
  @answer = answer

ChoiceQuestion = (text, answers) ->
  @type = "choice"
  @text = text
  @answers = answers

@Rounds = []

@Round = (name, init) ->
  @name = name
  @questions = []
  @number = (text, answer) -> @questions.push new NumberQuestion(text, answer)
  @choice = (text, answers) -> @questions.push new ChoiceQuestion(text, answers)
  init.call(this)

