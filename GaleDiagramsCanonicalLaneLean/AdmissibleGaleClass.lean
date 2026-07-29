import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleDiagramsCanonicalLaneLean.GaleDiagramPackage

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure AdmissibleGaleClass where
  diagram : GaleDiagram
  bridgeClosed : Prop
  gateClosed : Prop
  combinedClosure : Prop := bridgeClosed ∧ gateClosed

def constraintStructure (A : AdmissibleGaleClass) : Prop :=
  A.bridgeClosed ∧ A.gateClosed

theorem admissible_from_gale_diagram (d : GaleDiagram) (hclosed : GaleDiagramClosed d) : AdmissibleGaleClass := by
  refine {
    diagram := d
    bridgeClosed := hclosed.validDimension
    gateClosed := hclosed.affineIndependenceHolds
    combinedClosure := And.intro hclosed.validDimension hclosed.affineIndependenceHolds
  }

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse