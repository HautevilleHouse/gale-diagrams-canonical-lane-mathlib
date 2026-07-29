import HautevilleHouse.GaleDiagramsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure AdmissibleClass where
  object : GaleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GaleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse