 @DutyForm = React.createClass
    getInitialState: ->
      title: '',
      category_id: 1,
      every_day: false,
    valid: ->
      @state.title && @state.category_id
    handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value
    handleSubmit: (e) ->
      e.preventDefault()
      $.post '/duties', { duty: @state }, (data) =>
        # @duties.addDuty data
        @setState @getInitialState()
      , 'JSON'
      location.reload()
    addDuty: (duty) ->
      duties = @state.duties.slice()
      duties.push duty
      @setState duties: duties
    render: ->
      React.DOM.form
        # "data-remote": true
        className: 'form-inline'
        onSubmit: @handleSubmit
        React.DOM.div
          className: 'form-group'
          React.DOM.label
            'everyday'
            React.DOM.input
              type: 'checkbox'
              className: 'form-control'
              name: 'title'
              value: @state.title
              onChange: @handleChange
        # React.DOM.br null
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Title'
            name: 'title'
            value: @state.title
            onChange: @handleChange
        # React.DOM.br null
          React.DOM.input
            type: 'select'
            className: 'form-control'
            placeholder: 'Category'
            name: 'category_id'
            value: @state.category_id
            onChange: @handleChange
        # React.DOM.br null
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Date'
            name: 'until_date'
            value: @state.date
            onChange: @handleChange
        # React.DOM.br null
          React.DOM.button
            type: 'submit'
            className: 'btn btn-primary'
            disabled: !@valid()
            'Create duty'
