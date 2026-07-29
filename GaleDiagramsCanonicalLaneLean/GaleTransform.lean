import GaleDiagramsCanonicalLaneLean.GaleDiagram

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleTransform (d n : ℕ) where
  vectors : Fin n → PointVector d
  affineDependence : Prop
  signedBasis : Prop
  affineDependenceClosed : affineDependence
  signedBasisClosed : signedBasis

def GaleTransformClosed {d n : ℕ} (G : GaleTransform d n) : Prop :=
  G.affineDependence ∧ G.signedBasis

theorem gale_transform_closed_from_evidence {d n : ℕ} (G : GaleTransform d n) : GaleTransformClosed G := by
  exact And.intro G.affineDependenceClosed G.signedBasisClosed

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse