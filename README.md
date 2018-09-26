# Hygen React

Hygen template package to ease your React and Redux workflow.

![CLI](https://image.ibb.co/feuFKp/ezgif_com_video_to_gif_3.gif)

## Prerequisites
- [hygen](https://github.com/jondot/hygen)
- [hygen-add](https://github.com/jondot/hygen-add)

## Install
```bash
$ hygen-add react
```
This will create a `_template` folder in your project root. This contains all the template files. You should commit and push them with your code. You can also modify the template for your need.

## Usage
`hygen-react` supports both prompt and basic version of `hygen` generator. Choose whichever fits you.

### 1. With Prompt
```bash
hygen react-prompt new
```

### 2. Without Prompt
```bash
hygen react new <flags>

Options:

--name <name>                                     Name of the component
--section <location>                              Name of the sub-folder. Valid paths can be passed.
--type [stateful|functional]                      Type of React component to be created. Defaults to 'pureComponent'
--redux                                           Add boilerplate for react-redux
--lazy                                            Make the generated component lazy (Async component)
--styles [css|scss|sass|less|styl]                Add stylesheet to the generated component. Defaults to 'none'

Examples:

hygen react new --name header --section components --redux --styles scss
hygen react new --name footer --section components --lazy --styles scss
hygen react new --name home --section pages --type stateful --redux --styles scss
```

## Files
`hygen-react` will create the following files

- `app/<section>/<component_name>/component.jsx` - Code for the component goes in here
- `app/<section>/<component_name>/index.jsx` - Code related to react-loadable goes in here
- `app/<section>/<component_name>/styles.[ext]` - Stylesheet (based on the stylesheet preference)
- `app/<section>/<component_name>/README.md` - README file for documentation
- `app/<section>/<component_name>/__tests__/index.js` - Code related to unit test goes here
- `app/<section>/index.js` - Index file which exports all components. It will get updated automatically when a new component is added. Useful when combined with [webpack alias](https://webpack.js.org/configuration/resolve/#resolve-alias). You can do something like `import { Header, Footer, Profile } from '@components'`

## Things to remember

- Whitespaces in `section` and `component_name` will be `dasherized` for file/folder names and `camelized` for class/variable names.
- The generated code uses `class properties`, `decorators` and `dynamic import`. So, you should include [babel-proposal-class-properties](https://github.com/babel/babel/tree/master/packages/babel-plugin-proposal-class-properties), [babel-plugin-proposal-decorators](https://github.com/babel/babel/tree/master/packages/babel-plugin-proposal-decorators) and [babel-plugin-syntax-dynamic-import](https://github.com/babel/babel/tree/master/packages/babel-plugin-syntax-dynamic-import) in your project
- The generated code uses [react-loadable](https://github.com/jamiebuilds/react-loadable) to dynamically import components (only when `--lazy` is passed)

## License

MIT
