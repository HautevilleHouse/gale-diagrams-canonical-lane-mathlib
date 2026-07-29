import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure CovectorAxiomsPackage where
  signCompatibility : Prop
  chirotopeProperty : Prop
  orientedMatroidAxioms : Prop

def CovectorAxiomsClosed (C : CovectorAxiomsPackage) : Prop :=
  C.signCompatibility ∧ C.chirotopeProperty ∧ C.orientedMatroidAxioms

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
