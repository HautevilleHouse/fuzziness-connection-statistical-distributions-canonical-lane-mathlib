import canonicalLaneMathlib.AdmissibleClass
import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.BridgeLemmas
import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

def ConstrainedFuzzinessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzziness_endgame (A : AdmissibleClass) :
    ConstrainedFuzzinessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse