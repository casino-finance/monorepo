// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.6.6;

import "./IBPool.sol";

interface IConfigurableRightsPool {

    // Type declarations

    struct PoolParams {
        // Balancer Pool Token (representing shares of the pool)
        string poolTokenSymbol;
        string poolTokenName;
        // Tokens inside the Pool
        address[] constituentTokens;
        uint[] tokenBalances;
        uint[] tokenWeights;
        uint swapFee;
    }

    struct Rights {
        bool canPauseSwapping;
        bool canChangeSwapFee;
        bool canChangeWeights;
        bool canAddRemoveTokens;
        bool canWhitelistLPs;
        bool canChangeCap;
    }


    function bPool() external returns (IBPool);
    function createPool(uint initialSupply) external;
    function updateWeight(address token, uint newWeight) external;
}