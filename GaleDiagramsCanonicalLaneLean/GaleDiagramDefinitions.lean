import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleDiagramPackage where
  vertexSet : Type u
  vertexList : List vertexSet
  covector : vertexList.length -> ℤ
  positiveDependence : Prop
  orientedMatroid : Prop

def GaleDiagramClosed (G : GaleDiagramPackage) : Prop :=
  G.positiveDependence ∧ G.orientedMatroid

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse
