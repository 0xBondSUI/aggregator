#[allow(unused_field, unused_variable)]
module steamm::bank;

use steamm::version::Version;
use sui::balance::Balance;
use sui::clock::Clock;
use sui::coin::Coin;
use suilend::lending_market::{ObligationOwnerCap, LendingMarket};

public struct Bank<phantom T0, phantom T1, phantom T2> has key {
    id: UID,
    funds_available: Balance<T1>,
    lending: Option<Lending<T0>>,
    min_token_block_size: u64,
    btoken_supply: Balance<T2>,
    version: Version,
}

public struct Lending<phantom T0> has store {
    ctokens: u64,
    target_utilisation_bps: u16,
    utilisation_buffer_bps: u16,
    reserve_array_index: u64,
    obligation_cap: ObligationOwnerCap<T0>,
}

public fun mint_btokens<LENGDING_MARKET, COIN, BCOIN>(
    bank: &mut Bank<LENGDING_MARKET, COIN, BCOIN>,
    lending_market: &mut LendingMarket<LENGDING_MARKET>,
    coin: &mut Coin<COIN>,
    amount: u64,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<BCOIN> {
    abort 0
}

public fun burn_btokens<LENGDING_MARKET, COIN, BCOIN>(
    bank: &mut Bank<LENGDING_MARKET, COIN, BCOIN>,
    lending_market: &mut LendingMarket<LENGDING_MARKET>,
    coin: &mut Coin<BCOIN>,
    amount: u64,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<COIN> {
    abort 0
}

public fun mint_btoken<LENGDING_MARKET, COIN, BCOIN>(
    bank: &mut Bank<LENGDING_MARKET, COIN, BCOIN>,
    lending_market: &LendingMarket<LENGDING_MARKET>,
    coin_t: &mut Coin<COIN>,
    coin_amount: u64,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<BCOIN> {
    abort 0
}

public fun burn_btoken<LENGDING_MARKET, COIN, BToken>(
    bank: &mut Bank<LENGDING_MARKET, COIN, BToken>,
    lending_market: &LendingMarket<LENGDING_MARKET>,
    btokens: &mut Coin<BToken>,
    mut btoken_amount: u64,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<COIN> {
    abort 0
}
