import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure ProbabilisticMetricSpacePackage where
  space : Type u
  distribution : space → space → Type v
  triangleInequality : Prop
  symmetry : Prop
  identity : Prop

structure ProbabilisticMetricEvidence (P : ProbabilisticMetricSpacePackage) where
  triangleInequalityClosed : P.triangleInequality
  symmetryClosed : P.symmetry
  identityClosed : P.identity

def ProbabilisticMetricClosed (P : ProbabilisticMetricSpacePackage) : Prop :=
  P.triangleInequality ∧ P.symmetry ∧ P.identity

theorem probabilistic_metric_closed_from_evidence (P : ProbabilisticMetricSpacePackage) (E : ProbabilisticMetricEvidence P) :
    ProbabilisticMetricClosed P := by
  exact And.intro E.triangleInequalityClosed (And.intro E.symmetryClosed E.identityClosed)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse