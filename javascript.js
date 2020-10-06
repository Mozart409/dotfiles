{
  // VSCode User Snippet Javascript
  "reactFunctionalComponent": {
    "prefix": "redf",
    "body": [
      "import React from 'react'",
      "",
      "export default function ${1:${TM_FILENAME_BASE}}() {",
      "\treturn (",
      "\t\t<div>",
      "\t\t\t<div>",
      "\t\t\t\t$0",
      "\t\t\t</div>",
      "\t\t</div>",
      "\t)",
      "}",
      ""
    ],
    "description": "Creates a React Functional Component with ES7 module system"
  },
  "reactFunctionalComponentWithPropTypes": {
    "prefix": "redfp",
    "body": [
      "import React from 'react'",
      "import PropTypes from 'prop-types'",
      "",
      "function ${1:${TM_FILENAME_BASE}}(props) {",
      "\treturn (",
      "\t\t<div>",
      "\t\t\t$0",
      "\t\t</div>",
      "\t)",
      "}",
      "",
      "${1:${TM_FILENAME_BASE}}.propTypes = {",
      "",
      "}",
      "",
      "export default ${1:${TM_FILENAME_BASE}}",
      "",
      ""
    ],
    "description": "Creates a React Functional Component with ES7 module system with PropTypes"
  },
  "reactFunctionalComponentStateless": {
    "prefix": "rfc",
    "body": [
      "const $1 = () => {",
      "\treturn (",
      "\t\t<div>",
      "\t\t\t$0",
      "\t\t</div>",
      "\t)",
      "}",
      ""
    ],
    "description": "Creates a React Functional Component with ES7 module system with PropTypes"
  }
}
