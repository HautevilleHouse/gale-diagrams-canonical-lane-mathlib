import canonicalLaneMathlib.AdmissibleClass
import GaleDiagramsCanonicalLaneLean.GalePolytope

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagramCombinatorics (P : GalePolytope) where
  signVectors : Type u
  covectors : Set signVectors
  chirotope : Prop
  dualChirotope : Prop
  orientedMatroidClosed : P.orientedMatroid

def GaleDiagramCombinatoricsClosed (P : GalePolytope) (C : GaleDiagramCombinatorics P) : Prop :=
  C.chirotope ∧ C.dualChirotope ∧ C.orientedMatroidClosed

structure GaleDiagramCombinatoricsEvidence (P : GalePolytope) (C : GaleDiagramCombinatorics P) where
  chirotopeClosed : C.chirotope
  dualChirotopeClosed : C.dualChirotope

theorem gale_diagram_combinatorics_closed_from_evidence (P : GalePolytope) (C : GaleDiagramCombinatorics P) (E : GaleDiagramCombinatoricsEvidence P C) :
    GaleDiagramCombinatoricsClosed P C := by
  exact And.intro E.chirotopeClosed (And.intro E.dualChirotopeClosed C.orientedMatroidClosed)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
