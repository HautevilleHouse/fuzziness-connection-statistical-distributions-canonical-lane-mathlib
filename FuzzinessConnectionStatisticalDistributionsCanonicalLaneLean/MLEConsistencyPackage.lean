import canonicalLaneMathlib.AdmissibleClass
import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.SufficiencyAndExponentialFamilies

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure MLEConsistencyPackage where
  likelihoodFunction : Prop
  scoreFunction : Prop
  informationMatrix : Prop
  consistencyUnderRegularity : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MLEConsistencyEvidence (M : MLEConsistencyPackage) where
  likelihoodFunctionClosed : M.likelihoodFunction
  scoreFunctionClosed : M.scoreFunction
  informationMatrixClosed : M.informationMatrix
  consistencyUnderRegularityClosed : M.consistencyUnderRegularity
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.likelihoodFunction ∧ M.scoreFunction ∧ M.informationMatrix ∧ M.consistencyUnderRegularity ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_consistency_closed_from_evidence (M : MLEConsistencyPackage) (E : MLEConsistencyEvidence M) :
    MLEConsistencyClosed M := by
  exact And.intro E.likelihoodFunctionClosed
    (And.intro E.scoreFunctionClosed
      (And.intro E.informationMatrixClosed
        (And.intro E.consistencyUnderRegularityClosed
          (And.intro E.asymptoticNormalityClosed E.efficiencyClosed))))

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse
