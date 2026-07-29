import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure MaximumLikelihoodEstimate (X : Type u) [MeasurableSpace X] (θ : Type v) where
  sample : List X
  likelihood : (θ : ℝ) → ℝ
  logLikelihood : (θ : ℝ) → ℝ
  mle : ℝ
  maximizationCondition : likelihood mle = max_{θ} likelihood θ
  scoreEquation : (∂/∂θ) logLikelihood θ |_{θ = mle} = 0

structure MLEAsymptoticsPackage (X : Type u) [MeasurableSpace X] (θ : Type v) where
  mle : MaximumLikelihoodEstimate X θ
  consistency : P(|mle - θ_true| > ε) → 0 as n → ∞
  asymptoticNormality : √n (mle - θ_true) → N(0, I(θ_true)⁻¹) in distribution
  efficiency : AsymptoticVariance(mle) = 1 / FisherInformation(θ_true)
  regularityConditions : (θ ↦ log f(x|θ)) is twice differentiable, Fisher information finite and positive

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse