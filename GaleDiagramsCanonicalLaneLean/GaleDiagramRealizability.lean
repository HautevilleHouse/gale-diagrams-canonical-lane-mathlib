import GaleDiagramsCanonicalLaneLean.GaleTransform

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagramRealizability (d n : ℕ) where
  transform : GaleTransform d n
  orientedMatroid : Prop
  realizabilityCondition : Prop
  orientedMatroidClosed : orientedMatroid
  realizabilityConditionClosed : realizabilityCondition

def GaleDiagramRealizabilityClosed {d n : ℕ} (R : GaleDiagramRealizability d n) : Prop :=
  R.orientedMatroid ∧ R.realizabilityCondition

theorem gale_diagram_realizability_closed_from_evidence {d n : ℕ} (R : GaleDiagramRealizability d n) : GaleDiagramRealizabilityClosed R := by
  exact And.intro R.orientedMatroidClosed R.realizabilityConditionClosed

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse