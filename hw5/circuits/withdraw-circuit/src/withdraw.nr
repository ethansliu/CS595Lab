global DEPTH: u32 = 8;

fn main(
    r: Field,
    index: Field,
    path: [Field; DEPTH],

    // Public inputs
    root: pub Field,
    id: pub Field,

) {
    assert(root == std::merkle::compute_merkle_root(std::hash::pedersen_hash([id, r]), index, path));
}