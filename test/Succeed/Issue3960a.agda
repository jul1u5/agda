open import Agda.Primitive using (Level; lsuc)

variable
  ℓ p : Level
  A   : Set ℓ
  x y : A

record R a : Set (lsuc a) where
  field
    _≡_ : {A : Set a} → A → A → Set a

module _ (r : (ℓ : Level) → R ℓ) where
  open module R′ {ℓ} = R (r ℓ)

  postulate
    subst     : (P : A → Set p) → x ≡ y → P x → P y

    [subst≡]≡[trans≡trans] :
      {p : x ≡ y} {q : x ≡ x} →
      subst (λ z → z ≡ z) p q ≡ _ -- r
