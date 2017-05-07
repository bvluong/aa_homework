import React from 'react';

const displayRates = ({currencyOptions, currencyRates, baseCurrency }) => (
    <div>
      <h1>Currency Exchange Rates</h1>
      <h3>Base Currency: {baseCurrency}</h3>

      <div className="currency-selector">
        Get Rates:
        {currencyOptions}
      </div>
      <div className="rates-list">
        {currencyRates}
      </div>
    </div>
)

export default displayRates;
