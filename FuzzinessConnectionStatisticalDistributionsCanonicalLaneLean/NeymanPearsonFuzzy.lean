import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure NeymanPearsonPackage where
  hypotheses : Type u
  testFunction : Type v
  typeIerror : Prop
  typeIIerror : Prop
  optimalPower : Prop
  likelihoodRatio : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  typeIerrorClosed : N.typeIerror
  typeIIerrorClosed : N.typeIIerror
  optimalPowerClosed : N.optimalPower
  likelihoodRatioClosed : N.likelihoodRatio

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.typeIerror ∧ N.typeIIerror ∧ N.optimalPower ∧ N.likelihoodRatio

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage) (E : NeymanPearsonEvidence N) :
    NeymanPearsonClosed N := by
  exact And.intro E.typeIerrorClosed
    (And.intro E.typeIIerrorClosed
      (And.intro E.optimalPowerClosed E.likelihoodRatioClosed))

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse