import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.ProbabilityMeasure

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure SufficientStatistic (Ω : Type) (S : SampleSpace Ω) (P : ProbabilityMeasure Ω S) (T : Type) where
  statistic : Ω → T
  factorizationCriterion : Prop
  conditionalDistribution : Prop

def sufficientStatisticClosed (Ω : Type) (S : SampleSpace Ω) (P : ProbabilityMeasure Ω S) (T : Type) (SS : SufficientStatistic Ω S P T) : Prop :=
  SS.factorizationCriterion ∧ SS.conditionalDistribution

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse