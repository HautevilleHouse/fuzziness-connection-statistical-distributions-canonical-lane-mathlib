import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.SufficientStatistic

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure ExponentialFamily (Ω : Type) (S : SampleSpace Ω) (P : ProbabilityMeasure Ω S) (T : Type) (θ : Type) where
  sufficientStatistic : SufficientStatistic Ω S P T
  naturalParameter : θ
  density_form : θ → T → ℝ
  dominatedFamily : Prop
  naturalParameterSpace : Prop

def exponentialFamilyClosed (Ω : Type) (S : SampleSpace Ω) (P : ProbabilityMeasure Ω S) (T : Type) (θ : Type) (E : ExponentialFamily Ω S P T θ) : Prop :=
  E.dominatedFamily ∧ E.naturalParameterSpace

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse