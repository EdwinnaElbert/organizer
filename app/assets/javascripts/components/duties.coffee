@duties = React.createClass
  getInitialState: ->
    duties: @props.data
  getDefaultProps: ->
    duties: []
  render: ->
    React.DOM.h2
      className: 'title'
      'duties'
    React.DOM.table
      className: 'table table-bordered'
      React.DOM.thead null,
        React.DOM.tr null,
        React.DOM.th null, 'Title'
      React.DOM.tbody null,
        for duty in @state.duties
          React.createElement Duty, key: duty.id, duty: duty, class: 'duty_title'
