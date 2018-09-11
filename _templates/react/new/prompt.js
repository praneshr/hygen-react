module.exports = [
  {
    type: 'input',
    name: 'name',
    default: 'component',
    message: "Name your component"
  },
  {
    type: 'input',
    name: 'section',
    default: 'components',
    message: "Provide a section under which this component should be created."
  },
  {
    type: 'list',
    name: 'type',
    default: 'pure',
    choices: [
      {
        name: 'Pure Component',
        value: 'pure',
      },
      {
        name: 'Stateful Component',
        value: 'stateful',
      },
      {
        name: 'Functional Component',
        value: 'functional',
      },
    ],
    message: "Choose the type of React component"
  },
  {
    type: 'confirm',
    name: 'redux',
    message: "Do you want to add boilerplate for redux?"
  },
  {
    type: 'confirm',
    name: 'lazy',
    message: "Do you want make the generated component lazy(Async Component)?"
  },
  {
    type: 'list',
    name: 'styles',
    default: false,
    choices: [
      {
        name: 'None',
        value: false,
      },
      {
        name: 'CSS',
        value: 'css',
      },
      {
        name: 'SASS',
        value: 'sass',
      },
      {
        name: 'SCSS',
        value: 'scss',
      },
      {
        name: 'LESS',
        value: 'less',
      },
      {
        name: 'stylus',
        value: 'styl',
      },
    ],
    message: "Choose a stylesheet",
  },
]
