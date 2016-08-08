@Category = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.category.name
      React.DOM.td null, @props.category.amount
