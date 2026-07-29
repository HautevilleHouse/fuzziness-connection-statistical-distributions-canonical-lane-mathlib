import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure HypothesisTest (X : Type u) [MeasurableSpace X] where
  nullHypothesis : ProbabilityDistribution X
  alternativeHypothesis : ProbabilityDistribution X
  testStatistic : X → ℝ
  rejectionRegion : Set X
  significanceLevel : ℝ
  significanceConstraint : significanceLevel ∈ Set.Ioo 0 1
  testSize : ∫ x in rejectionRegion, nullHypothesis.density x ∂ volume ≤ significanceLevel

structure NeymanPearsonLemmaPackage (X : Type u) [MeasurableSpace X] where
  test : HypothesisTest X
  likelihoodRatio : X → ℝ
  lrDefined : ∀ x, likelihoodRatio x = alternativeHypothesis.density x / nullHypothesis.density x
  optimalityCondition : (∀ x, likelihoodRatio x > k → x ∈ rejectionRegion) ∧ (∀ x, likelihoodRatio x < k → x ∉ rejectionRegion)
  mostPowerful : ∀ (otherTest : HypothesisTest X), otherTest.significanceLevel = test.significanceLevel → otherTest.testSize ≤ test.testSize

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse