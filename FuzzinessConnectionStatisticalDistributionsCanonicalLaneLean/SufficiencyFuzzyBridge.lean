import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure SufficiencyPackage where
  sampleModel : Type u
  statistic : sampleModel → Type v
  conditionalDistribution : Prop
  sufficiencyCondition : Prop
  factorizationCriterion : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  conditionalDistributionClosed : S.conditionalDistribution
  sufficiencyConditionClosed : S.sufficiencyCondition
  factorizationCriterionClosed : S.factorizationCriterion

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.conditionalDistribution ∧ S.sufficiencyCondition ∧ S.factorizationCriterion

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.conditionalDistributionClosed
    (And.intro E.sufficiencyConditionClosed E.factorizationCriterionClosed)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse