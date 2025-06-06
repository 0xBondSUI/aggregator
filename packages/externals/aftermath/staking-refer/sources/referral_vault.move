/// Module: staking-refer
#[allow(unused_field)]
module staking_refer::referral_vault;

use sui::bag::Bag;
use sui::object::UID;
use sui::table::Table;

public struct ReferralVault has key {
    id: UID,
    version: u64,
    referrer_addresses: Table<address, address>,
    rebates: Table<address, Bag>,
}
