import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GalePolytopes

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDualityPackage {G : GalePolytopePackage} where
  dualVectorConfiguration : Type
  dualGaleDiagram : Type
  dualityPairing : Prop
  orthogonalComplement : Prop
  bijectionCocircuits : Prop
  dualGaleDiagramClosed : Prop

structure GaleDualityEvidence {G : GalePolytopePackage}
    (D : GaleDualityPackage G) where
  dualityPairingClosed : D.dualityPairing
  orthogonalComplementClosed : D.orthogonalComplement
  bijectionCocircuitsClosed : D.bijectionCocircuits
  dualGaleDiagramClosed : D.dualGaleDiagramClosed

def GaleDualityClosed {G : GalePolytopePackage} (D : GaleDualityPackage G) : Prop :=
  D.dualityPairing ∧ D.orthogonalComplement ∧ D.bijectionCocircuits ∧ D.dualGaleDiagramClosed

theorem gale_duality_closed_from_evidence {G : GalePolytopePackage}
    (D : GaleDualityPackage G) (E : GaleDualityEvidence D) :
    GaleDualityClosed D := by
  exact And.intro E.dualityPairingClosed
    (And.intro E.orthogonalComplementClosed
      (And.intro E.bijectionCocircuitsClosed E.dualGaleDiagramClosed))

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse