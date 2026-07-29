import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GalePolytope where
  pointSet : Type u
  vertexSet : Set pointSet
  dimension : Nat
  vertexCount : Nat
  isNeighborly : Prop
  momentCurveEmbedding : Prop
  orientedMatroid : Prop

def GalePolytopeClosed (P : GalePolytope) : Prop :=
  P.isNeighborly ∧ P.momentCurveEmbedding ∧ P.orientedMatroid

structure GalePolytopeEvidence (P : GalePolytope) where
  isNeighborlyClosed : P.isNeighborly
  momentCurveEmbeddingClosed : P.momentCurveEmbedding
  orientedMatroidClosed : P.orientedMatroid

theorem gale_polytope_closed_from_evidence (P : GalePolytope) (E : GalePolytopeEvidence P) :
    GalePolytopeClosed P := by
  exact And.intro E.isNeighborlyClosed (And.intro E.momentCurveEmbeddingClosed E.orientedMatroidClosed)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
