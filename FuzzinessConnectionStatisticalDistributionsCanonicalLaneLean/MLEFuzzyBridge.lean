import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure MLEPackage where
  parameterSpace : Type u
  likelihoodFunction : Type v
  maximumCondition : Prop
  consistency : Prop
  asymptoticNormality : Prop

structure MLEEvidence (M : MLEPackage) where
  maximumConditionClosed : M.maximumCondition
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEClosed (M : MLEPackage) : Prop :=
  M.maximumCondition ∧ M.consistency ∧ M.asymptoticNormality

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) :
    MLEClosed M := by
  exact And.intro E.maximumConditionClosed
    (And.intro E.consistencyClosed E.asymptoticNormalityClosed)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse