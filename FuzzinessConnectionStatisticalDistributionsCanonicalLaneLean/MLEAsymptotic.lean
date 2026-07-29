import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure MLEConsistencyPackage where
  parameterSpace : Type u
  logLikelihood : (parameterSpace) → (parameterSpace) → ℝ
  trueParameter : parameterSpace
  sampleSize : ℕ
  mleEstimator : (parameterSpace) → (parameterSpace)
  consistency : Prop
  asymptoticNormality : Prop

structure MLEAsymptoticEvidence (M : MLEConsistencyPackage) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEAsymptoticClosed (M : MLEConsistencyPackage) : Prop :=
  M.consistency ∧ M.asymptoticNormality

theorem mle_asymptotic_closed (M : MLEConsistencyPackage) (E : MLEAsymptoticEvidence M) :
    MLEAsymptoticClosed M := by
  exact And.intro E.consistencyClosed E.asymptoticNormalityClosed

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse