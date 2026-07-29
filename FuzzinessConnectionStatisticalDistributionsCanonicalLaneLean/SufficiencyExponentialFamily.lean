import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure SufficientStatistic (X : Type u) [MeasurableSpace X] (θ : Type v) where
  statistic : X → ℝ
  factorization : (p : X → ℝ) → (h : X → ℝ) → (g : ℝ → ℝ) → ∀ x, p x = h x * g (statistic x)
  measurability : Measurable statistic

structure ExponentialFamily (X : Type u) [MeasurableSpace X] (θ : Type v) where
  baseMeasure : X → ℝ
  sufficientStatistic : SufficientStatistic X θ
  logPartition : ℝ → ℝ
  densityForm : (θ : ℝ) → X → ℝ
  densityFormCorrect : ∀ (θ : ℝ) (x : X), densityForm θ x = baseMeasure x * exp (sufficientStatistic.statistic x * θ - logPartition θ)
  logPartitionFinite : ∀ (θ : ℝ), logPartition θ < ∞

structure SufficiencyExponentialFamilyPackage (X : Type u) [MeasurableSpace X] (θ : Type v) where
  sufficient : SufficientStatistic X θ
  exponential : ExponentialFamily X θ
  sufficiencyPrinciple : (T : SufficientStatistic X θ) → (∀ x, density x = h x * g (T.statistic x)) → T = sufficient
  exponentialFamilyClosed : Prop

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse