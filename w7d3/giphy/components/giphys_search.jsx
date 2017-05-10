import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ""
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({searchTerm: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    console.log(this.props);
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    return (
    <div>
      <form>
        <input type="text" onChange={this.handleChange}/>
        <input type="submit" onClick={this.handleSubmit}/>
      </form>
      <GiphysIndex giphys={this.props.giphys} />
    </div>
  );
  }
}

export default GiphysSearch;
