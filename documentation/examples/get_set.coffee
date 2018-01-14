screen =
  width: 1200
  ratio: 16/9

Object.defineProperty screen, 'height',
  get: ->
    @width / this.ratio
  set: (val) ->
    @width = val / this.ratio
