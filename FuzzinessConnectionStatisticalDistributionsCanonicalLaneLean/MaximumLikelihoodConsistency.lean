import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure MLEConsistencyPackage where
  parameterSpace : Type u
  likelihoodFunction : Type u → Type v → Prop
  mleEstimator : Type u → Type v
  consistencyCondition : Prop
  regularityConditions : Prop

structure MLEConsistencyEvidence (M : MLEConsistencyPackage) where
  consistencyConditionClosed : M.consistencyCondition
  regularityConditionsClosed : M.regularityConditions

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.consistencyCondition ∧ M.regularityConditions

theorem mle_consistency_closed_from_evidence (M : MLEConsistencyPackage) (E : MLEConsistencyEvidence M) :
    MLEConsistencyClosed M := by
  exact And.intro E.consistencyConditionClosed E.regularityConditionsClosed

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse