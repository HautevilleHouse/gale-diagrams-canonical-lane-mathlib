import GaleDiagramsCanonicalLaneLean.GaleDiagramRealizability

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagramCocircuit (d n : ℕ) where
  realizability : GaleDiagramRealizability d n
  cocircuitCollection : Prop
  cocircuitAxioms : Prop
  cocircuitCollectionClosed : cocircuitCollection
  cocircuitAxiomsClosed : cocircuitAxioms

def GaleDiagramCocircuitClosed {d n : ℕ} (C : GaleDiagramCocircuit d n) : Prop :=
  C.cocircuitCollection ∧ C.cocircuitAxioms

theorem gale_diagram_cocircuit_closed_from_evidence {d n : ℕ} (C : GaleDiagramCocircuit d n) : GaleDiagramCocircuitClosed C := by
  exact And.intro C.cocircuitCollectionClosed C.cocircuitAxiomsClosed

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse