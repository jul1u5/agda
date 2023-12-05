record Applicative (F : Set → Set) : Set₁ where
  field
    _<*>_   : ∀ {A} {B} → F (A → B)
    -- _<*>_   : ∀ {A} {B : Set} → F (A → B)
