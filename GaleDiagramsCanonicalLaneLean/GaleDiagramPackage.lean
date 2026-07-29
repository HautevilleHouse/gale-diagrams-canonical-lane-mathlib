import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagram where
  pointSet : List (Float × Float)
  dimension : ℕ
  affineIndependence : Prop
  galeVector : List Float

def galeTransform (d : GaleDiagram) : List (List Float) :=
  let n := d.pointSet.length
  let M := List.map (fun (x, y) => [x, y, 1.0]) d.pointSet
  M

structure GaleDiagramClosed (d : GaleDiagram) : Prop where
  validDimension : d.dimension = 2
  affineIndependenceHolds : d.affineIndependence
  galeVectorNonZero : d.galeVector ≠ []

theorem gale_diagram_closed_iff (d : GaleDiagram) : GaleDiagramClosed d ↔ (d.dimension = 2 ∧ d.affineIndependence ∧ d.galeVector ≠ []) := by
  constructor
  · intro h; exact ⟨h.validDimension, h.affineIndependenceHolds, h.galeVectorNonZero⟩
  · intro ⟨hdim, hind, hvec⟩; exact { validDimension := hdim, affineIndependenceHolds := hind, galeVectorNonZero := hvec }

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse