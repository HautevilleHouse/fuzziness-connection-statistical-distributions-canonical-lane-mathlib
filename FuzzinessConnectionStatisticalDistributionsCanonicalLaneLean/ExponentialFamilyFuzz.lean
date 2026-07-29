import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure ExponentialFamilyPackage where
  sufficientStatistic : Type u
  naturalParameter : Type v
  logPartition : Type w
  baseMeasure : Prop
  exponentialForm : Prop
  cumulantGenerating : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  baseMeasureClosed : E.baseMeasure
  exponentialFormClosed : E.exponentialForm
  cumulantGeneratingClosed : E.cumulantGenerating

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.baseMeasure ∧ E.exponentialForm ∧ E.cumulantGenerating

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) :
    ExponentialFamilyClosed E := by
  exact And.intro Ev.baseMeasureClosed (And.intro Ev.exponentialFormClosed Ev.cumulantGeneratingClosed)

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse