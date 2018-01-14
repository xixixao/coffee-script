class Teenager
  @say: (speech) ->
    words = speech.split(' ')
    fillers = ['uh', 'um', 'like', 'actually', 'so', 'maybe']
    output = []
    for word, index in words
      output.push(word)
      if index != words.length - 1
        output.push(fillers[Math.floor(Math.random() * fillers.length)])
    output.join(', ')
