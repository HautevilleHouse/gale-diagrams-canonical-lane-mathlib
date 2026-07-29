import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GaleDiagramDefinitions
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GaleTransform

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := GaleDiagramClosed A.object

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedGaleDiagramClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gale_diagram_endgame (A : AdmissibleClass) : ConstrainedGaleDiagramClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
