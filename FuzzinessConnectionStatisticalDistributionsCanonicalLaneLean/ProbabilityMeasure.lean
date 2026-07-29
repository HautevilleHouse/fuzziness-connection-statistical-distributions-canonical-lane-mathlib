import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.SampleSpace

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure ProbabilityMeasure (Ω : Type) (S : SampleSpace Ω) where
  prob : Set Ω → ℝ
  nonnegative : ∀ A, prob A ≥ 0
  totalMass : prob S.events = 1
  countableAdditivity : Prop

def probabilityClosed (Ω : Type) (S : SampleSpace Ω) (P : ProbabilityMeasure Ω S) : Prop :=
  P.nonnegative S.events ∧ P.totalMass

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse