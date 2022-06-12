use magnus::{define_class, function, method, prelude::*, Error};
use rand::seq::SliceRandom;

#[magnus::wrap(class = "Shuffle")]
struct Shuffle {
    original: String,
}

impl Shuffle {
    fn new(original: String) -> Self {
        Self { original }
    }

    fn shuffle(&self) -> String {
        let mut rng = rand::thread_rng();
        let mut v = self.original.chars().collect::<Vec<_>>();
        v.shuffle(&mut rng);
        v.into_iter().collect()
    }
}

#[magnus::init]
fn init() -> Result<(), Error> {
    let class = define_class("Shuffle", Default::default())?;
    class.define_singleton_method("new", function!(Shuffle::new, 1))?;
    class.define_method("shuffle", method!(Shuffle::shuffle, 0))?;
    Ok(())
}
