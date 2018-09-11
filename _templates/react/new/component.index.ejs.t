---
to: app/<%= section %>/<%= name %>/index.jsx
---
<% if(locals.lazy) { -%>
import Loadable from 'react-loadable'
<% } else {-%>
export { default as <%= Name %> } from './component.jsx'
<%}-%>
<% if(locals.lazy) { -%>

const <%= Name %> = Loadable({
  loader: () => import(/* webpackChunkName: "<%= name %>-chunk" */ './component.jsx')
})

export { <%= Name %> }
<% } -%>
