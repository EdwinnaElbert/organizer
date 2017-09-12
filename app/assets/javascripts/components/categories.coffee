@categories = React.createClass
  getInitialState: ->
   categories: @props.data
  getDefaultProps: ->
   categories: []
  render: ->
    React.DOM.div
      className: 'categories'
      React.DOM.h2
        className: 'title'
        'categories'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
          React.DOM.th null, 'Title'
        React.DOM.tbody null,
          for category in @state.categories
            React.createElement Category, key: category.id, category: category, class: 'duty_title'
