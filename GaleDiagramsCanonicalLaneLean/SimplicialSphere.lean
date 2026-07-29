import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GaleDiagramDefinition

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure SimplicialSphere (V : Type u) (A : Type v) (G : GaleDiagram V A) where
  sphereDimension : ℕ
  simplicialComplex : Type w
  realization : Prop
  galeDiagramEmbedding : Prop

structure SimplicialSphereEvidence (V : Type u) (A : Type v) (G : GaleDiagram V A) (S : SimplicialSphere V A G) where
  realizationClosed : S.realization
  galeDiagramEmbeddingClosed : S.galeDiagramEmbedding

def SimplicialSphereClosed (V : Type u) (A : Type v) (G : GaleDiagram V A) (S : SimplicialSphere V A G) : Prop :=
  S.realization ∧ S.galeDiagramEmbedding

theorem simplicial_sphere_closed_from_evidence (V : Type u) (A : Type v) (G : GaleDiagram V A) (S : SimplicialSphere V A G) (E : SimplicialSphereEvidence V A G S) : SimplicialSphereClosed V A G S := by
  exact And.intro E.realizationClosed E.galeDiagramEmbeddingClosed

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse