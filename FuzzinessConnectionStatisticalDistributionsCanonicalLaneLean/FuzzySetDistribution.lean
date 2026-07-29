import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure FuzzySet where
  universe : Type u
  membership : (universe) → ℝ
  fuzzyUnion : (FuzzySet universe) → (FuzzySet universe) → fuzzyUnion.set
  fuzzyIntersection : (FuzzySet universe) → (FuzzySet universe) → fuzzyIntersection.set

structure FuzzyDistribution where
  fuzzySet : FuzzySet Type
  probabilityMeasure : (Set (FuzzySet Type)) → ℝ
  fuzzyRandomVariable : Type → ℝ

def FuzzyDistributionConsistent (D : FuzzyDistribution) : Prop :=
  D.probabilityMeasure ∅ = 0 ∧ D.probabilityMeasure (Set.univ) = 1 ∧
  ∀ (A B : Set (FuzzySet Type)), A ∩ B = ∅ → D.probabilityMeasure (A ∪ B) = D.probabilityMeasure A + D.probabilityMeasure B

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse