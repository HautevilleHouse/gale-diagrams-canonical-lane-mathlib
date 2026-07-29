import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GaleDuality

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure NeighborlyPolytopePackage {G : GalePolytopePackage}
    {D : GaleDualityPackage G} where
  neighborlyCondition : Prop
  galeDiagramNeighborly : Prop
  momentCurveEmbedding : Prop
  upperBoundTheorem : Prop
  neighborlyClosed : Prop

structure NeighborlyPolytopeEvidence {G : GalePolytopePackage}
    {D : GaleDualityPackage G} (N : NeighborlyPolytopePackage D) where
  neighborlyConditionClosed : N.neighborlyCondition
  galeDiagramNeighborlyClosed : N.galeDiagramNeighborly
  momentCurveEmbeddingClosed : N.momentCurveEmbedding
  upperBoundTheoremClosed : N.upperBoundTheorem
  neighborlyClosed : N.neighborlyClosed

def NeighborlyPolytopeClosed {G : GalePolytopePackage}
    {D : GaleDualityPackage G} (N : NeighborlyPolytopePackage D) : Prop :=
  N.neighborlyCondition ∧ N.galeDiagramNeighborly ∧ N.momentCurveEmbedding ∧ N.upperBoundTheorem ∧ N.neighborlyClosed

theorem neighborly_polytope_closed_from_evidence {G : GalePolytopePackage}
    {D : GaleDualityPackage G} (N : NeighborlyPolytopePackage D)
    (E : NeighborlyPolytopeEvidence N) : NeighborlyPolytopeClosed N := by
  exact And.intro E.neighborlyConditionClosed
    (And.intro E.galeDiagramNeighborlyClosed
      (And.intro E.momentCurveEmbeddingClosed
        (And.intro E.upperBoundTheoremClosed E.neighborlyClosed)))

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse