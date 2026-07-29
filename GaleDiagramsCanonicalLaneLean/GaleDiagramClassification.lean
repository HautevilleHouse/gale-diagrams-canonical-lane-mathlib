import canonicalLaneMathlib.AdmissibleClass
import GaleDiagramsCanonicalLaneLean.GaleDiagramRealization

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagramClassification (P : GalePolytope) (C : GaleDiagramCombinatorics P) (R : GaleDiagramRealization P C) where
  classificationType : String
  isComplete : Prop
  extremalProperty : Prop
  classificationClosed : R.isRealizable ∧ C.chirotope

def GaleDiagramClassificationClosed (P : GalePolytope) (C : GaleDiagramCombinatorics P) (R : GaleDiagramRealization P C) (Cl : GaleDiagramClassification P C R) : Prop :=
  Cl.isComplete ∧ Cl.extremalProperty ∧ Cl.classificationClosed

structure GaleDiagramClassificationEvidence (P : GalePolytope) (C : GaleDiagramCombinatorics P) (R : GaleDiagramRealization P C) (Cl : GaleDiagramClassification P C R) where
  isCompleteClosed : Cl.isComplete
  extremalPropertyClosed : Cl.extremalProperty

theorem gale_diagram_classification_closed_from_evidence (P : GalePolytope) (C : GaleDiagramCombinatorics P) (R : GaleDiagramRealization P C) (Cl : GaleDiagramClassification P C R) (E : GaleDiagramClassificationEvidence P C R Cl) :
    GaleDiagramClassificationClosed P C R Cl := by
  exact And.intro E.isCompleteClosed (And.intro E.extremalPropertyClosed Cl.classificationClosed)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
