import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure SampleSpace (Ω : Type) where
  events : Set (Set Ω)
  sigmaAlgebra : Prop
  eventsClosed : events ≠ ∅
  sigmaAlgebraTerm : sigmaAlgebra

def sampleSpaceClosed (Ω : Type) (S : SampleSpace Ω) : Prop :=
  S.sigmaAlgebra

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse