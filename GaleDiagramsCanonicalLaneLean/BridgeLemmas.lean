import HautevilleHouse.GaleDiagramsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GaleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse