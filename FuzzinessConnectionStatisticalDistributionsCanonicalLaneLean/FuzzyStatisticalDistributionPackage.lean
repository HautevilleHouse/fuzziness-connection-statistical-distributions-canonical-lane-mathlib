import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure FuzzyDistributionAdmissibleObject where
  carrier : Type
  probabilitySpace : Prop
  fuzzySetOverProbabilitySpace : Prop
  distributionFunction : Prop
  conclusion : distributionFunction

structure AdmissibleClass where
  object : FuzzyDistributionAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FuzzyDistributionAdmissibleObject.distributionFunction A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse
