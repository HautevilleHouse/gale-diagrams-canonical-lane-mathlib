import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GaleDiagramDefinitions

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure RealizabilityPackage (G : GaleDiagramPackage) where
  coordinateAssignment : ℚ^Nat → ℚ^Nat
  linearConstraints : Prop
  realizabilityClosed : Prop

def RealizabilityClosed {G : GaleDiagramPackage} (R : RealizabilityPackage G) : Prop :=
  R.linearConstraints ∧ R.realizabilityClosed

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
