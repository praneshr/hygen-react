module.exports = [
  {
    type: 'input',
    name: 'name',
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
    type: 'input',
    name: 'styles',
    message: "Do you want to add stylesheet? If yes, specify the extension",
  },
]
