import HautevilleHouse.GaleDiagramsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse