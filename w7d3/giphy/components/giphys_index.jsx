import React from 'react';

import GiphysIndexItem from './giphys_index_item';

class GiphysIndex extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    const { giphys } = this.props;
    return (
      <ul>
        {giphys.map((giphy,i) =>
          <li key= {i}>
            <img src={giphy.images.downsized.url}/>
          </li>)}
      </ul>
    );
  }
}

export default GiphysIndex;
