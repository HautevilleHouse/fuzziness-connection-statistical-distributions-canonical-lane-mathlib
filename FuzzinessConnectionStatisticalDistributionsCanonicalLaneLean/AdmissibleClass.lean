import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure AdmissibleClass where
  object : FuzzinessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FuzzinessWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse