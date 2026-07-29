import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.NeymanPearsonLemma

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure MaximumLikelihoodEstimator (Ω : Type) (S : SampleSpace Ω) (P : ProbabilityMeasure Ω S) (θ : Type) where
  likelihoodFunction : (Ω → ℝ) → θ → ℝ
  maximize : θ → Prop
  consistency : Prop
  asymptoticNormality : Prop

def mleClosed (Ω : Type) (S : SampleSpace Ω) (P : ProbabilityMeasure Ω S) (θ : Type) (M : MaximumLikelihoodEstimator Ω S P θ) : Prop :=
  M.consistency ∧ M.asymptoticNormality

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse