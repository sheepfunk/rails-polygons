@Category = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    # yeah... jQuery doesn't have a $.delete shortcut method
    $.ajax
      method: 'DELETE'
      url: "/categories/#{ @props.category.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteCategory @props.category
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.category.name
      React.DOM.td null, @props.category.amount
      React.DOM.td null,
        React.DOM.button
          onClick: @handleDelete, 'Delete'