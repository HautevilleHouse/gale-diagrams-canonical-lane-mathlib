import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.AdmissibleGaleClass

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

def bridgeClosed (A : AdmissibleGaleClass) : Prop :=
  match A.diagram.galeVector with
  | [] => False
  | _ :: _ => True

theorem bridge_from_admissible_class (A : AdmissibleGaleClass) : bridgeClosed A := by
  unfold bridgeClosed
  cases A.diagram.galeVector
  · exact A.combinedClosure.1
  · trivial

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse