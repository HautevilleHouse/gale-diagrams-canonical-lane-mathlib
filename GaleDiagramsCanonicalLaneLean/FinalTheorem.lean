import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GaleReidemeisterBridge
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

def GaleDiagramClosure (A : AdmissibleGaleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem gale_diagram_endgame (A : AdmissibleGaleClass) : GaleDiagramClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse