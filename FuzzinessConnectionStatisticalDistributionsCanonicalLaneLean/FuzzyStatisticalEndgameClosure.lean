import canonicalLaneMathlib.AdmissibleClass
import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.BridgeLemmasAndGateLemmas
import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.SufficiencyAndExponentialFamilies

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

def ConstrainedFuzzyStatisticalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_statistical_endgame (A : AdmissibleClass) :
    ConstrainedFuzzyStatisticalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse
