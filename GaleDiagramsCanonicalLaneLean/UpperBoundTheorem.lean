import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.NeighborlyPolytopes

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure UpperBoundTheorem (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) where
  dimension : ℕ
  faceNumbers : ℕ → ℕ
  upperBound : Prop
  neighborlyMaximizes : Prop

structure UpperBoundTheoremEvidence (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) (U : UpperBoundTheorem V A G N) where
  upperBoundClosed : U.upperBound
  neighborlyMaximizesClosed : U.neighborlyMaximizes

def UpperBoundTheoremClosed (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) (U : UpperBoundTheorem V A G N) : Prop :=
  U.upperBound ∧ U.neighborlyMaximizes

theorem upper_bound_theorem_closed_from_evidence (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) (U : UpperBoundTheorem V A G N) (E : UpperBoundTheoremEvidence V A G N U) : UpperBoundTheoremClosed V A G N U := by
  exact And.intro E.upperBoundClosed E.neighborlyMaximizesClosed

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse