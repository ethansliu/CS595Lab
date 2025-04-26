global DEPTH: u32 = 8;

fn main(
    id: Field, 
    r: Field,
    old_path: [Field; DEPTH],
    old_root: pub Field,
    new_root: pub Field,
    commitment: pub Field,
    index: pub Field

) {
    assert(std::hash::pedersen_hash([id, r]) == commitment);
    
    let zero = 0x18d85f3de6dcd78b6ffbf5d8374433a5528d8e3bf2100df0b7bb43a4c59ebd63;

    assert(std::merkle::compute_merkle_root(zero, index, old_path) == old_root);

    assert(std::merkle::compute_merkle_root(commitment, index, old_path)== new_root);
}