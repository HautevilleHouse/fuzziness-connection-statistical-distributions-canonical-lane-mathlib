import canonicalLaneMathlib.AdmissibleClass
import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.BridgeLemmasAndGateLemmas

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure SufficiencyPackage where
  sufficientStatistic : Prop
  factorizationTheorem : Prop
  minimalSufficiency : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  sufficientStatisticClosed : S.sufficientStatistic
  factorizationTheoremClosed : S.factorizationTheorem
  minimalSufficiencyClosed : S.minimalSufficiency

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.sufficientStatistic ∧ S.factorizationTheorem ∧ S.minimalSufficiency

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.sufficientStatisticClosed (And.intro E.factorizationTheoremClosed E.minimalSufficiencyClosed)

structure ExponentialFamilyPackage where
  naturalParameter : Prop
  sufficientStatisticExp : Prop
  logPartitionFunction : Prop
  cumulantGenerating : Prop
  densityForm : Prop

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.naturalParameter ∧ E.sufficientStatisticExp ∧ E.logPartitionFunction ∧ E.cumulantGenerating ∧ E.densityForm

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse
