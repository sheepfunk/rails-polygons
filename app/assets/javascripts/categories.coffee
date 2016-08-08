# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@Categories = React.createClass
  getInitialState: ->
    categories: @props.data
  getDefaultProps: ->
    records: []
  addCategory: (category) ->
    categories = React.addons.update(@state.categories, { $push: [category] })
    @setState categories: categories
  render: ->
    React.DOM.div
      className: 'categories'
      React.DOM.h4
        className: 'byline'
        'What is important in your relationship?'
      React.createElement CategoryForm, handleNewCategory: @addCategory
      React.DOM.hr null
        React.DOM.table
          className: 'table table-bordered'
          React.DOM.thead null,
            React.DOM.tr null,
              React.DOM.th null, 'Name'
              React.DOM.th null, 'Amount'
          React.DOM.tbody null,
            for category in @state.categories
              React.createElement Category, key: category.id, category: category