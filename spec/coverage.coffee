class Report
  counts:
    relevant: 0,
    used:     0,
    missed:   0
  source: null
  colors:
    reset:  "\033[0m",
    red:    '\033[41m',
    green:  '\033[42m',
    yellow: '\033[43m'
  constructor: ->
    @source = _$jscoverage['source.js'].source
    @lines  = _$jscoverage['source.js']
    @analyze()
  analyze: ->
    @lines.forEach (line, index) =>
      @counts.relevant++
      if line == 0
        @counts.missed++
      else
        @counts.used++
  shortReport: ->
    console.log "Relevant lines: " + @counts.relevant +
                " Used: " + @counts.used +
                " Missed "+ @counts.missed
    console.log "Coverage: " + Math.floor((@counts.used / @counts.relevant)*100) + '%'
  red: (msg) ->
    console.log @colors.red + msg + @colors.reset
  green: (msg) ->
    console.log @colors.green + msg + @colors.reset
  coverageListing: ->
    html = '<html><body>'
    @source.forEach (line, index) =>
      ind = index + 1
      if @lines[ind] == 0
        this.red line
      else
        this.green line

exports.Report = Report
