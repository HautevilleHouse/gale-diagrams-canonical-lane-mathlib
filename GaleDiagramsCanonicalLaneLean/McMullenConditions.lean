import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.NeighborlyPolytopes

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure McMullenConditions (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) where
  gVector : ℕ → ℕ
  gConditions : Prop
  sufficiency : Prop
  necessity : Prop

structure McMullenConditionsEvidence (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) (M : McMullenConditions V A G N) where
  gConditionsClosed : M.gConditions
  sufficiencyClosed : M.sufficiency
  necessityClosed : M.necessity

def McMullenConditionsClosed (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) (M : McMullenConditions V A G N) : Prop :=
  M.gConditions ∧ M.sufficiency ∧ M.necessity

theorem mc_mullen_conditions_closed_from_evidence (V : Type u) (A : Type v) (G : GaleDiagram V A) (N : NeighborlyPolytope V A G) (M : McMullenConditions V A G N) (E : McMullenConditionsEvidence V A G N M) : McMullenConditionsClosed V A G N M := by
  exact And.intro E.gConditionsClosed (And.intro E.sufficiencyClosed E.necessityClosed)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse