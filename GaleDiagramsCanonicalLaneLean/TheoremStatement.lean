import GaleDiagramsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace GaleDiagramsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end GaleDiagramsCanonicalLaneLean
end HautevilleHouse