class WordCount
  constructor: (s) ->
    @words = s.toLowerCase()
              .split(/[^a-z'0-9]/)
              .filter (w) -> !!w

  count: ->
    @wordCount = {}
    for w in @words
      if @wordCount[w] then @wordCount[w] += 1 else @wordCount[w] = 1
    @wordCount

module.exports = WordCount
