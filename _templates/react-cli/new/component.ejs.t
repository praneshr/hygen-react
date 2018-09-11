---
to: app/<%= section %>/<%= name %>/component.jsx
---
<% if(locals.redux) { -%>
import { connect } from 'react-redux'
import { bindActionCreators } from 'redux'
<%}-%>
<% if (locals.type === 'stateful' && locals.type !== 'functional') { -%>
import React, { Component } from 'react'
<% } else if (locals.type === 'functional') { -%>
import React from 'react'
<% } else { -%>
import React, { PureComponent } from 'react'
<%} -%>
import PropTypes from 'prop-types'

<% if(locals.styles) { -%>
import styles from './styles.<%= styles %>'

<%}-%>
<% if(locals.redux) { -%>
const mapStateToProps = store => ({ })

const mapDispatchToProps = dispatch => ({ })
<%}-%>
<% if (locals.type !== 'functional' && locals.redux) { -%>

@connect(mapStateToProps, mapDispatchToProps)
<%}-%>
<% if (locals.type === 'stateful') { -%>
class <%= Name %> extends Component {
  construstor(props) {
    super(props)
  }

  render = () => {
    return (
      <div>Edit this component at app/<%= section %>/<%= name %>/component.js</div>
    )
  }
}
<% } else if (locals.type === 'functional') { -%>

const <%= Name %> = props => <div>Edit this component at app/<%= section %>/<%= name %>/component.js</div>
<% } else { -%>
class <%= Name %> extends PureComponent {
  construstor(props) {
    super(props)
  }

  render = () => {
    return (
      <div>Edit this component at app/<%= section %>/<%= name %>/component.js</div>
    )
  }
}
<% } -%>

<%= Name %>.propTypes = {

}

<%= Name %>.defaultProps = {

}

<% if(locals.redux && locals.type === 'functional') { -%>
export default connect(mapStateToProps, mapDispatchToProps)(<%= Name %>)
<% } else { -%>
export default <%= Name %>
<%}-%>
