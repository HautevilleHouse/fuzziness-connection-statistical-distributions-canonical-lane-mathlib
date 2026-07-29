import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Exists (λ (X : Type) [MeasurableSpace X] =>
    Exists (λ (dist : ProbabilityDistributionPackage X) =>
      dist.densityNonNegative ∧ dist.totalIntegralOne ∧
      (∀ (θ : ℝ), ∃ (expFam : ExponentialFamily X ℝ), expFam.densityFormCorrect θ)))

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨Real.instMeasurableSpace, ⟨?_, ?_, ?_, ?_⟩⟩
  -- stub: assume existence from A.object
  sorry

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse