import React from "react"
import PropTypes from "prop-types"
class aaa extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

aaa.propTypes = {
  greeting: PropTypes.string
};
export default aaa
