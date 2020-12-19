class WordCount
  constructor: (s) ->
    @words = s.toLowerCase()
              .split(/[^a-z'0-9]/)
              .filter (w) -> !!w

  count: ->
    @wordCount = {}
    for w in @words
      @wordCount[w] = (@wordCount[w] or 0) + 1
    @wordCount

module.exports = WordCount
