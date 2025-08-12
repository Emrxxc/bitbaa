// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/**
 * @title bitbaa Token (BTA)
 * @dev Standart bir ERC20 token'ı, toplam arz 810 milyar (18 ondalık ile)
 *      ve kullanıcıların kendi token'larını yakabilmesi için burn özelliğiyle birlikte.
 *
 * - Token adı: bitbaa
 * - Token sembolü: BTA
 * - Toplam arz: 10,000,000,000 token (18 decimal)
 * - Tüm token'lar deployer adresine mint edilir
 * - ERC20Burnable: Kullanıcılar kendi tokenlarını yakabilir
 */
contract NextdropToken is ERC20, ERC20Burnable {
    // 8 milyar token, 18 ondalıkla çarpılır
    uint256 private constant INITIAL_SUPPLY = 8_000_000_000;

    constructor() ERC20("bitbaa", "BTA") {
        _mint(msg.sender, INITIAL_SUPPLY * (10 ** decimals()));
    } 
}
