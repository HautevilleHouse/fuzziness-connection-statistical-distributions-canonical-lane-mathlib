import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure FuzzySetPackage where
  universe : Type u
  membershipFunction : universe → ℝ
  fuzzySet : Type u → Prop
  support : Type u → Prop
  core : Type u → Prop

structure FuzzySetEvidence (F : FuzzySetPackage) where
  membershipFunctionClosed : ∀ x : F.universe, 0 ≤ F.membershipFunction x ∧ F.membershipFunction x ≤ 1
  fuzzySetClosed : F.fuzzySet F.universe

def FuzzySetClosed (F : FuzzySetPackage) : Prop :=
  (∀ x : F.universe, 0 ≤ F.membershipFunction x ∧ F.membershipFunction x ≤ 1) ∧
  F.fuzzySet F.universe

theorem fuzzy_set_closed_from_evidence (F : FuzzySetPackage) (E : FuzzySetEvidence F) :
    FuzzySetClosed F := by
  exact And.intro E.membershipFunctionClosed E.fuzzySetClosed

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse