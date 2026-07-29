import canonicalLaneMathlib.AdmissibleClass
import GaleDiagramsCanonicalLaneLean.GaleDiagramCombinatorics

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagramRealization (P : GalePolytope) (C : GaleDiagramCombinatorics P) where
  realizationSpace : Type u
  isRealizable : Prop
  stiefelMap : Prop
  coordinateRepresentation : Prop
  realizationClosed : C.chirotope

def GaleDiagramRealizationClosed (P : GalePolytope) (C : GaleDiagramCombinatorics P) (R : GaleDiagramRealization P C) : Prop :=
  R.isRealizable ∧ R.stiefelMap ∧ R.coordinateRepresentation ∧ R.realizationClosed

structure GaleDiagramRealizationEvidence (P : GalePolytope) (C : GaleDiagramCombinatorics P) (R : GaleDiagramRealization P C) where
  isRealizableClosed : R.isRealizable
  stiefelMapClosed : R.stiefelMap
  coordinateRepresentationClosed : R.coordinateRepresentation

theorem gale_diagram_realization_closed_from_evidence (P : GalePolytope) (C : GaleDiagramCombinatorics P) (R : GaleDiagramRealization P C) (E : GaleDiagramRealizationEvidence P C R) :
    GaleDiagramRealizationClosed P C R := by
  exact And.intro E.isRealizableClosed (And.intro E.stiefelMapClosed (And.intro E.coordinateRepresentationClosed R.realizationClosed))

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
