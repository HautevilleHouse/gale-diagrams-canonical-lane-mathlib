import HautevilleHouse.GaleDiagramsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GalePolytopePackage where
  vectorConfiguration : Type
  galeDiagram : Type
  dimension : Nat
  numberOfVertices : Nat
  acyclic : Prop
  totallyCyclic : Prop
  linearDependencies : Prop
  galeCombinatoricsClosed : Prop

structure GalePolytopeEvidence (G : GalePolytopePackage) where
  acyclicClosed : G.acyclic
  totallyCyclicClosed : G.totallyCyclic
  linearDependenciesClosed : G.linearDependencies
  galeCombinatoricsClosed : G.galeCombinatoricsClosed

def GalePolytopeClosed (G : GalePolytopePackage) : Prop :=
  G.acyclic ∧ G.totallyCyclic ∧ G.linearDependencies ∧ G.galeCombinatoricsClosed

theorem gale_polytope_closed_from_evidence (G : GalePolytopePackage)
    (E : GalePolytopeEvidence G) : GalePolytopeClosed G := by
  exact And.intro E.acyclicClosed
    (And.intro E.totallyCyclicClosed
      (And.intro E.linearDependenciesClosed E.galeCombinatoricsClosed))

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse