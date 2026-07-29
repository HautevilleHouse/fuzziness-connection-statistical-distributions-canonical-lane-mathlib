import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure ProbabilityDistribution (X : Type u) [MeasurableSpace X] where
  carrier : Set X
  sigmaAlgebra : MeasurableSpace X := by infer_instance
  measure : Type v
  density : X → ℝ
  densityNonNegative : ∀ x, density x ≥ 0
  totalIntegralOne : ∫ x in carrier, density x ∂ volume = 1
  measurableDensity : Measurable density

structure ProbabilityDistributionPackage (X : Type u) [MeasurableSpace X] where
  distribution : ProbabilityDistribution X
  momentGeneratingFunction : Type w
  cumulativeDistributionFunction : X → ℝ
  cdfRightContinuous : ∀ x, ContinuousAt (cumulativeDistributionFunction) x
  cdfMonotone : Monotone cumulativeDistributionFunction
  cdfLimits : (∀ x, cumulativeDistributionFunction x ∈ Set.Ioo 0 1) ∧ (lim_{x→-∞} cumulativeDistributionFunction x = 0) ∧ (lim_{x→∞} cumulativeDistributionFunction x = 1)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse