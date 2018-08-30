refreshFrequency: 300000

render: (output) -> """
    <div class="container">
      <img src="qotd.widget/lib/quote.png"></img>
      <p class="parrafo"></p><br>
    </div>
"""


style: """
  .container {

    margin-top: 45%;
    margin-left: 10px; 

  }
  .parrafo {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 110%;
    max-lines: 2;
    width: 50%;
    background: black;
    color: white;
    opacity: 0.8;
    background: rgba(0, 0, 0, 0.5);
    padding-top: 15px;
    padding-right: 15px;
    padding-bottom: 15px;
    padding-left: 15px;
  }

  .author {
    text-align: right;

  }

  img {
    height: 40px;
    opacity: 0.7;
    width: 40px;
  }


"""

update: (output, domEl) ->
  Loquendo = require './lib/loquendo.coffee'
  max = 3 #Number of quotes
  loq = new Loquendo Math.floor(Math.random() * max ) + 0
  
  $(domEl).find(".parrafo").text ''
  $(domEl).find(".author").text ''
  $(domEl).find(".parrafo").append loq.getfrase()[1]
  $(domEl).find(".parrafo").append loq.getfrase()[0]
