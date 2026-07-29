import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagram (V : Type u) (A : Type v) where
  vectors : List (V → ℝ)
  linearDependence : List ℝ → Prop
  positiveSpanning : Prop
  vectorCount : ℕ

structure GaleDiagramEvidence (V : Type u) (A : Type v) (G : GaleDiagram V A) where
  linearDependenceClosed : G.linearDependence
  positiveSpanningClosed : G.positiveSpanning
  vectorCountCorrect : G.vectorCount = G.vectors.length

def GaleDiagramClosed (V : Type u) (A : Type v) (G : GaleDiagram V A) : Prop :=
  G.linearDependence ∧ G.positiveSpanning ∧ G.vectorCount = G.vectors.length

theorem gale_diagram_closed_from_evidence (V : Type u) (A : Type v) (G : GaleDiagram V A) (E : GaleDiagramEvidence V A G) : GaleDiagramClosed V A G := by
  exact And.intro E.linearDependenceClosed (And.intro E.positiveSpanningClosed E.vectorCountCorrect)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse