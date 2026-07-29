import GaleDiagramsCanonicalLaneLean.GaleDiagramCocircuit

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagramLawrenceOrientation (d n : ℕ) where
  cocircuit : GaleDiagramCocircuit d n
  orientation : Prop
  lawrenceCondition : Prop
  orientationClosed : orientation
  lawrenceConditionClosed : lawrenceCondition

def GaleDiagramLawrenceOrientationClosed {d n : ℕ} (L : GaleDiagramLawrenceOrientation d n) : Prop :=
  L.orientation ∧ L.lawrenceCondition

theorem gale_diagram_lawrence_orientation_closed_from_evidence {d n : ℕ} (L : GaleDiagramLawrenceOrientation d n) : GaleDiagramLawrenceOrientationClosed L := by
  exact And.intro L.orientationClosed L.lawrenceConditionClosed

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse