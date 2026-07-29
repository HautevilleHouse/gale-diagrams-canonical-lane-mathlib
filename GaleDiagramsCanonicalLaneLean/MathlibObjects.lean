import HautevilleHouse.GaleDiagramsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure GaleSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GaleAdmittedObject where
  space : GaleSpace
  configurationDimension : Nat
  numberOfVectors : Nat
  galeDiagramWellDefined : Prop
  conclusion : galeDiagramWellDefined

def GaleWitnessClosed (O : GaleAdmittedObject) : Prop :=
  O.galeDiagramWellDefined

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse